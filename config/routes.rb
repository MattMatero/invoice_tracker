Rails.application.routes.draw do
  root 'invoice#index'
  devise_for :users
  Rails.application.routes.draw do get 'invoices/all' => 'invoice#index' end
  Rails.application.routes.draw do get 'invoices/new' => 'invoice#create' end
  Rails.application.routes.draw do post 'invoices/new' => 'invoice#create' end  
end
