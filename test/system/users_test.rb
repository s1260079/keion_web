require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Crypted password", with: @user.crypted_password
    fill_in "Email", with: @user.email
    fill_in "Likeband", with: @user.likeBand
    fill_in "Message", with: @user.message
    fill_in "Part", with: @user.part
    fill_in "Salt", with: @user.salt
    fill_in "String", with: @user.string
    fill_in "Studentid", with: @user.studentID
    fill_in "Username", with: @user.username
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Crypted password", with: @user.crypted_password
    fill_in "Email", with: @user.email
    fill_in "Likeband", with: @user.likeBand
    fill_in "Message", with: @user.message
    fill_in "Part", with: @user.part
    fill_in "Salt", with: @user.salt
    fill_in "String", with: @user.string
    fill_in "Studentid", with: @user.studentID
    fill_in "Username", with: @user.username
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
