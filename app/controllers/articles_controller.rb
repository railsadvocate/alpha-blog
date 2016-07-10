class ArticlesController < ApplicationController

  before_action :get_article_from_params, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to articles_path
    else
      flash[:notice] = ""
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = 'Article was successfully updated!'
      redirect_to articles_path
    else
      flash[:notice] = 'Error updating article. See below for errors'
      redirect_to edit_article_path
    end
  end

  def destroy
    if @article.destroy
      flash[:notice] = 'Article was successfully deleted!'
    else
      flash[:notice] = 'Article could not be deleted.'
    end
    redirect_to articles_path
  end

  private
  def article_params
    # params.require(:top_level_key).permit(:field1, :field2)
    params.require(:article).permit(:title, :description)
  end

  def get_article_from_params
    @article = Article.find(params[:id])
  end
end
