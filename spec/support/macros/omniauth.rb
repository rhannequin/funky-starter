module Macros
  module Omniauth
    def self.provides_mock_for(provider)
      class_eval %(
        def mock_auth_#{provider}
          OmniAuth.config.add_mock :#{provider}, uid: '12345', info: { name: '#{provider.capitalize} User', provider: :#{provider} }
        end
      )
    end

    %i(twitter facebook).each do |provider|
      provides_mock_for provider
    end

    def log_in_with_omniauth(provider)
      send :"mock_auth_#{provider}"
      visit user_omniauth_authorize_path(provider: provider)
    end
  end
end
