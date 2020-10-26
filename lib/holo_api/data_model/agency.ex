defmodule HoloApi.DataModel.Agency do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.DataModel.Agency
  alias HoloApi.DataModel.Member
  alias HoloApi.DataModel.Group
  alias HoloApi.DataModel.Company

  schema "agencies" do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string

    belongs_to :company, Company

    has_many :members, Member
    has_many :groups, Group

    timestamps()
  end

  def list_all() do
    Repo.all(Agency)
  end

  def get_by_id(id) do
    Repo.get(Agency, id)
  end
end
