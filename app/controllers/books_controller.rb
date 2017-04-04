class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(10)
    @book = Book.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @book = Book.create title: params[:title] , category_id: params[:category_id]
    if @book.save
      flash[:success]= "le livre a été bien créer"
      redirect_to "/books"
    else
      @books = Books.all
      render "index"
    end
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all

  end

  def update
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      flash[:success] = "Le livre a été maj"
      redirect_to "/books/#{params[:id]}"
    else
      render 'show'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end

end
