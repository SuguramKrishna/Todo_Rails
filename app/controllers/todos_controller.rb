class TodosController < ApplicationController
    def index
        render plain: "This is the /todos"
    end
end
