require "test_helper"

class TAmicisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_amici = t_amicis(:one)
  end

  test "should get index" do
    get t_amicis_url
    assert_response :success
  end

  test "should get new" do
    get new_t_amici_url
    assert_response :success
  end

  test "should create t_amici" do
    assert_difference("TAmici.count") do
      post t_amicis_url, params: { t_amici: { cognome: @t_amici.cognome, email: @t_amici.email, instagram: @t_amici.instagram, nome: @t_amici.nome, telefono: @t_amici.telefono } }
    end

    assert_redirected_to t_amici_url(TAmici.last)
  end

  test "should show t_amici" do
    get t_amici_url(@t_amici)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_amici_url(@t_amici)
    assert_response :success
  end

  test "should update t_amici" do
    patch t_amici_url(@t_amici), params: { t_amici: { cognome: @t_amici.cognome, email: @t_amici.email, instagram: @t_amici.instagram, nome: @t_amici.nome, telefono: @t_amici.telefono } }
    assert_redirected_to t_amici_url(@t_amici)
  end

  test "should destroy t_amici" do
    assert_difference("TAmici.count", -1) do
      delete t_amici_url(@t_amici)
    end

    assert_redirected_to t_amicis_url
  end
end
