defmodule HoloApi.Model.Agency do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.Model.Agency
  alias HoloApi.Model.Member
  alias HoloApi.Model.Group
  alias HoloApi.Model.Company

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
