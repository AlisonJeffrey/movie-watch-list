Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # List all watchlists
  # Show one watchlist
  # Create a watchlist
  resources :lists, only: [:index, :show, :new, :create]
  # Add bookmark to list
  # Delete bookmark from list
end

# LISTS:
# A user can see all the lists
# GET "lists"
# A user can see the details of a given list and its name
# GET "lists/42"
# A user can create a new list
# GET "lists/new"
# POST "lists"

# BOOKMARKS:
# A user can add a new bookmark (movie/list pair) to an existing list
# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
# A user can delete a bookmark from a list. How can we make a delete link again?
# DELETE "bookmarks/25"
