class ArticlesController < ApplicationController
before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.content = Kramdown::Document.new(@article.content).to_html.html_safe
    @article.title = Kramdown::Document.new(@article.title).to_html.html_safe
    @article.save
    redirect_to article_path(@article)
  end

  def edit

  end

  def update
    @article.update(article_params)
    @article.content = Kramdown::Document.new(@article.content).to_html.html_safe
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

    private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
