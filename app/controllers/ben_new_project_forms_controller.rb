class BenNewProjectFormsController < ApplicationController
  before_action :set_ben_new_project_form, only: %i[ show edit update destroy ]

  # GET /ben_new_project_forms or /ben_new_project_forms.json
  def index
    @ben_new_project_forms = BenNewProjectForm.all
  end

  # GET /ben_new_project_forms/1 or /ben_new_project_forms/1.json
  def show
  end

  # GET /ben_new_project_forms/new
  def new
    @ben_new_project_form = BenNewProjectForm.new
  end

  # GET /ben_new_project_forms/1/edit
  def edit
  end

  # POST /ben_new_project_forms or /ben_new_project_forms.json
  def create
    @ben_new_project_form = BenNewProjectForm.new(ben_new_project_form_params)
    @ben_new_project_form.ben = current_user

    respond_to do |format|
      if @ben_new_project_form.save
        format.html { redirect_to ben_new_project_form_url(@ben_new_project_form), notice: "Ben new project form was successfully created." }
        format.json { render :show, status: :created, location: @ben_new_project_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben_new_project_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ben_new_project_forms/1 or /ben_new_project_forms/1.json
  def update
    respond_to do |format|
      if @ben_new_project_form.update(ben_new_project_form_params)
        format.html { redirect_to ben_new_project_form_url(@ben_new_project_form), notice: "Ben new project form was successfully updated." }
        format.json { render :show, status: :ok, location: @ben_new_project_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben_new_project_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ben_new_project_forms/1 or /ben_new_project_forms/1.json
  def destroy
    @ben_new_project_form.destroy

    respond_to do |format|
      format.html { redirect_to ben_new_project_forms_url, notice: "Ben new project form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ben_new_project_form
      @ben_new_project_form = BenNewProjectForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_new_project_form_params
      params.require(:ben_new_project_form).permit(:project_title, :project_introduction, :project_description, :available_frontstage_roles, :available_backstage_roles)
    end
end
