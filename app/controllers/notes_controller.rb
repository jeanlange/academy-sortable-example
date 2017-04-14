class NotesController < ApplicationController
  def new
  end

  def create
    Note.new(params.require(:note).permit(:text)).save
    redirect_to notes_path
  end

  def index
    @notes = Note.all
  end
end
