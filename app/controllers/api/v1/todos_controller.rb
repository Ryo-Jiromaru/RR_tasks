class Api::V1::TodosController < ApplicationController
     include ActionController::MimeResponds
    
    def index
        genres = Genre.all
        genre = Genre.find(1)
        render json: genres, include: [:todos]
    end

    def create
        todo = Todo.new(todo_params)
        if todo.save
            render json: todo
        else
            render json: todo.errors, status: 422
        end
    end

    private
    def todo_params
        params.require(:todo).permit(:about, :genre_id)
    end

end