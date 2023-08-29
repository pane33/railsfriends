class TAmicisController < ApplicationController
  before_action :set_t_amici, only: %i[ show edit update destroy ]

  # GET /t_amicis or /t_amicis.json
  def index
    @t_amicis = TAmici.all
  end

  # GET /t_amicis/1 or /t_amicis/1.json
  def show
  end

  # GET /t_amicis/new
  def new
    @t_amici = TAmici.new
  end

  # GET /t_amicis/1/edit
  def edit
  end

  # POST /t_amicis or /t_amicis.json
  def create
    @t_amici = TAmici.new(t_amici_params)

    respond_to do |format|
      if @t_amici.save
        format.html { redirect_to t_amici_url(@t_amici), notice: "T amici was successfully created." }
        format.json { render :show, status: :created, location: @t_amici }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @t_amici.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_amicis/1 or /t_amicis/1.json
  def update
    respond_to do |format|
      if @t_amici.update(t_amici_params)
        format.html { redirect_to t_amici_url(@t_amici), notice: "T amici was successfully updated." }
        format.json { render :show, status: :ok, location: @t_amici }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @t_amici.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_amicis/1 or /t_amicis/1.json
  def destroy
    @t_amici.destroy

    respond_to do |format|
      format.html { redirect_to t_amicis_url, notice: "T amici was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_amici
      @t_amici = TAmici.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def t_amici_params
      params.require(:t_amici).permit(:nome, :cognome, :email, :telefono, :instagram)
    end
end
