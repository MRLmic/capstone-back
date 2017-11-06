class HypothesesController < ApplicationController
  before_action :set_hypothesis, only: [:show, :update, :destroy]

  # GET /hypotheses
  def index
    @hypotheses = Hypothesis.all

    render json: @hypotheses
  end

  # GET /hypotheses/1
  def show
    render json: @hypothesis
  end

  # POST /hypotheses
  def create
    @hypothesis = Hypothesis.new(hypothesis_params)

    if @hypothesis.save
      render json: @hypothesis, status: :created, location: @hypothesis
    else
      render json: @hypothesis.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hypotheses/1
  def update
    if @hypothesis.update(hypothesis_params)
      render json: @hypothesis
    else
      render json: @hypothesis.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hypotheses/1
  def destroy
    @hypothesis.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hypothesis
      @hypothesis = Hypothesis.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hypothesis_params
      params.require(:hypothesis).permit(:title)
    end
end
