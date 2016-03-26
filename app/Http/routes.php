<?php


$router->group(['namespace' => 'Admin','prefix' => 'admin', 'middleware' => ['auth', 'role:admin|manager|owner|leader']], function($router) {
	
	$router->addAdminRoutes([
		'member' => 'MemberController',
		'category' => 'CategoryController',
		'meishi' => 'MeishiController',
	]);

	//admin目录下的其它路由需放置在本条前
	$router->addUndefinedRoutes();
});

$router->group(['namespace' => 'Service','prefix' => 'service'], function($router) {

	$router->addAdminRoutes([

	]);

	//admin目录下的其它路由需放置在本条前
	$router->addUndefinedRoutes();
});

$router->get('/','HomeController@index');

$router->get('category/{id}','HomeController@category');

$router->get('meishi/{id}','HomeController@meishi');

$router->get('login','HomeController@login');

$router->get('register','HomeController@register');

$router->addUndefinedRoutes();