defmodule HoloApi.DataModel.Group do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.DataModel.Group
  alias HoloApi.DataModel.Agency
  alias HoloApi.DataModel.Member

  schema "groups" do
    field :name, :string
    field :name_jp, :string

    belongs_to :agency, Agency
    many_to_many :members, Member, join_through: "group_members"

    timestamps()
  end

  def list_all() do
    Repo.all(Group)
  end

  def get_by_id(id) do
    Repo.get(Group, id)
  end
end
