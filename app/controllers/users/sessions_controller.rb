# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    prepend_before_action :verify_signed_out_user, only: [:destroy]

    private

    def verify_signed_out_user
      sign_out(current_user)
      head :ok
    end
  end
end
