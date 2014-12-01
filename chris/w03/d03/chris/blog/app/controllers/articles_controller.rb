class ArticlesController < ApplicationController

  def new #defines the action for creating new articles
    @article = Article.new
  end

  def create #defines the action taken for creating an article
        @article = Article.new(article_params)
     
      if @article.save
        redirect_to @article
      else
        render 'new'
      end 
  end

  def show 
    @article = Article.find(params[:id])
  end  

  def index
    @articles = Article.all
  end

  def edit #the action for editing the article
  @article = Article.find(params[:id])
  end

  def update #the action to update an article
  @article = Article.find(params[:id])
 
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
  end

  def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
  end


  
  private  #keeps the action (aka method) within this ruby file
    def article_params
      params.require(:article).permit(:title, :text)
    end




end
