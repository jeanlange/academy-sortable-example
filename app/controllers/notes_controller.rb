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

  def update_order
    puts params[:id]
    puts params[:new_order]
    # Note.find(params[:id]).update(sort_order: params[:new_order])
    note = Note.find(params[:id])
    note.sort_order = params[:new_order]
    note.save
    redirect_to notes_path
  end
end
