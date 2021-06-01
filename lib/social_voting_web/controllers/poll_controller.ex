defmodule SocialVotingWeb.PollController do
  use SocialVotingWeb, :controller

  def index(conn, _params) do
    poll = %{
      title: "My first poll",
      options: [
        {"Choice 1", 0},
        {"Choice 2", 5},
        {"Choice 3", 2},
      ]
    }
    conn
    |> render("index.html", poll: poll)
  end

end
