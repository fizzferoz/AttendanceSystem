require 'test_helper'

class PendaftaranKelasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pendaftaran_kela = pendaftaran_kelas(:one)
  end

  test "should get index" do
    get pendaftaran_kelas_url
    assert_response :success
  end

  test "should get new" do
    get new_pendaftaran_kela_url
    assert_response :success
  end

  test "should create pendaftaran_kela" do
    assert_difference('PendaftaranKela.count') do
      post pendaftaran_kelas_url, params: { pendaftaran_kela: { penganjur: @pendaftaran_kela.penganjur, program: @pendaftaran_kela.program, tempohmasamula: @pendaftaran_kela.tempohmasamula, tempohmasatamat: @pendaftaran_kela.tempohmasatamat, tujuan: @pendaftaran_kela.tujuan } }
    end

    assert_redirected_to pendaftaran_kela_url(PendaftaranKela.last)
  end

  test "should show pendaftaran_kela" do
    get pendaftaran_kela_url(@pendaftaran_kela)
    assert_response :success
  end

  test "should get edit" do
    get edit_pendaftaran_kela_url(@pendaftaran_kela)
    assert_response :success
  end

  test "should update pendaftaran_kela" do
    patch pendaftaran_kela_url(@pendaftaran_kela), params: { pendaftaran_kela: { penganjur: @pendaftaran_kela.penganjur, program: @pendaftaran_kela.program, tempohmasamula: @pendaftaran_kela.tempohmasamula, tempohmasatamat: @pendaftaran_kela.tempohmasatamat, tujuan: @pendaftaran_kela.tujuan } }
    assert_redirected_to pendaftaran_kela_url(@pendaftaran_kela)
  end

  test "should destroy pendaftaran_kela" do
    assert_difference('PendaftaranKela.count', -1) do
      delete pendaftaran_kela_url(@pendaftaran_kela)
    end

    assert_redirected_to pendaftaran_kelas_url
  end
end
