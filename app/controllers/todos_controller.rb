class TodosController < ApplicationController
    def index
       @todos = TodoModel.all
    end
    

    def create 
        @todo=TodoModel.new(todo_params)
        if @todo.save
          @todos=TodoModel.all
          redirect_to shows_path
        else
          render plain: "Fail" 
        end
  
    end

    def complete 
        @complete = TodoModel.find(params[:id])    
        @complete[:status] = true    
        if@complete.save  
          @todos=TodoModel.all
          render "todos/show" 
        end
    end

    def delete 
      @del = TodoModel.find(params[:id]) 
      if @del.destroy 
        @todos=TodoModel.all
        render "todos/show" 
      end
     
    end
    def show
      @todos = TodoModel.all
    end

    

    private

    def todo_params
        params.require(:todo_models).permit(:task,:description,:status,:date)
    end


end

    
