defmodule SlimeBug.Router do
  use SlimeBug.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SlimeBug do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/form_ok", PageController, :form_ok
    get "/form_not_ok", PageController, :form_not_ok
  end

  # Other scopes may use custom stacks.
  # scope "/api", SlimeBug do
  #   pipe_through :api
  # end
end
