Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shibboleth, {
    :uid_field                 => "eppn",
    :name_field                => "displayName",
    :info_fields => {
      :email    => "mail",
      :location => "contactAddress",
      :image    => "photo_url",
      :phone    => "contactPhone"
    }
  }
end
