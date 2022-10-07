class CrewApplicantFormsController < ApplicationController
  before_action :set_crew_applicant_form, only: %i[ show edit update destroy ]

  # GET /crew_applicant_forms or /crew_applicant_forms.json
  def index
    @crew_applicant_forms = CrewApplicantForm.all
  end

  # GET /crew_applicant_forms/1 or /crew_applicant_forms/1.json
  def show
  end

  # GET /crew_applicant_forms/new
  def new
    @crew_applicant_form = CrewApplicantForm.new
  end

  # GET /crew_applicant_forms/1/edit
  def edit
  end

  # POST /crew_applicant_forms or /crew_applicant_forms.json
  def create
    @crew_applicant_form = CrewApplicantForm.new(crew_applicant_form_params)
    @crew_applicant_form.user = current_user

    respond_to do |format|
      if @crew_applicant_form.save
        format.html { redirect_to crew_applicant_form_url(@crew_applicant_form), notice: "Crew applicant form was successfully created." }
        format.json { render :show, status: :created, location: @crew_applicant_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crew_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crew_applicant_forms/1 or /crew_applicant_forms/1.json
  def update
    respond_to do |format|
      if @crew_applicant_form.update(crew_applicant_form_params)
        format.html { redirect_to crew_applicant_form_url(@crew_applicant_form), notice: "Crew applicant form was successfully updated." }
        format.json { render :show, status: :ok, location: @crew_applicant_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crew_applicant_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crew_applicant_forms/1 or /crew_applicant_forms/1.json
  def destroy
    @crew_applicant_form.destroy

    respond_to do |format|
      format.html { redirect_to crew_applicant_forms_url, notice: "Crew applicant form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew_applicant_form
      @crew_applicant_form = CrewApplicantForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crew_applicant_form_params
      params.require(:crew_applicant_form).permit(:preferred_project, :crew_roles, :interest_reason, :availability)
    end
end
