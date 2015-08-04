<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

$hmvc_router = function ($ctrl = 'home', $action = 'index')
{
	$namespace = Route::getCurrentRoute()->getAction()['namespace'];
	$className = $namespace.'\\'.ucfirst(strtolower($ctrl)).'Controller';

	$class = new ReflectionClass($className);
	$function = $class->getMethod($action); //ReflectionMethod 
	$parameters = $function->getParameters(); //ReflectionParameter 
	$_data = array();
	$count = count($parameters);
	for ($i=0; $i < $count; $i++) { 
		$key = $parameters[$i]->getName();
		$default = $parameters[$i]->isDefaultValueAvailable() ? $parameters[$i]->getDefaultValue() : NULL;
		$_data[] = array_key_exists($key, $_GET) ? Request::input($key) : $default;
	}
	$obj = new $className;
	// Execute the action itself
	return call_user_func_array(array($obj, $action), $_data);
};
Route::group(['namespace' => 'Admin'], function($router) use($hmvc_router) {
	Route::any('admin/{ctrl?}/{action?}',$hmvc_router);
});
Route::any('{ctrl?}/{action?}', $hmvc_router);