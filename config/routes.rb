Rails.application.routes.draw do
  # List all watchlists
  # Show one watchlist
  # Create a watchlist
  # Add bookmark to list
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
  # Delete bookmark from list
  resources :bookmarks, only: [:destroy]
end
