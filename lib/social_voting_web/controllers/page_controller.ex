defmodule SocialVotingWeb.PageController do
  use SocialVotingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
