class QuizzesController < ApplicationController
  respond_to :html

  before_filter :load_collection, :only => [:index]
  before_filter :load_object, except: [:index, :new, :create]

  def index
    respond_with @quizzes
  end

  def show
    respond_with @quiz, location: @quiz
  end

  def new
    respond_with @quiz = Quiz.new
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def create
    @quiz = Quiz.new(params[:quiz])
    respond_to do |format|
      if @quiz.save
        format.html { redirect_to(@quiz, notice: 'Quiz was successfully created.') }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @quiz.update_attributes(params[:quiz])
        format.html { redirect_to(@quiz, :notice => 'Quiz was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @quiz.destroy

    respond_to do |format|
      format.html { redirect_to(quizzes_url) }
    end
  end

private

  def load_collection
    @quizzes = Quiz.all
  end

  def load_object
    @quiz = Quiz.find(params[:id])
  end
end
