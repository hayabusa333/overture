defmodule Overture.Repo.Migrations.CreateBook do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :image_url, :string
      add :read_end_date, :date

      timestamps()
    end

  end
end
