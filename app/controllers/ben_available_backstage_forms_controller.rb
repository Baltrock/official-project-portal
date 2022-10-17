class BenAvailableBackstageFormsController < ApplicationController
  before_action :set_ben_available_backstage_form, only: %i[ show edit update destroy ]

  # GET /ben_available_backstage_forms or /ben_available_backstage_forms.json
  def index
    @ben_available_backstage_forms = BenAvailableBackstageForm.all
  end

  # GET /ben_available_backstage_forms/1 or /ben_available_backstage_forms/1.json
  def show
  end

  # GET /ben_available_backstage_forms/new
  def new
    @ben_available_backstage_form = BenAvailableBackstageForm.new
  end

  # GET /ben_available_backstage_forms/1/edit
  def edit
  end

  # POST /ben_available_backstage_forms or /ben_available_backstage_forms.json
  def create
    @ben_available_backstage_form = BenAvailableBackstageForm.new(ben_available_backstage_form_params)
    @ben_available_backstage_form.ben = current_ben

    respond_to do |format|
      if @ben_available_backstage_form.save
        format.html { redirect_to ben_available_backstage_form_url(@ben_available_backstage_form), notice: "Ben available backstage form was successfully created." }
        format.json { render :show, status: :created, location: @ben_available_backstage_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben_available_backstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ben_available_backstage_forms/1 or /ben_available_backstage_forms/1.json
  def update
    respond_to do |format|
      if @ben_available_backstage_form.update(ben_available_backstage_form_params)
        format.html { redirect_to ben_available_backstage_form_url(@ben_available_backstage_form), notice: "Ben available backstage form was successfully updated." }
        format.json { render :show, status: :ok, location: @ben_available_backstage_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben_available_backstage_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ben_available_backstage_forms/1 or /ben_available_backstage_forms/1.json
  def destroy
    @ben_available_backstage_form.destroy

    respond_to do |format|
      format.html { redirect_to ben_available_backstage_forms_url, notice: "Ben available backstage form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ben_available_backstage_form
      @ben_available_backstage_form = BenAvailableBackstageForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_available_backstage_form_params
      params.require(:ben_available_backstage_form).permit(:role_title, :project_involved, :role_description, :applicants_needed, :applicants_filled, :applicant_window_end)
    end
end
