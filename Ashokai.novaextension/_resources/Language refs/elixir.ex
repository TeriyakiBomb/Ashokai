defmodule LearningPhoenix.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LearningPhoenixWeb.Telemetry,
      LearningPhoenix.Repo,
      {DNSCluster, query: Application.get_env(:learningPhoenix, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: LearningPhoenix.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: LearningPhoenix.Finch},
      # Start a worker by calling: LearningPhoenix.Worker.start_link(arg)
      # {LearningPhoenix.Worker, arg},
      # Start to serve requests, typically the last entry
      LearningPhoenixWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LearningPhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LearningPhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
