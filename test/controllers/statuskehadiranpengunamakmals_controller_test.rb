require 'test_helper'

class StatuskehadiranpengunamakmalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statuskehadiranpengunamakmal = statuskehadiranpengunamakmals(:one)
  end

  test "should get index" do
    get statuskehadiranpengunamakmals_url
    assert_response :success
  end

  test "should get new" do
    get new_statuskehadiranpengunamakmal_url
    assert_response :success
  end

  test "should create statuskehadiranpengunamakmal" do
    assert_difference('Statuskehadiranpengunamakmal.count') do
      post statuskehadiranpengunamakmals_url, params: { statuskehadiranpengunamakmal: { statuskehadiran: @statuskehadiranpengunamakmal.statuskehadiran, statusmasuk: @statuskehadiranpengunamakmal.statusmasuk } }
    end

    assert_redirected_to statuskehadiranpengunamakmal_url(Statuskehadiranpengunamakmal.last)
  end

  test "should show statuskehadiranpengunamakmal" do
    get statuskehadiranpengunamakmal_url(@statuskehadiranpengunamakmal)
    assert_response :success
  end

  test "should get edit" do
    get edit_statuskehadiranpengunamakmal_url(@statuskehadiranpengunamakmal)
    assert_response :success
  end

  test "should update statuskehadiranpengunamakmal" do
    patch statuskehadiranpengunamakmal_url(@statuskehadiranpengunamakmal), params: { statuskehadiranpengunamakmal: { statuskehadiran: @statuskehadiranpengunamakmal.statuskehadiran, statusmasuk: @statuskehadiranpengunamakmal.statusmasuk } }
    assert_redirected_to statuskehadiranpengunamakmal_url(@statuskehadiranpengunamakmal)
  end

  test "should destroy statuskehadiranpengunamakmal" do
    assert_difference('Statuskehadiranpengunamakmal.count', -1) do
      delete statuskehadiranpengunamakmal_url(@statuskehadiranpengunamakmal)
    end

    assert_redirected_to statuskehadiranpengunamakmals_url
  end
end
