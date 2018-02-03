class EvaluationKarmasController < ApplicationController
  before_action :set_evaluation_karma, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_karmas
  # GET /evaluation_karmas.json
  def index
    @evaluation_karmas = EvaluationKarma.all
  end

  # GET /evaluation_karmas/1
  # GET /evaluation_karmas/1.json
  def show
  end

  # GET /evaluation_karmas/new
  def new
    @evaluation_karma = EvaluationKarma.new
  end

  # GET /evaluation_karmas/1/edit
  def edit
  end

  # POST /evaluation_karmas
  # POST /evaluation_karmas.json
  def create
    @evaluation_karma = EvaluationKarma.new(evaluation_karma_params)

    respond_to do |format|
      if @evaluation_karma.save
        format.html { redirect_to @evaluation_karma, notice: 'Evaluation karma was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_karma }
      else
        format.html { render :new }
        format.json { render json: @evaluation_karma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_karmas/1
  # PATCH/PUT /evaluation_karmas/1.json
  def update
    respond_to do |format|
      if @evaluation_karma.update(evaluation_karma_params)
        format.html { redirect_to @evaluation_karma, notice: 'Evaluation karma was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_karma }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_karma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_karmas/1
  # DELETE /evaluation_karmas/1.json
  def destroy
    @evaluation_karma.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_karmas_url, notice: 'Evaluation karma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_karma
      @evaluation_karma = EvaluationKarma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_karma_params
      params.require(:evaluation_karma).permit(:student_id, :evaluation_id, :value)
    end
end
