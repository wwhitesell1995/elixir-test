
use Mix.Config


# Configure your database
config :catcasts, Catcasts.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "brianemory", # change brianemory to the name of your home directory
  password: "",
  database: "catcasts_dev",
  hostname: "localhost",
  pool_size: 10
