require 'test_helper'

class PengunamakmalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pengunamakmal = pengunamakmals(:one)
  end

  test "should get index" do
    get pengunamakmals_url
    assert_response :success
  end

  test "should get new" do
    get new_pengunamakmal_url
    assert_response :success
  end

  test "should create pengunamakmal" do
    assert_difference('Pengunamakmal.count') do
      post pengunamakmals_url, params: { pengunamakmal: { masakeluarprogram: @pengunamakmal.masakeluarprogram, masamasukprogram: @pengunamakmal.masamasukprogram, nama: @pengunamakmal.nama, nombormatrix: @pengunamakmal.nombormatrix } }
    end

    assert_redirected_to pengunamakmal_url(Pengunamakmal.last)
  end

  test "should show pengunamakmal" do
    get pengunamakmal_url(@pengunamakmal)
    assert_response :success
  end

  test "should get edit" do
    get edit_pengunamakmal_url(@pengunamakmal)
    assert_response :success
  end

  test "should update pengunamakmal" do
    patch pengunamakmal_url(@pengunamakmal), params: { pengunamakmal: { masakeluarprogram: @pengunamakmal.masakeluarprogram, masamasukprogram: @pengunamakmal.masamasukprogram, nama: @pengunamakmal.nama, nombormatrix: @pengunamakmal.nombormatrix } }
    assert_redirected_to pengunamakmal_url(@pengunamakmal)
  end

  test "should destroy pengunamakmal" do
    assert_difference('Pengunamakmal.count', -1) do
      delete pengunamakmal_url(@pengunamakmal)
    end

    assert_redirected_to pengunamakmals_url
  end
end
