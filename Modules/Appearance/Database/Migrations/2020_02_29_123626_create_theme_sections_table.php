<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThemeSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('theme_sections', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('theme_id');
            $table->tinyInteger('type')->default(0);
            $table->string('label');
            $table->integer('order')->default(0);
            $table->unsignedBigInteger('category_id')->nullable();
            $table->unsignedBigInteger('album_id')->nullable();
            $table->unsignedBigInteger('ad_id')->nullable();
            $table->unsignedBigInteger('post_amount')->nullable();
            $table->string('section_style')->nullable();
            $table->tinyInteger('is_primary')->default(0);
            $table->boolean('status')->default(0);
            $table->string('language')->nullable();
            $table->timestamps();

            $table->foreign('ad_id')->references('id')->on('ads')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->foreign('category_id')->references('id')->on('categories')
                ->onUpdate('cascade')->onDelete('cascade');

            $table->foreign('album_id')->references('id')->on('albums')
                ->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('theme_sections');
    }
}
