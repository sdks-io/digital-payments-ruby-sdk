# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class FuelingControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.fueling
    @response_catcher = @controller.http_call_back
  end

  # The Digital Payments Service enables 3rd Parties to trigger the refuel process which, if successful, will unlock a pump/nozzle ready for fuelling. Enables a 3rd party to request an access token to start using fueling.
  #   APIs
  def test_mpp_token
    # Parameters for the API call
    grant_type = 'client_credentials'
    client_id = 'b2bmpp-cli'
    client_secret = 'f20935d8f14a44bd1f0923cc4c4fa63f7b25922330cd5080f735f1a2769ece77ce245cfe8ba4cbd2a58544ee5113c200b8e37a7be33311e4b6f3c785bf3f37d2'

    # Perform the API call through the SDK function
    result = @controller.mpp_token(grant_type, client_id, client_secret)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Enables a partner user to cancel pump reservation from the App
  def test_mpp_cancel_fueling
    # Parameters for the API call
    mpp_transaction_id = '000000001C48'

    # Perform the API call through the SDK function
    @controller.mpp_cancel_fueling(mpp_transaction_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

  # Enables a partner user to cancel pump reservation from the App
  def test_mpp_cancel_fueling1
    # Parameters for the API call
    mpp_transaction_id = '000000001C48'

    # Perform the API call through the SDK function
    @controller.mpp_cancel_fueling(mpp_transaction_id)

    # Test response code
    assert_equal(204, @response_catcher.response.status_code)
  end

end