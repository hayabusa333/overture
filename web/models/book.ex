defmodule Overture.Book do
  use Overture.Web, :model

  schema "books" do
    field :title, :string
    field :image_url, :string
    field :read_end_date, Ecto.Date

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :image_url, :read_end_date])
    |> validate_required([:title, :image_url, :read_end_date])
  end
end
