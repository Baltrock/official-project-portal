class GlitchController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_information_form, only: %i[ show edit update destroy]

  # GET /information_forms or /information_forms.json
  def primary
    # @admin = Admin.1
  end

  # GET /user/1 or /user/1.json
  def show
    # @fuel_limit.all
    # @dashboard_form.all
    # @information_form.all
  end

  # GET /user/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @glitch = Glitch.new(glitch_params)

    respond_to do |format|
      if @glitch.save
        format.html { redirect_to admin_url(@glitch), notice: "Glitch was successfully created." }
        format.json { render :show, status: :created, location: @glitch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @glitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @glitch.update(glitch_params)
        format.html { redirect_to glitch_url(@glitch), notice: "Glitch was successfully updated." }
        format.json { render :show, status: :ok, location: @glitch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @glitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @glitch.destroy

    respond_to do |format|
      format.html { redirect_to glitch_url, notice: "glitch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @glitch = Glitch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def glitch_params
      params.require(:glitch).permit(:name)
    end
end
