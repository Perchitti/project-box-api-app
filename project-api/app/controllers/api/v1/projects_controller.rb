module Api
    module V1
      class ProjectsController < ApplicationController

        before_action :set_project, only: [:show, :destroy] 

        def index
            render json: Project.all
        end

        def create
            @project= Project.create(project_params)
            if @project.save
              render json: @project, status: 201
            else
              render json: { errors: @project.errors.full_messages }, status: 422
            end
          end 

          def show
            render json: @project = Project.find(params[:id]) 
          end 
    
          def destroy
            @project.destroy
            render :show, status: :ok
          end 

        private

        def set_project
            @project = Project.find(params[:id])
          end 
    
          def project_params
            params.permit(:title, :content, :studio, :location, :genre)
          end 

      end 
    end
end