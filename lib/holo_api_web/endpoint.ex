defmodule HoloApiWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :holo_api

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  @session_options [
    store: :cookie,
    key: "_holo_api_key",
    signing_salt: "FJvZT/S9"
  ]

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.CodeReloader
    plug Phoenix.Ecto.CheckRepoStatus, otp_app: :holo_api
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options

  if Mix.env() == :dev do
    plug Absinthe.Plug.GraphiQL,
      schema: HoloApiWeb.Schema,
      json_codec: Jason,
      interface: :playground
  else
    plug Absinthe.Plug,
      schema: HoloApiWeb.Schema,
      json_codec: Jason
  end
end
