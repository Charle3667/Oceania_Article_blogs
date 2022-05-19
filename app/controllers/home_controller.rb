class HomeController < ApplicationController
  def index
    @articles = Article.all
    @abouts = About.all
  end
end
