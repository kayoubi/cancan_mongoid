class ArticlesController < ApplicationController
  respond_to :html

  authorize_resource
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to(@article)
  end
  
end
