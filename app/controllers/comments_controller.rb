class CommentsController < ApplicationController

	def create
		@album = Album.find(params[:album_id])
		@photo = Photo.find(params[:photo_id])

		@comment = Comment.new(comment_params)
		@photo.comments.create(comment_params)

		redirect_to album_photo_path(@album, @photo) 
	end

	def show
	end

	def new
	end

	def index
	end
	
	


	def comment_params 
		params.require(:comment).permit(:body, :post_id, :user_id, :album_id)
	end


end
