# shell_ev
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellEv
  #  shell_ev client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    # Access to shell_api_platform_security_authentication controller.
    # @return [ShellAPIPlatformSecurityAuthenticationController] Returns the controller instance.
    def shell_api_platform_security_authentication
      @shell_api_platform_security_authentication ||= ShellAPIPlatformSecurityAuthenticationController.new @global_configuration
    end

    # Access to digital_payment_enablement controller.
    # @return [DigitalPaymentEnablementController] Returns the controller instance.
    def digital_payment_enablement
      @digital_payment_enablement ||= DigitalPaymentEnablementController.new @global_configuration
    end

    # Access to station_locator controller.
    # @return [StationLocatorController] Returns the controller instance.
    def station_locator
      @station_locator ||= StationLocatorController.new @global_configuration
    end

    # Access to fueling controller.
    # @return [FuelingController] Returns the controller instance.
    def fueling
      @fueling ||= FuelingController.new @global_configuration
    end

    # Access to partner_notification controller.
    # @return [PartnerNotificationController] Returns the controller instance.
    def partner_notification
      @partner_notification ||= PartnerNotificationController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      environment: Environment::PRODUCTION, mpp_token_credentials: nil,
      o_auth_token_post_credentials: nil, config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    environment: environment,
                    mpp_token_credentials: mpp_token_credentials,
                    o_auth_token_post_credentials: o_auth_token_post_credentials
                  )
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[MppToken oAuthTokenPost].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['MppToken'] = MppToken.new(http_client_config.mpp_token_credentials)
      @auth_managers['oAuthTokenPost'] = OAuthTokenPost.new(
        http_client_config.o_auth_token_post_credentials
      )
    end
  end
end
