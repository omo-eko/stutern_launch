class LaunchController < ApplicationController
  before_action :set_launch, only: [:show, :edit, :update, :destroy]

  # GET /launch
  # GET /launch.json
  def index
    @launch = Launch.all
  end

  # POST /launch
  # POST /launch.json
  def create
    @launch = Launch.new(launch_params)

    respond_to do |format|
      if @launch.save
        format.html { redirect_to @launch, notice: 'Launch was successfully created.' }
        format.json { render :show, status: :created, location: @launch }
      else
        format.html { render :new }
        format.json { render json: @launch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /launch/1
  # PATCH/PUT /launch/1.json
  def update
    respond_to do |format|
      if @launch.update(launch_params)
        format.html { redirect_to @launch, notice: 'Launch was successfully updated.' }
        format.json { render :show, status: :ok, location: @launch }
      else
        format.html { render :edit }
        format.json { render json: @launch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launch/1
  # DELETE /launch/1.json
  def destroy
    @launch.destroy
    respond_to do |format|
      format.html { redirect_to launch_url, notice: 'Launch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launch
      @launch = Launch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def launch_params
      params[:launch]
    end
end