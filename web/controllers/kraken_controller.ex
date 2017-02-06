defmodule Kraken.KrakenController do
  use Kraken.Web, :controller

  def index(conn, _params) do
    case HTTPoison.get("https://www.googleapis.com/pagespeedonline/v2/runPagespeed?url=http%3A%2F%2Fwww.smh.com.au&screenshot=false&strategy=mobile&key=") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        Poison.Parser.parse!(body) |> IO.inspect
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end
    render conn, "index.html"
  end
end
