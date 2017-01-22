defmodule Overture.Repo.Migrations.AddUserNameToBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :user_id, :integer
      add :user_name, :string
    end
  end
end
