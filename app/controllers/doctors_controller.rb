class DoctorsController < ApplicationController
    # Afficher la liste des docteurs
    def index
      @doctors = Doctor.all
    end
  
    # Afficher un docteur spécifique
    def show
      @doctor = Doctor.find(params[:id])
    end
  
    # Afficher le formulaire de création
    def new
      @doctor = Doctor.new
    end
  
    # Créer un nouveau docteur
    def create
      @doctor = Doctor.new(doctor_params)
      if @doctor.save
        redirect_to @doctor
      else
        render :new
      end
    end
  
    # Afficher le formulaire d'édition
    def edit
      @doctor = Doctor.find(params[:id])
    end
  
    # Mettre à jour un docteur
    def update
      @doctor = Doctor.find(params[:id])
      if @doctor.update(doctor_params)
        redirect_to @doctor
      else
        render :edit
      end
    end
  
    # Supprimer un docteur
    def destroy
      @doctor = Doctor.find(params[:id])
      @doctor.destroy
      redirect_to doctors_path
    end
  
    private
  
    def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :zip_code, :specialty, :city_id)
    end
  end
  