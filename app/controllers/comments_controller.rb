class CommentsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment added."
      redirect_to product_path(@product)
    else
      flash[:notice] = "Error."
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Comment updated."
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted."
    redirect_to product_path(@product)
  end
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :author, :product_id)
  end
