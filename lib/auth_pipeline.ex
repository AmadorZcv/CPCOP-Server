defmodule CpcopServer.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :CpcopServer,
    module: CpcopServer.Guardian,
    error_handler: CpcopServer.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
