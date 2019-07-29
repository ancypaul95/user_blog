# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    append_before_action :verify_signed_out_user, only: [:destroy]

    private # Overwriting the sign_out redirect path method

    def after_sign_out_path_for(_resource)
      root_path
    end
  end
end
