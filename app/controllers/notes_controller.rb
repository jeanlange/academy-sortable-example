class NotesController < ApplicationController
  def new
  end

  def create
    Note.new(params.require(:note).permit(:text)).save
    redirect_to notes_path
  end

  def index
    @notes = Note.order(:sort_order)
  end

  def update_order
    # Note.find(params[:id]).update(sort_order: params[:new_order])
    note = Note.find(params[:id])
    note.sort_order = params[:new_order]
    note.save
    redirect_to notes_path
  end

  def update_all_orders
    new_order = params[:new_order].split(',')
    new_order.each_with_index do |note, i|
      note = Note.find(note)
      note.sort_order = i
      note.save
    end
    redirect_to notes_path
  end
end
