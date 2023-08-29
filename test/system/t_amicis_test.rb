require "application_system_test_case"

class TAmicisTest < ApplicationSystemTestCase
  setup do
    @t_amici = t_amicis(:one)
  end

  test "visiting the index" do
    visit t_amicis_url
    assert_selector "h1", text: "T amicis"
  end

  test "should create t amici" do
    visit t_amicis_url
    click_on "New t amici"

    fill_in "Cognome", with: @t_amici.cognome
    fill_in "Email", with: @t_amici.email
    fill_in "Instagram", with: @t_amici.instagram
    fill_in "Nome", with: @t_amici.nome
    fill_in "Telefono", with: @t_amici.telefono
    click_on "Create T amici"

    assert_text "T amici was successfully created"
    click_on "Back"
  end

  test "should update T amici" do
    visit t_amici_url(@t_amici)
    click_on "Edit this t amici", match: :first

    fill_in "Cognome", with: @t_amici.cognome
    fill_in "Email", with: @t_amici.email
    fill_in "Instagram", with: @t_amici.instagram
    fill_in "Nome", with: @t_amici.nome
    fill_in "Telefono", with: @t_amici.telefono
    click_on "Update T amici"

    assert_text "T amici was successfully updated"
    click_on "Back"
  end

  test "should destroy T amici" do
    visit t_amici_url(@t_amici)
    click_on "Destroy this t amici", match: :first

    assert_text "T amici was successfully destroyed"
  end
end
