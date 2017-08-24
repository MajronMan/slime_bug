defmodule SlimeBug.PageController do
  use SlimeBug.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def form_ok(conn, _params) do
    render conn, "form_ok.html"
  end

  def form_not_ok(conn, _params) do
    render conn, "form_not_ok.html"
  end
end
