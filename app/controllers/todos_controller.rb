class TodosController < ApplicationController
    def index
       @todos = TodoModel.all
    end


    def delete 
        @del = TodoModel.find(params[:id]) 
        if @del.destroy 
          @todos=TodoModel.all
          render "todos/show" 
        end
    end
    

    def create 
        @todo=TodoModel.new(todo_params)
        if @todo.save
          @todos=TodoModel.all
          render "todos/show"
        end
    end

    def complete 
        @comp = TodoModel.find(params[:id])    
        @comp[:status] = true    
        if@comp.save  
          @todos=TodoModel.all
          render "todos/show" 
        end
    end

    private

    def todo_params
        params.require(:todo_models).permit(:task,:description,:status,:date)
    end


end

    
