class ArticlesController < ApplicationController

 def show
    @article = Article.find(params[:id])
 end

 def index
  @articles = Article.all
 end

 def new

 end

 def create
 @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      redirect_to article_path(@article)
    else
      redirect_to new_article_path
   #ou render 'new'
    end
 end

 def edit
  @article = Article.find(params[:id])
 end


 def update
  @article = Article.update(params.require(:article).permit(:title, :description))
  redirect_to article_path(@article)
 end

 def destroy
  @article = Article.find(params[:id])
  @article.destroy
  redirect_to articles_path

 end

end
