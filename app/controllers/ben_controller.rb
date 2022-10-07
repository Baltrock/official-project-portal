class BenController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_information_form, only: %i[ show edit update destroy]

  # GET /information_forms or /information_forms.json
  def primary
    # @admin = Admin.1
  end

  # GET /user/1 or /user/1.json
  def show
    @management_applicant_forms.all
    @actor_applicant_form.all
    @artist_applicant_form.all
    @musician_applicant_form.all
    @crew_applicant_form.all
    @investor_company_form.all
    @complaint_form.all
    @information_form.all
    @investor_company_form.all
    @investor_sponsor_form.all
    @investor_support_form.all
    @management_request_form.all
    @management_review_form.all
    @resignation_form.all
    @transfer_form.all
  end

  # GET /user/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @ben = Ben.new(ben_params)

    respond_to do |format|
      if @ben.save
        format.html { redirect_to admin_url(@ben), notice: "Ben was successfully created." }
        format.json { render :show, status: :created, location: @ben }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ben.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @ben.update(ben_params)
        format.html { redirect_to ben_url(@admin), notice: "Ben was successfully updated." }
        format.json { render :show, status: :ok, location: @ben }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ben.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @ben.destroy

    respond_to do |format|
      format.html { redirect_to ben_url, notice: "ben was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @ben = Ben.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ben_params
      params.require(:ben).permit(:name)
    end
end
