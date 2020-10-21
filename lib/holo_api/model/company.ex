defmodule HoloApi.Model.Company do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.Model.Company
  alias HoloApi.Model.Agency

  schema "companies" do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string

    has_many :agencies, Agency

    timestamps()
  end

  def list_all() do
    Repo.all(Company)
  end

  def get_by_id(id) do
    Repo.get(Company, id)
  end
end
