defmodule SureTrust.Repo do
  use Ecto.Repo,
    otp_app: :sure_trust,
    adapter: Ecto.Adapters.Postgres
end
