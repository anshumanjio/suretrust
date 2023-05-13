defmodule SureTrustWeb.PageController do
  use SureTrustWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, _params) do
    render(conn, "show.html")
  end

  def about_us(conn, _params) do
    render(conn, "about-us.html")
  end

  def blog_index(conn, _params) do
    render(conn, "blog-index.html")
  end

  def blog_masonry(conn, _params) do
    render(conn, "blog-masonry.html")
  end

  def contact(conn, _params) do
    render(conn, "contact.html")
  end

  def index_home2(conn, _params) do
    render(conn, "index-home2.html")
  end

  def index_home3(conn, _params) do
    render(conn, "index-home3.html")
  end

  def index_infinite_2(conn, _params) do
    render(conn, "index-infinite-2.html")
  end

  def portfolio_grid(conn, _params) do
    render(conn, "portfolio-grid.html")
  end

  def portfolio_single(conn, _params) do
    render(conn, "portfolio_single.html")
  end

  def portfolio(conn, _params) do
    render(conn, "portfolio.html")
  end

  def services(conn, _params) do
    render(conn, "services.html")
  end

  def single_post(conn, _params) do
    render(conn, "single-post.html")
  end

end
