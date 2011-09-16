module OpenidConstants
  include OauthConstants

  IDENTITY_URL = "https://www.google.com/accounts/o8/site-xrds?ns=2&hd="

  OPENID_EMAIL    = "http://axschema.org/contact/email"
  OPENID_FIRST    = "http://axschema.org/namePerson/first"
  OPENID_LAST     = "http://axschema.org/namePerson/last"
  OPENID_LANGUAGE = "http://axschema.org/pref/language"


  OPENID_OPTS = {
    :required => [ OPENID_EMAIL, OPENID_FIRST, OPENID_LAST, OPENID_LANGUAGE ],
    :oauth => OAUTH_OPTS
  }

end