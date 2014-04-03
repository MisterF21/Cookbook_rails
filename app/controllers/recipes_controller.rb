class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      @tag_ids = params[:tag_ids]
      @tag_ids.each do |id|
      @tag = Tag.find(id)
      @recipe.tags << @tag
    end
      redirect_to('/recipes')
    else
      render('recipes/new.html.erb')
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render :update
  end

  def update
    Recipe.find(params[:id]).update(params[:recipe])
    redirect_to('/recipes')
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to('/recipes')
  end

end
