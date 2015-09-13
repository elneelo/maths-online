class ClassroomsController < ApplicationController

	def index
    @classroom = Classroom.paginate(page: params[:page])
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      flash[:success] = "Your classroom has been created"
      redirect_to @classroom
    else
      render 'new'
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
    #extract params here
    #create instance of classroom
    #find all user id's of attendee where lesson id = "" of attendee
  end

  def update
    @classroom = Classroom.find(params[:id])
    if @classroom.update_attributes(classroom_params)
      flash[:success] = "Classroom updated"
      redirect_to @classroom
    else
      render 'edit'
    end
  end

  def destroy
    Classroom.find(params[:id]).destroy
    flash[:success] = "Classroom deleted"
    redirect_to classrooms_url
  end

  private

    def classroom_params
      params.require(:classroom).permit(:classroom_name, :user_id,
        :lesson_id)
    end

    # Before filters

    # Confirms the correct classrooms.
    def correct_classroom
      @classroom = Classroom.find(params[:id])
      redirect_to(root_url) unless current_classroom?(@classroom)
    end
end
