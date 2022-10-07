class ManagementsController < ApplicationController
  before_action :set_information_form, only: %i[ show edit update destroy ]

  # GET /information_forms or /information_forms.json
  def primary
    @management = Management.all
  end

  # GET /user/1 or /user/1.json
  def show
    # @fuel_needed = @fuel_needed
    # @name = @name
    # @user = current_user
    @management = Management.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @management }
      end
      info = JSON.parse(url_s)
      @infos = info["value"]
    render json: @current_management
  end

  def management
  end

  # GET /user/new
  def new
    @management = Management.new
  end

  # GET /user/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    management = Management.create(management_params)
    session[:management_id] = management.id
    render json:management, status: :created

    respond_to do |format|
      if @management.save
        format.html { redirect_to management_url(@management), notice: "Welcome to Project Portal." }
        format.json { render :show, status: :created, location: @management }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @management.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @management.update(management_params)
        format.html { redirect_to user_url(@management), notice: "Your account has been updated." }
        format.json { render :show, status: :ok, location: @management }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @management.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to management_url, notice: "Your Profile has been deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management
      @management = Management.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def management_params
      params.require(:management).permit(:name)
      params.permit(:username, :password, :password_confirmation)
    end
end
