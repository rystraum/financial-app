FinancialApp::Application.routes.draw do
  root to: 'projects#index'
  resources :projects do
	  resources :expenses
	end
end
