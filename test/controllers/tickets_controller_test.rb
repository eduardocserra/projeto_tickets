require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get TicketTeste" do
    get tickets_TicketTeste_url
    assert_response :success
  end

  test "should get EnviarTicket" do
    get tickets_EnviarTicket_url
    assert_response :success
  end

end
