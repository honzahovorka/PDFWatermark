class CommentsController < ApplicationController
  def create
      @pdf = Vlozitpdf.find(params[:vlozitpdf_id])
      #params[:comment][:author] = current_user[:user_id]
      @comment = @pdf.comments.create(params[:comment])
      redirect_to vlozitpdf_path(@pdf)
    end
end
