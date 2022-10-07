class BenAvailableFrontstageFormsController < ApplicationController
  before_action :set_ben_available_frontstage_form, only: %i[ show edit update destroy ]

  # GET /ben_available_frontstage_forms or /ben_available_frontstage_forms.json
  def index
    @ben_available_frontstage_forms = BenAvailableFrontstageForm.all
  end

  # GET /ben_available_frontstage_forms/1 or /ben_available_frontstage_forms/1.json
  def show
  end

  # GET /ben_available_frontstage_forms/new
  def new
    @ben_available_frontstage_form = BenAvailableFrontstageForm.new
  end

  # GET /ben_available_frontstage_forms/1/edit
  def edit
  end

  # POST /ben_available_frontstage_forms or /ben_available_frontstage_forms.json
  def create
    @ben_available_frontstage_form = BenAvailableFrontstageForm.new(ben_available_frontstage_form_params)

    respond_to do |format|
      if @ben_available_frontstage_form.save
        format.html { redirect_to ben_available_frontstage_form_url(@ben_available_frontstage_form), notice: "Ben available frontstage form was successfully created." }
        format.json { render :show, status: :created, location: @ben_available_frontstage_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben_available_frontstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ben_available_frontstage_forms/1 or /ben_available_frontstage_forms/1.json
  def update
    respond_to do |format|
      if @ben_available_frontstage_form.update(ben_available_frontstage_form_params)
        format.html { redirect_to ben_available_frontstage_form_url(@ben_available_frontstage_form), notice: "Ben available frontstage form was successfully updated." }
        format.json { render :show, status: :ok, location: @ben_available_frontstage_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben_available_frontstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ben_available_frontstage_forms/1 or /ben_available_frontstage_forms/1.json
  def destroy
    @ben_available_frontstage_form.destroy

    respond_to do |format|
      format.html { redirect_to ben_available_frontstage_forms_url, notice: "Ben available frontstage form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ben_available_frontstage_form
      @ben_available_frontstage_form = BenAvailableFrontstageForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_available_frontstage_form_params
      params.require(:ben_available_frontstage_form).permit(:role_title, :project_involved, :role_description, :requirements, :applicants_needed, :applicants_filled, :applicant_window_end)
    end
end
