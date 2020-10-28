defmodule HoloApi.DataModel.Company do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.Company
  alias HoloApi.DataModel.Agency

  schema "companies" do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string

    has_many :agencies, Agency

    timestamps()
  end

  def changeset(company, params \\ %{}) do
    company
    |> cast(params, [:name, :name_jp, :website_url])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end

  def list_all() do
    Repo.all(Company)
    |> Repo.preload(:agencies)
  end

  def get_by_id(id) do
    Repo.get(Company, id)
    |> Repo.preload(:agencies)
  end
end
