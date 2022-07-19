class UniversitiesController < ApplicationController
    def index
        if params[:search]
            @universities = University.search(params[:search])
        else
            @universities = University.all
        end
        
        render json: @universities
    end

    def show
        @universities = University.find(params[:id])

        render json: @universities
    end
end