<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateRolesTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return  void
	 */
	public function up()
	{
		// Create table for storing roles
		Schema::create('roles', function (Blueprint $table) {
			$table->increments('id');
			$table->string('name', 150)->unique()->comment = '用户组名(英文)';
			$table->string('display_name')->nullable()->comment = '显示名称';
			$table->string('description')->nullable()->comment = '摘要';
			$table->string('url', 250)->nullable()->comment = '网址';
			$table->timestamps();
		});

		// Create table for associating roles to users (Many-to-Many)
		Schema::create('role_user', function (Blueprint $table) {
			$table->integer('user_id')->unsigned()->comment = '用户ID';
			$table->integer('role_id')->unsigned()->comment = '用户组ID';

			$table->foreign('user_id')->references('id')->on('users')
				->onUpdate('cascade')->onDelete('cascade');
			$table->foreign('role_id')->references('id')->on('roles')
				->onUpdate('cascade')->onDelete('cascade');

			$table->primary(['user_id', 'role_id']);
		});

		// Create table for storing permissions
		Schema::create('permissions', function (Blueprint $table) {
			$table->increments('id');
			$table->string('name',150)->unique()->comment = '权限名(英文)';
			$table->string('display_name')->nullable()->comment = '显示名称';
			$table->string('description')->nullable()->comment = '摘要';
			$table->timestamps();
		});

		// Create table for associating permissions to roles (Many-to-Many)
		Schema::create('permission_role', function (Blueprint $table) {
			$table->integer('permission_id')->unsigned()->comment = '权限ID';
			$table->integer('role_id')->unsigned()->comment = '用户组ID';

			$table->foreign('permission_id')->references('id')->on('permissions')
				->onUpdate('cascade')->onDelete('cascade');
			$table->foreign('role_id')->references('id')->on('roles')
				->onUpdate('cascade')->onDelete('cascade');

			$table->primary(['permission_id', 'role_id']);
		});

	}

	/**
	 * Reverse the migrations.
	 *
	 * @return  void
	 */
	public function down()
	{
		Schema::drop('permission_role');
		Schema::drop('permissions');
		Schema::drop('role_user');
		Schema::drop('roles');
	}
}
