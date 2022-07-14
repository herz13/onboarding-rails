class CoursesController < ApplicationController
    def index
        @courses = Course.all
        
        render json: @courses
    end

    def show
        @courses = Course.find(params[:id])

        render json: @courses
    end
end