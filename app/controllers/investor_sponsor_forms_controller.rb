class InvestorSponsorFormsController < ApplicationController
  before_action :set_investor_sponsor_form, only: %i[ show edit update destroy ]

  # GET /investor_sponsor_forms or /investor_sponsor_forms.json
  def index
    @investor_sponsor_forms = InvestorSponsorForm.all
  end

  # GET /investor_sponsor_forms/1 or /investor_sponsor_forms/1.json
  def show
  end

  # GET /investor_sponsor_forms/new
  def new
    @investor_sponsor_form = InvestorSponsorForm.new
  end

  # GET /investor_sponsor_forms/1/edit
  def edit
  end

  # POST /investor_sponsor_forms or /investor_sponsor_forms.json
  def create
    @investor_sponsor_form = InvestorSponsorForm.new(investor_sponsor_form_params)
    @investor_sponsor_form.investor = current_user

    respond_to do |format|
      if @investor_sponsor_form.save
        format.html { redirect_to investor_sponsor_form_url(@investor_sponsor_form), notice: "Investor sponsor form was successfully created." }
        format.json { render :show, status: :created, location: @investor_sponsor_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @investor_sponsor_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investor_sponsor_forms/1 or /investor_sponsor_forms/1.json
  def update
    respond_to do |format|
      if @investor_sponsor_form.update(investor_sponsor_form_params)
        format.html { redirect_to investor_sponsor_form_url(@investor_sponsor_form), notice: "Investor sponsor form was successfully updated." }
        format.json { render :show, status: :ok, location: @investor_sponsor_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @investor_sponsor_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investor_sponsor_forms/1 or /investor_sponsor_forms/1.json
  def destroy
    @investor_sponsor_form.destroy

    respond_to do |format|
      format.html { redirect_to investor_sponsor_forms_url, notice: "Investor sponsor form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor_sponsor_form
      @investor_sponsor_form = InvestorSponsorForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investor_sponsor_form_params
      params.require(:investor_sponsor_form).permit(:preferred_project, :currency, :investment, :sponsor_reason, :invest_reason, :investment_history)
    end
end
