class ApplicationController < ActionController::Base
  #クロスサイトリクエストフォージェリ (CSRF)への対応策のコード
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  #deviseコントローラーを使用するときにのみ処理をする
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  endend
  end
end