class HomeController < ApplicationController
  def index
    @cats = Cat.all
    @users = User.all
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save

    redirect_to '/'
  end

  private
    def todo_params
      params.require(:todo).permit(:tasks, :finished)
    end
end
