class UniversitiesController < ApplicationController
    def index
        @universities = University.all
        
        render json: @universities
    end

    def show
        @universities = University.find(params[:id])

        render json: @universities
    end