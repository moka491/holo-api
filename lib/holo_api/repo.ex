defmodule HoloApi.Repo do
  use Ecto.Repo,
    otp_app: :holo_api,
    adapter: Ecto.Adapters.Postgres

  def query(queryable, _params) do
    queryable
  end
end
