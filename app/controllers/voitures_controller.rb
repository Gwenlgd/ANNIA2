class VoituresController < ApplicationController

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
    params.require(:voiture).permit(:nom, :ville, :lieu_rdv, :nb_place, :heure_aller, :date_aller, :heure_retour, :date_retour)
  end
end
