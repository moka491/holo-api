defmodule HoloApi.DataModel.Company do
  use Ecto.Schema

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

  def list_all() do
    Repo.all(Company)
    |> Repo.preload(:agencies)
  end

  def get_by_id(id) do
    Repo.get(Company, id)
    |> Repo.preload(:agencies)
  end
end
