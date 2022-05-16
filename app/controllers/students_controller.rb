class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    this_one = Student.find(params[:id] || params[:first_name] || params[:last_name])
    render json: this_one
  end

end
