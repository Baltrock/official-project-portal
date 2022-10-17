class InvestorSupportFormsController < ApplicationController
  before_action :set_investor_support_form, only: %i[ show edit update destroy ]

  # GET /investor_support_forms or /investor_support_forms.json
  def index
    @investor_support_forms = InvestorSupportForm.all
  end

  # GET /investor_support_forms/1 or /investor_support_forms/1.json
  def show
  end

  # GET /investor_support_forms/new
  def new
    @investor_support_form = InvestorSupportForm.new
  end

  # GET /investor_support_forms/1/edit
  def edit
  end

  # POST /investor_support_forms or /investor_support_forms.json
  def create
    @investor_support_form = InvestorSupportForm.new(investor_support_form_params)
    @investor_support_form.investor = current_user

    respond_to do |format|
      if @investor_support_form.save
        format.html { redirect_to investor_support_form_url(@investor_support_form), notice: "Investor support form was successfully created." }
        format.json { render :show, status: :created, location: @investor_support_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @investor_support_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investor_support_forms/1 or /investor_support_forms/1.json
  def update
    respond_to do |format|
      if @investor_support_form.update(investor_support_form_params)
        format.html { redirect_to investor_support_form_url(@investor_support_form), notice: "Investor support form was successfully updated." }
        format.json { render :show, status: :ok, location: @investor_support_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @investor_support_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investor_support_forms/1 or /investor_support_forms/1.json
  def destroy
    @investor_support_form.destroy

    respond_to do |format|
      format.html { redirect_to investor_support_forms_url, notice: "Investor support form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor_support_form
      @investor_support_form = InvestorSupportForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investor_support_form_params
      params.require(:investor_support_form).permit(:currency, :investment, :interest_reason, :investment_history)
    end
end
