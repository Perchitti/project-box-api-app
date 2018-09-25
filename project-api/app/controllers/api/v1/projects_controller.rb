module Api
    module V1
      class ProjectsController < ApplicationController

        before_action :set_project, only: [:show, :destroy, :update] 

        def index
            render json: Project.all
        end

        def create
            @project= Project.create(project_params)
            if @project.save
              render json: @project, status: 200
            else
              render json: { errors: @project.errors.full_messages }, status: 400
            end
          end 

          def show
            render json: @project = Project.find(params[:id]) 
          end 

          def update
            if @project.update(like: params[:project][:like])
              render json: @project, status: 200
            else
              render json: {errors: @project.errors.full_messages}, status: 400
            end
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
            params.permit(:title, :content, :studio, :location, :genre, :like, :liked, :like_count)
          end 

      end 
    end
end