FinancialApp::Application.routes.draw do
  root to: 'projects#index'
  resources :projects do
	  resources :expenses, only: [:new, :edit, :update, :destroy]
	end
end
