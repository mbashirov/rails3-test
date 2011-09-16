class SessionsController < ApplicationController
  include OpenidConstants
  include OpenIdAuthentication

  def new

  end

  def create
    logger.debug "---------------#{params[:domain]}"
    open_id_authentication(params[:domain])
  end

  def destroy
    reset_session
    redirect_back_or_default(root_path)
  end

  protected

  def open_id_authentication(domain=nil)
    domain = "" if domain.nil?
    complete_identity_url = IDENTITY_URL + domain
    logger.debug "--------0"
    authenticate_with_open_id(complete_identity_url, OPENID_OPTS) do |openid_result, identity_url, registration|
      logger.debug "--------1"
      if openid_result.successful?
        logger.debug "--------2"
        matches = /\/a\/(.*)\/o8/.match(params["openid.op_endpoint"])
        google_domain = matches[1] if matches[1]
	      redirect_back_or_default(pm_root_path)
      else
        redirect_to root_path
      end
    end
  end
end