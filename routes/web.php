<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');
Route::get('/product/{slug}', 'HomeController@single')->name('product.single');
Route::get('/category/{slug}', 'CategoryController@index')->name('category.single');
Route::get('/store/{slug}', 'StoreController@index')->name('store.single');


Route::prefix('cart')->name('cart.')->group(function(){
  Route::get('/', 'CartController@index')->name('index');
  Route::post('add', 'CartController@add')->name('add');
  Route::get('remove/{slug}', 'CartController@remove')->name('remove');
  Route::get('cancel', 'CartController@cancel')->name('cancel');
  
});

Route::prefix('checkout')->name('checkout.')->group(function(){
  Route::get('/', 'CheckoutController@index')->name('index');
  Route::post('/proccess', 'CheckoutController@proccess')->name('proccess');
  Route::get('/thanks', 'CheckoutController@thanks')->name('thanks');


});

Route::group(['middleware' => ['auth']], function(){
  Route::prefix('admin')->name('admin.')->namespace('Admin')->group(function(){

    /*  Route::prefix('stores')->name('stores.')->group(function(){
         Route::get('/', 'StoreController@index')->name('index');
         Route::get('/create', 'StoreController@create')->name('create');
         Route::post('/store', 'StoreController@store')->name('store');
   
         Route::get('/{store}/edit', 'StoreController@edit')->name('edit');
         Route::post('/update/{store}', 'StoreController@update')->name('update');
   
         Route::get('/destroy/{store}', 'StoreController@destroy')->name('destroy');
   
     });
    */
     Route::resource('stores', 'StoreController');
     Route::resource('products', 'ProductsController');
     Route::resource('categories', 'CategoryController');

     Route::post('photos/remove/', 'ProductPhotoController@removePhoto')->name('photo.remove');

     Route::get('orders/my', 'OrdersController@index');

   });
});

Route::get('/model', function () {

 //   $user = new \App\User();
 //   $user = \App\User::find(1);
 //   $user->name = 'Usuario teste';
 //   $user->email = '';
 //   $user->password = bcrypt ('11111111');
 //   $user->save();
 //  return $user->save();

/* $user = \App\User::create([
    'name' => 'Alexander Kruger',
    'email' => 'email@email.com',
    'password' => bcrypt('11111')
]); */


  //  $user = \App\User::find(4);

  //  $loja = \App\Store::find(1);

  // dd($loja->products);
  
  //Criar uma loja para um usuário
 /*  $user = \App\User::find(10);
  $store = $user->store()->create([
      'name' => 'Loja teste',
      'description' => 'Loja teste2',
      'mobile_phone' => 'xx-xxxx-xxxx',
      'phone' => 'xx-xxxx-xxxx',
      'slug' => 'loja-teste'
  ]); 
   */

  // Criar um produto para uma loja
/*   $store = \App\Store::find(41);
  $product = $store->products()->create([
    'name' => 'NOtebook Dell',
    'description' => 'Loja teste de informatica',
    'body' => 'qualquer coisa',
    'price' => 2999.90,
    'slug' => 'notebook-dell',
  ]);
   */
  
   /* \App\Category::create([
       'name' => 'Games',
       'description' => null,
       'slug' => 'games',
   ]);

   $category = \App\Category::create([
    'name' => 'Notebooks',
    'description' => null,
    'slug' => 'notebooks',
    ]);
   

    return \App\Category::all(); */
   
    $product = \App\Product::find(40);
    //dd($product->categories()->sync([2]));

    return $product->categories;
});
Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
