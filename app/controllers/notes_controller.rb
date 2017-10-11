class NotesController < ApplicationController
   before_action :set_workday, only: [:create, :destroy]

   def create
    @note = @workday.notes.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @workday, notice: 'Note was successfully added.' }
      else
        format.html { redirect_to @workday, alert: "Unable to add note!" }
      end
    end
  end

  def destroy
    @note = @workday.notes.find(params[:id])
    @note.destroy
    redirect_to @workday, notice: "Note deleted!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workday
      @workday = Workday.find(params[:workday_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :note)
    end  	
end
