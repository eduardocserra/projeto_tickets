class TicketsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def TicketTeste

  end

  def EnviarTicket
    response = RestClient.post 'http://10.1.2.242/osticket/upload/api/http.php/tickets.json',
                               {'alert': true,
                                'autorespond': true,
                                'source': 'API',
                                'name': ticket_params[:name],
                                'email': ticket_params[:email],
                                'subject': ticket_params[:subject],
                                'ip': '10.1.10.221',
                                'message': ticket_params[:message],
                                'topicId': 13
                               }.to_json, {'X-API-KEY': ENV['API-KEY']}
  end
  private
  def ticket_params
    params.permit(:utf8, :authenticity_token, :commit, :name, :email, :subject, :message, :topic)
  end
end