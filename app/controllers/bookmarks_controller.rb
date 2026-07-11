class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [ :destroy ]
  def new
  end

  def create
  end

  def destroy
  end

  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
