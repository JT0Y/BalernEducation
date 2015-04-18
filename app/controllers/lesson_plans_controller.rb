class LessonPlansController < ApplicationController
  before_action :set_lesson_plan, only: [:show, :edit, :update, :destroy]

  # GET /lesson_plans
  # GET /lesson_plans.json
  def index
    @lesson_plans = LessonPlan.all
  end

  # GET /lesson_plans/1
  # GET /lesson_plans/1.json
  def show
  end

  # GET /lesson_plans/new
  def new
    @lesson_plan = LessonPlan.new
  end

  # GET /lesson_plans/1/edit
  def edit
  end

  # POST /lesson_plans
  # POST /lesson_plans.json
  def create
    @lesson_plan = LessonPlan.new(lesson_plan_params)

    respond_to do |format|
      if @lesson_plan.save
        format.html { redirect_to @lesson_plan, notice: 'Lesson plan was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_plan }
      else
        format.html { render :new }
        format.json { render json: @lesson_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_plans/1
  # PATCH/PUT /lesson_plans/1.json
  def update
    respond_to do |format|
      if @lesson_plan.update(lesson_plan_params)
        format.html { redirect_to @lesson_plan, notice: 'Lesson plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_plan }
      else
        format.html { render :edit }
        format.json { render json: @lesson_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_plans/1
  # DELETE /lesson_plans/1.json
  def destroy
    @lesson_plan.destroy
    respond_to do |format|
      format.html { redirect_to lesson_plans_url, notice: 'Lesson plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def document_download
   @lesson_plan = LessonPlan.find(params[:id])
    file_path = @lesson_plan.photo_file_name
  if !file_path.nil?
      send_file "#{Rails.root}/public/system/photos/#{@lesson_plan.id}/original/#{file_path}", :x_sendfile => true 
  else 
       redirect_to lesson_plans_url
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_plan
      @lesson_plan = LessonPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_plan_params
      params.require(:lesson_plan).permit(:group_id, :class_number, :image)
    end
end
