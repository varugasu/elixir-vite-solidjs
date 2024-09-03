defmodule App do
  use Application

  @impl true
  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      {Bandit, plug: AppWeb.Router, scheme: :http, port: 3000}
    ]

    opts = [strategy: :one_for_one, name: MyApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
