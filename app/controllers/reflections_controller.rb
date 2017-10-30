class ReflectionsController < ApplicationController

  def new
    @reflection = Reflection.new
  end

  def create
    @reflection = Reflection.new(reflection_path)
    # @answer = Answer.new(answer_params)
    # @answer.question = @question
  # if the question is saved correctly, it will send a notice. If it is not, it just goes back to the form page.
    if @reflection.save
      redirect_to comment_path(@reflection), notice: "Reflection was successfully created."
    else
      render :new
    end
  end

  def index
    @reflections = Reflection.all
  end

  def show
    @reflection = Reflection.find(params[:id])
    # @answers = @question.answers
    # @answer = Answer.new
  end

  def destroy
    @reflection = Reflection.find(params[:id])
    @reflection.destroy
    redirect_to reflections_url, notice: 'Comment was successfully deleted.'
  end
end
  # this reduces any junk in our submissions. It keeps it with title and description. They could mess things up with curl requests.
    # private
    #   def reflection_params
    #     params.require(:name, :relationship).permit(:thoughts)
    #   end
    # end
