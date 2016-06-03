Rails.application.routes.draw do
  Rails.application.routes.draw do get 'invoices/all' => 'invoice#index' end
  Rails.application.routes.draw do get 'invoices/new' => 'invoice#create' end
end
