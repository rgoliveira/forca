require 'test_helper'

class EvaluationKarmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation_karma = evaluation_karmas(:one)
  end

  test "should get index" do
    get evaluation_karmas_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_karma_url
    assert_response :success
  end

  test "should create evaluation_karma" do
    assert_difference('EvaluationKarma.count') do
      post evaluation_karmas_url, params: { evaluation_karma: { evaluation_id: @evaluation_karma.evaluation_id, student_id: @evaluation_karma.student_id, value: @evaluation_karma.value } }
    end

    assert_redirected_to evaluation_karma_url(EvaluationKarma.last)
  end

  test "should show evaluation_karma" do
    get evaluation_karma_url(@evaluation_karma)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_karma_url(@evaluation_karma)
    assert_response :success
  end

  test "should update evaluation_karma" do
    patch evaluation_karma_url(@evaluation_karma), params: { evaluation_karma: { evaluation_id: @evaluation_karma.evaluation_id, student_id: @evaluation_karma.student_id, value: @evaluation_karma.value } }
    assert_redirected_to evaluation_karma_url(@evaluation_karma)
  end

  test "should destroy evaluation_karma" do
    assert_difference('EvaluationKarma.count', -1) do
      delete evaluation_karma_url(@evaluation_karma)
    end

    assert_redirected_to evaluation_karmas_url
  end
end
