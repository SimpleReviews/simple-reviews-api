class LikesController < ApplicationController
  # GET /likes
  # GET /likes.json
  def index
    @likes = Like.all

    render json: @likes
  end

  # GET /likes/1
  # GET /likes/1.json
  def show
    @like = Like.find(params[:id])

    render json: @like
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new(like_params)

    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /likes/1
  # PATCH/PUT /likes/1.json
  def update
    @like = Like.find(params[:id])

    if @like.update(params[:like])
      head :no_content
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  # DELETE /likes/1.json
  def destroy
    @like = Like.find(params[:id])
    @like.destroy

    head :no_content
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :review_id)
  end
end
