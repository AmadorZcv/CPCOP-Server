defmodule CpcopServer.Repo do
  use Ecto.Repo,
    otp_app: :cpcop_server,
    adapter: Ecto.Adapters.Postgres
end
