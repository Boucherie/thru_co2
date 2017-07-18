require 'test_helper'


class UserTest < ActiveSupport::TestCase

  test "email must be unique" do
    user = build(:user, email: "blob@theblob.com",
    password: "password", password_confirmation: "password")
    user.save
    user2 = build(:user, email: "blob@theblob.com",
    password: "password", password_confirmation: "password")
    user2.save
    refute user2.valid?
  end

  test "new user must use password_confirmation on create" do
    user = build(:user, email: "blob@theblob.com", password: "password")
    user.save
    refute user.valid?
  end

  test "password and password confirmation must match" do
    user = build(:user, email: "blobtheblob.com", password: "password", password_confirmation: "passwooord")
    user.save
    refute user.valid?
  end

  test "password must be at least 8 characters" do
    user = build(:user, email: "blobtheblob.com", password: "pass", password_confirmation: "pass")
    refute user.valid?
  end

end
