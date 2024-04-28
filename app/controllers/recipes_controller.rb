class RecipesController < ApplicationController
  protect_from_forgery

  def index
    recipes = Recipe.all
    render json: recipes.as_json
  end

  def create
    recipe = Recipe.create(
      name: params[:name],
      instructions: params[:instructions],
      ingredients: params[:ingredients]
    )
    render json: recipe.as_json
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe.as_json
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.update(
      name: "updates name"
    )
    render json: recipe.as_json
  end
end
