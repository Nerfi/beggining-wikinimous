class ArticlesController < ApplicationController
  before_action :find_article, only: [:show,:edit,:update,:destroy]

def index
  @articles = Article.all

end

def show
 # @article = Article.find(params[:id])
 find_article

end

def new
 @article = Article.new
end

def create

  @article = Article.new(article_params)
  @article.save

  redirect_to articles_path(@article)

end

def edit
  #@article = Article.find(params[:id])
  find_article

end

def update
  #@article = Article.find(params[:id])
  find_article
  @article.update(article_params)
  redirect_to articles_path

end

def destroy
  #@article = Article.find(params[:id])
  find_article
  @article.destroy

  redirect_to articles_path


end

private
#refactoring
def find_article
  @article = Article.find(params[:id])

end

def article_params
  params.require(:article).permit(:title, :content)

end

end
