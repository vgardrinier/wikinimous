class ArticlesController < ApplicationController

  def index

    @articles = Article.all
  end
  def new
    @article = Article.new
    # you need to give an empty shell to your form_for!
  end

  def create
        article = Article.create(article_params)
        redirect_to article_path(article)
  end

  def show
        @article = Article.find(params[:id])
  end


  def edit
        @article = Article.find(params[:id])
  end
   def update
        article = Article.find(params[:id])
        article.update(article_params)
        redirect_to article_path(article)
    end



  def destroy
        # fetch article to destroy from DB
        article = Article.find(params[:id])

        # destroy record
        article.destroy

        # redirect to index
        redirect_to articles_path
  end


private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

