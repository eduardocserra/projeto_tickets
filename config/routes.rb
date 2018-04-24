Rails.application.routes.draw do
  get 'tickets/ticket' => 'tickets#TicketTeste'
  post 'tickets/ticket' => 'tickets#EnviarTicket', :as => 'enviarticket'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
