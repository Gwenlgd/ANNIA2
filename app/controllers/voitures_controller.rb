class VoituresController < ApplicationController

  def food

  end

  def index
    @voitures = Voiture.all
  end

  def show
    @voiture = Voiture.find(params[:id])
  end

  def new
    @voiture = Voiture.new
  end

  def create
    @voiture = Voiture.new(voiture_params)
    if @voiture.save
      redirect_to trajet_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def voiture_params
    params.require(:voiture).permit(:nom, :ville, :lieu_rdv, :nb_place, :date_aller, :heure_aller, :date_retour, :heure_retour)
  end
end
