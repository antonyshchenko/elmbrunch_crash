defmodule ElmbrunchCrash.Web.PageController do
  use ElmbrunchCrash.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
