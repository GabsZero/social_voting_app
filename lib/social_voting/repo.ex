defmodule SocialVoting.Repo do
  use Ecto.Repo,
    otp_app: :social_voting,
    adapter: Ecto.Adapters.Postgres
end
