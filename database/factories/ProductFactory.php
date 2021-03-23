<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $product_name = $this->faker->unique()->words($nb=2,$asText=true);
        $slug = STR::slug($product_name);
        return [
            'name'=>$product_name,
            'slug'=>$slug,
            'short_description'=>$this->faker->text('200'),
            'description'=>$this->faker->text('200'),
            'regular_price'=>$this->faker->numberBetween('15','200'),
            'sku'=>$this->faker->unique()->numberBetween('10','200'),
            'stock_status'=>'instock',
            'quantity'=>$this->faker->numberBetween('100','200'),
            'image'=>'digital_'.$this->faker->numberBetween('1','22').'.jpg',
            'category_id'=>$this->faker->numberBetween('1','5')
        ];
    }
}
