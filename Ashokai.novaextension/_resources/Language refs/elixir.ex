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

# Define a module
defmodule Person do
  # Define a struct
  defstruct name: "", age: 0

  # Define a function
  def create(name, age) do
    %Person{name: name, age: age}
  end

  # Define a function with pattern matching
  def get_name(%Person{name: name}) do
    name
  end

  # Define a function with guards
  def is_adult(%Person{age: age}) when age >= 18 do
    true
  end
  def is_adult(_), do: false

  # Define a private function
  defp private_function() do
    IO.puts "This is a private function."
  end
end

# Create an instance of the struct
person = Person.create("John", 25)

# Access and modify struct fields
person = %{person | name: "Jane", age: 30}

# Call functions with pattern matching
name = Person.get_name(person)
IO.puts "Name: #{name}"

# Call functions with guards
is_adult = Person.is_adult(person)
IO.puts "Is adult? #{is_adult}"

# Call a private function (will raise an error)
# Person.private_function()

# Define a module with a macro
defmodule Math do
  defmacro double(n) do
    quote do
      unquote(n) * 2
    end
  end
end

# Use the macro
result = Math.double(5)
IO.puts "Result of doubling: #{result}"

# Define a GenServer
defmodule Counter do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, 0)
  end

  def init(count) do
    {:ok, count}
  end

  def handle_call(:increment, _from, count) do
    {:reply, count + 1, count + 1}
  end
end

# Start the GenServer
{:ok, pid} = Counter.start_link

# Call the GenServer
{:ok, result} = GenServer.call(pid, :increment)
IO.puts "Result of incrementing: #{result}"
