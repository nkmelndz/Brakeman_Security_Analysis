
class UsersController < ApplicationController
  def show
    # Vulnerable to SQL Injection
    @user = User.find_by_sql("SELECT * FROM users WHERE id = #{params[:id]}")
  end
end
