class TasketsController < ApplicationController
  before_action :set_tasket, only: [:show, :edit, :update, :destroy]

  # GET /taskets
  # GET /taskets.json
  def index
    @taskets = Tasket.all
  end

  # GET /taskets/1
  # GET /taskets/1.json
  def show
  end

  # GET /taskets/new
  def new
    @tasket = Tasket.new
  end

  # GET /taskets/1/edit
  def edit
  end

  # POST /taskets
  # POST /taskets.json
  def create
    @tasket = Tasket.new(tasket_params)

    respond_to do |format|
      if @tasket.save
        format.html { redirect_to @tasket, notice: 'Tasket was successfully created.' }
        format.json { render :show, status: :created, location: @tasket }
      else
        format.html { render :new }
        format.json { render json: @tasket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskets/1
  # PATCH/PUT /taskets/1.json
  def update
    respond_to do |format|
      if @tasket.update(tasket_params)
        format.html { redirect_to @tasket, notice: 'Tasket was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasket }
      else
        format.html { render :edit }
        format.json { render json: @tasket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskets/1
  # DELETE /taskets/1.json
  def destroy
    @tasket.destroy
    respond_to do |format|
      format.html { redirect_to taskets_url, notice: 'Tasket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasket
      @tasket = Tasket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasket_params
      params.require(:tasket).permit(:name, :user_id)
    end
end
