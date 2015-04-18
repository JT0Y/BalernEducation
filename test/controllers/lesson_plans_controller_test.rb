require 'test_helper'

class LessonPlansControllerTest < ActionController::TestCase
  setup do
    @lesson_plan = lesson_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_plan" do
    assert_difference('LessonPlan.count') do
      post :create, lesson_plan: { class_number: @lesson_plan.class_number, group_id: @lesson_plan.group_id }
    end

    assert_redirected_to lesson_plan_path(assigns(:lesson_plan))
  end

  test "should show lesson_plan" do
    get :show, id: @lesson_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_plan
    assert_response :success
  end

  test "should update lesson_plan" do
    patch :update, id: @lesson_plan, lesson_plan: { class_number: @lesson_plan.class_number, group_id: @lesson_plan.group_id }
    assert_redirected_to lesson_plan_path(assigns(:lesson_plan))
  end

  test "should destroy lesson_plan" do
    assert_difference('LessonPlan.count', -1) do
      delete :destroy, id: @lesson_plan
    end

    assert_redirected_to lesson_plans_path
  end
end
