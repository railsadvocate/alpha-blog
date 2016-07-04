class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else
      flash[:notice] = ""
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    # params.require(:top_level_key).permit(:field1, :field2)
    params.require(:article).permit(:title, :description)
  end


end
