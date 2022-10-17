class BenSelectionFormsController < ApplicationController
  before_action :set_ben_selection_form, only: %i[ show edit update destroy ]

  # GET /ben_selection_forms or /ben_selection_forms.json
  def index
    @ben_selection_forms = BenSelectionForm.all
  end

  # GET /ben_selection_forms/1 or /ben_selection_forms/1.json
  def show
  end

  # GET /ben_selection_forms/new
  def new
    @ben_selection_form = BenSelectionForm.new
  end

  # GET /ben_selection_forms/1/edit
  def edit
  end

  # POST /ben_selection_forms or /ben_selection_forms.json
  def create
    @ben_selection_form = BenSelectionForm.new(ben_selection_form_params)
    @ben_selection_form.ben = current_ben

    respond_to do |format|
      if @ben_selection_form.save
        format.html { redirect_to ben_selection_form_url(@ben_selection_form), notice: "Ben selection form was successfully created." }
        format.json { render :show, status: :created, location: @ben_selection_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben_selection_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ben_selection_forms/1 or /ben_selection_forms/1.json
  def update
    respond_to do |format|
      if @ben_selection_form.update(ben_selection_form_params)
        format.html { redirect_to ben_selection_form_url(@ben_selection_form), notice: "Ben selection form was successfully updated." }
        format.json { render :show, status: :ok, location: @ben_selection_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben_selection_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ben_selection_forms/1 or /ben_selection_forms/1.json
  def destroy
    @ben_selection_form.destroy

    respond_to do |format|
      format.html { redirect_to ben_selection_forms_url, notice: "Ben selection form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ben_selection_form
      @ben_selection_form = BenSelectionForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_selection_form_params
      params.require(:ben_selection_form).permit(:role_involved, :project_involved, :applicant_selection)
    end
end
