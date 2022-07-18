class AwkwardPausesController < ApplicationController
  before_action :set_awkward_pause, only: %i[ show edit update destroy ]

  # GET /awkward_pauses or /awkward_pauses.json
  def index
    @awkward_pauses = AwkwardPause.all
  end

  # GET /awkward_pauses/1 or /awkward_pauses/1.json
  def show
  end

  # GET /awkward_pauses/new
  def new
    @awkward_pause = AwkwardPause.new
  end

  # GET /awkward_pauses/1/edit
  def edit
  end

  # POST /awkward_pauses or /awkward_pauses.json
  def create
    @awkward_pause = AwkwardPause.new(awkward_pause_params)
    byebug

    # if its valid
    if @awkward_pause.valid?
      @awkward_pause.save # save to the db

      # communicate success to the user
      flash[:notice] = 'Awkward pause created!'

      # redirect to the show page
      redirect_to @awkward_pause
      
    else
      # otherwise,
      flash[:error] = @awkward_pause.errors.full_messages
      # see the errors
      # redirect to the new path, so they can try again
      redirect_to new_awkward_pause_path
    end
      
    
  end

  # PATCH/PUT /awkward_pauses/1 or /awkward_pauses/1.json
  def update
    respond_to do |format|
      if @awkward_pause.update(awkward_pause_params)
        format.html { redirect_to awkward_pause_url(@awkward_pause), notice: "Awkward pause was successfully updated." }
        format.json { render :show, status: :ok, location: @awkward_pause }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @awkward_pause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awkward_pauses/1 or /awkward_pauses/1.json
  def destroy
    @awkward_pause.destroy

    respond_to do |format|
      format.html { redirect_to awkward_pauses_url, notice: "Awkward pause was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awkward_pause
      @awkward_pause = AwkwardPause.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def awkward_pause_params
      params.require(:awkward_pause).permit(:location, :topic, :minutes)
    end
end
