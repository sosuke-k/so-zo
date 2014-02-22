class IllustsController < ApplicationController
  # before_action :set_illust, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user

  # GET /illusts
  # GET /illusts.json
  def index
    @illusts = Illust.all
  end

  # GET /illusts/1
  # GET /illusts/1.json
  def show
  end

  # GET /illusts/new
  def new
    @illust = Illust.new
  end

  # GET /illusts/1/edit
  def edit
  end

  # POST /illusts
  # POST /illusts.json
  def create
    @illust = current_user.illusts.build(illust_params)

    if @illust.save
      flash[:success] = "Illust created!"
      redirect_to edit_user_path(current_user)
    else
      flash[:error] = "fail to upload"
      redirect_to edit_user_path(current_user)
    end
  end

  # PATCH/PUT /illusts/1
  # PATCH/PUT /illusts/1.json
  def update
    respond_to do |format|
      if @illust.update(illust_params)
        format.html { redirect_to @illust, notice: 'Illust was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @illust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illusts/1
  # DELETE /illusts/1.json
  def destroy
    set_illust
    @illust.destroy
    redirect_to edit_user_path(current_user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illust
      @illust = Illust.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illust_params
      params.require(:illust).permit(:name, :user_id, :image)
    end
end
