require 'test_helper'

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation = evaluations(:one)
  end

  test "should get index" do
    get evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_url
    assert_response :success
  end

  test "should create evaluation" do
    assert_difference('Evaluation.count') do
      post evaluations_url, params: { evaluation: { anonymous: @evaluation.anonymous, class_id: @evaluation.class_id, comment: @evaluation.comment, grade: @evaluation.grade, professor_id: @evaluation.professor_id, professor_reply: @evaluation.professor_reply, professor_reply_at: @evaluation.professor_reply_at, semester: @evaluation.semester, student_id: @evaluation.student_id, year: @evaluation.year } }
    end

    assert_redirected_to evaluation_url(Evaluation.last)
  end

  test "should show evaluation" do
    get evaluation_url(@evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_url(@evaluation)
    assert_response :success
  end

  test "should update evaluation" do
    patch evaluation_url(@evaluation), params: { evaluation: { anonymous: @evaluation.anonymous, class_id: @evaluation.class_id, comment: @evaluation.comment, grade: @evaluation.grade, professor_id: @evaluation.professor_id, professor_reply: @evaluation.professor_reply, professor_reply_at: @evaluation.professor_reply_at, semester: @evaluation.semester, student_id: @evaluation.student_id, year: @evaluation.year } }
    assert_redirected_to evaluation_url(@evaluation)
  end

  test "should destroy evaluation" do
    assert_difference('Evaluation.count', -1) do
      delete evaluation_url(@evaluation)
    end

    assert_redirected_to evaluations_url
  end
end
