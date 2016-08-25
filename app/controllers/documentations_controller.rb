class DocumentationsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create
    Documentation.create(documentation_params)

    head :created
  end

  def index
    @documentations = Documentation.all.order(created_at: :desc)
  end

  def update
    byebug
    @doc = Documentation.find(params[:id])
    @doc.update(params.require(:documentation).permit(:status))

    redirect_to '/' 
  end

  def show
    @doc = Documentation.find(params[:id])
  end

  private

  def documentation_params
    params.permit(:documentation, :birthday, :external_id)
  end
end
