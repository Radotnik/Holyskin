class CategoriesController < ApplicationController
  def index
    @categories = policy_scope(Tracker)
    @categories = Category.all
  end
end
