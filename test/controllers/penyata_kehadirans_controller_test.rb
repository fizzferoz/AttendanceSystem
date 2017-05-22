require 'test_helper'

class PenyataKehadiransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @penyata_kehadiran = penyata_kehadirans(:one)
  end

  test "should get index" do
    get penyata_kehadirans_url
    assert_response :success
  end

  test "should get new" do
    get new_penyata_kehadiran_url
    assert_response :success
  end

  test "should create penyata_kehadiran" do
    assert_difference('PenyataKehadiran.count') do
      post penyata_kehadirans_url, params: { penyata_kehadiran: { masamula: @penyata_kehadiran.masamula, masatamat: @penyata_kehadiran.masatamat, tarikh: @penyata_kehadiran.tarikh } }
    end

    assert_redirected_to penyata_kehadiran_url(PenyataKehadiran.last)
  end

  test "should show penyata_kehadiran" do
    get penyata_kehadiran_url(@penyata_kehadiran)
    assert_response :success
  end

  test "should get edit" do
    get edit_penyata_kehadiran_url(@penyata_kehadiran)
    assert_response :success
  end

  test "should update penyata_kehadiran" do
    patch penyata_kehadiran_url(@penyata_kehadiran), params: { penyata_kehadiran: { masamula: @penyata_kehadiran.masamula, masatamat: @penyata_kehadiran.masatamat, tarikh: @penyata_kehadiran.tarikh } }
    assert_redirected_to penyata_kehadiran_url(@penyata_kehadiran)
  end

  test "should destroy penyata_kehadiran" do
    assert_difference('PenyataKehadiran.count', -1) do
      delete penyata_kehadiran_url(@penyata_kehadiran)
    end

    assert_redirected_to penyata_kehadirans_url
  end
end
