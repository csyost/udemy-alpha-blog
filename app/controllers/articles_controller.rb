class ArticlesController < ApplicationController
  def show
    # Has to have the '@' to be an instance variable. Needs to be an instance
    # variable so the view has access to it.
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all()
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if(@article.save())
      redirect_to @article
      flash[:notice] = "Article was created successfully"
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article created successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end
end