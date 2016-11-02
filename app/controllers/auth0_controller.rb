class Auth0Controller < ApplicationController
  def callback
    session[:userinfo] = request.env['omniauth.auth']

    # Redirect to the URL you want after successful auth
    redirect_to '/dashboard'
  end

  def failure
    @error_type = request.params['error_type']
    @error_msg = request.params['error_msg']
    # TODO show a failure page or redirect to an error page
  end
end
