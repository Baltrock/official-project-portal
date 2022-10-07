class BenOverallProjectFinanceFormsController < ApplicationController
  before_action :set_ben_overall_project_finance_form, only: %i[ show edit update destroy ]

  # GET /ben_overall_project_finance_forms or /ben_overall_project_finance_forms.json
  def index
    @ben_overall_project_finance_forms = BenOverallProjectFinanceForm.all
  end

  # GET /ben_overall_project_finance_forms/1 or /ben_overall_project_finance_forms/1.json
  def show
  end

  # GET /ben_overall_project_finance_forms/new
  def new
    @ben_overall_project_finance_form = BenOverallProjectFinanceForm.new
  end

  # GET /ben_overall_project_finance_forms/1/edit
  def edit
  end

  # POST /ben_overall_project_finance_forms or /ben_overall_project_finance_forms.json
  def create
    @ben_overall_project_finance_form = BenOverallProjectFinanceForm.new(ben_overall_project_finance_form_params)

    respond_to do |format|
      if @ben_overall_project_finance_form.save
        format.html { redirect_to ben_overall_project_finance_form_url(@ben_overall_project_finance_form), notice: "Ben overall project finance form was successfully created." }
        format.json { render :show, status: :created, location: @ben_overall_project_finance_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben_overall_project_finance_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ben_overall_project_finance_forms/1 or /ben_overall_project_finance_forms/1.json
  def update
    respond_to do |format|
      if @ben_overall_project_finance_form.update(ben_overall_project_finance_form_params)
        format.html { redirect_to ben_overall_project_finance_form_url(@ben_overall_project_finance_form), notice: "Ben overall project finance form was successfully updated." }
        format.json { render :show, status: :ok, location: @ben_overall_project_finance_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben_overall_project_finance_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ben_overall_project_finance_forms/1 or /ben_overall_project_finance_forms/1.json
  def destroy
    @ben_overall_project_finance_form.destroy

    respond_to do |format|
      format.html { redirect_to ben_overall_project_finance_forms_url, notice: "Ben overall project finance form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ben_overall_project_finance_form
      @ben_overall_project_finance_form = BenOverallProjectFinanceForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_overall_project_finance_form_params
      params.require(:ben_overall_project_finance_form).permit(:project_title, :project_description, :total_investment, :currency, :update)
    end
end
