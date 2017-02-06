defmodule Kraken.PageController do
  use Kraken.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
