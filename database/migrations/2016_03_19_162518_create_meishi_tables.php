<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMeishiTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meishi', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',20)->comment = '美食名称';
            $table->string('gongyi',20)->comment = '工艺';
            $table->string('kouwei',20)->comment = '口味';
            $table->text('yongliao')->comment = '用料';
            $table->text('zuofa')->comment = '做法';
            $table->unsignedTinyInteger('special')->default(0)->comment = '特别菜谱';
            $table->unsignedTinyInteger('type')->comment = '国外菜肴，国内菜肴，家常菜肴';
            $table->softDeletes();
            $table->timestamps();
        });

       Schema::create('categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',20)->comment = '分类名称';
            $table->unsignedInteger('parent_id')->comment = '上级分类';
            $table->softDeletes();
            $table->timestamps();
        });

        Schema::create('meishi_covers', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('meishi_id')->comment = '美食ID';
            $table->unsignedInteger('cover_id')->comment = '图片ID';
            $table->timestamps();
        });

        Schema::create('customer', function (Blueprint $table) {
            $table->increments('id');
            $table->string('username',20)->comment = '用户名';
            $table->string('password',32)->comment = '密码';
            $table->timestamp('lastlogin')->comment = '上次登录';
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('meishi');
        Schema::drop('categories');
        Schema::drop('customers');
    }
}
