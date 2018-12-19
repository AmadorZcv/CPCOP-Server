defmodule CpcopServerWeb.PageController do
  use CpcopServerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
