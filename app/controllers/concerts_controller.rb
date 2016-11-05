class ConcertsController <ApplicationController
  def index
    render json: Concert.all  
  end

  def show
    render json: Concert.find(params[:id])
  end

end