class BenManagementUpdateFormsController < ApplicationController
  before_action :set_ben_management_update_form, only: %i[ show edit update destroy ]

  # GET /ben_management_update_forms or /ben_management_update_forms.json
  def index
    @ben_management_update_forms = BenManagementUpdateForm.all
  end

  # GET /ben_management_update_forms/1 or /ben_management_update_forms/1.json
  def show
  end

  # GET /ben_management_update_forms/new
  def new
    @ben_management_update_form = BenManagementUpdateForm.new
  end

  # GET /ben_management_update_forms/1/edit
  def edit
  end

  # POST /ben_management_update_forms or /ben_management_update_forms.json
  def create
    @ben_management_update_form = BenManagementUpdateForm.new(ben_management_update_form_params)

    respond_to do |format|
      if @ben_management_update_form.save
        format.html { redirect_to ben_management_update_form_url(@ben_management_update_form), notice: "Ben management update form was successfully created." }
        format.json { render :show, status: :created, location: @ben_management_update_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben_management_update_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ben_management_update_forms/1 or /ben_management_update_forms/1.json
  def update
    respond_to do |format|
      if @ben_management_update_form.update(ben_management_update_form_params)
        format.html { redirect_to ben_management_update_form_url(@ben_management_update_form), notice: "Ben management update form was successfully updated." }
        format.json { render :show, status: :ok, location: @ben_management_update_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben_management_update_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ben_management_update_forms/1 or /ben_management_update_forms/1.json
  def destroy
    @ben_management_update_form.destroy

    respond_to do |format|
      format.html { redirect_to ben_management_update_forms_url, notice: "Ben management update form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ben_management_update_form
      @ben_management_update_form = BenManagementUpdateForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_management_update_form_params
      params.require(:ben_management_update_form).permit(:update_title, :projects_involved, :update_description)
    end
end
