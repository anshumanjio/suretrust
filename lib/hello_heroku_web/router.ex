defmodule HelloHerokuWeb.Router do
  use HelloHerokuWeb, :router
  use Pow.Phoenix.Router

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

  scope "/" do
    pipe_through :browser

    pow_routes()
  end

  scope "/", HelloHerokuWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/show", PageController, :show
    get "/about-us", PageController, :about_us
    get "/blog-index", PageController, :blog_index
    get "/blog-masonry", PageController, :blog_masonry
    get "/contact", PageController, :contact
    get "/index-home2", PageController, :index_home2
    get "/index-home3", PageController, :index_home3
    get "/index-infinite_2", PageController, :index_infinite_2
    get "/portfolio-grid", PageController, :portfolio_grid
    get "/portfolio-single", PageController, :portfolio_single
    get "/portfolio", PageController, :portfolio
    get "/services", PageController, :services
    get "/single-post", PageController, :single_post

    resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloHerokuWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: HelloHerokuWeb.Telemetry
    end
  end
end
