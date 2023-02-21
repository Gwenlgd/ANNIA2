class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(params[:id])
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)
    if @train.save
      redirect_to trajet_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def train_params
    params.require(:train).permit(:nom, :ville_depart, :ville_arrivee, :heure_aller, :date_aller, :heure_retour, :date_retour, :note)
  end
end
