class InvestorsController < ApplicationController
  before_action :set_information_form, only: %i[ show edit update destroy ]
  before_action :find_user


  def find_user
    @investor = User.find_by(params[:id])
  end
  # GET /information_forms or /information_forms.json
  def primary
    @investor = Investor.all
  end

  # GET /user/1 or /user/1.json
  def show
    # @fuel_needed = @fuel_needed
    # @name = @name
    # @user = current_user
    @investor = Investor.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @investor }
      end
      info = JSON.parse(url_s)
      @infos = info["value"]
    render json: @current_user
  end

  def investor
  end

  # GET /user/new
  def new
    @investor = Investor.new
  end

  # GET /user/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    investor = Investor.create(investor_params)
    session[:investor_id] = investor.id
    render json:user, status: :created

    respond_to do |format|
      if @investor.save
        format.html { redirect_to investor_url(@investor), notice: "Welcome to Project Portal." }
        format.json { render :show, status: :created, location: @investor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @investor.update(investor_params)
        format.html { redirect_to investor_url(@investor), notice: "Your account has been updated." }
        format.json { render :show, status: :ok, location: @investor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @investor.destroy

    respond_to do |format|
      format.html { redirect_to investor_url, notice: "Your Profile has been deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor
      @investor = Investor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investor_params
      params.require(:investor).permit(:name)
      params.permit(:username, :password, :password_confirmation)
    end
end
