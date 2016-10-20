ExUnit.start

Mix.Task.run "ecto.create", ~w(-r SamplePhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r SamplePhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(SamplePhoenix.Repo)

