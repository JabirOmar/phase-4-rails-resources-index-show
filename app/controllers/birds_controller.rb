class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds
    end

    def show
        birds = Bird.find_by(id:params[:id])
        if birds
            render json: birds, status: 200
        else
            render json: { error: "Bird not found" }, status: 404
        end
    end

end
