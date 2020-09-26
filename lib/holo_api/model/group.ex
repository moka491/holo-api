defmodule HoloApi.Model.Group do
  use Ecto.Schema

  alias HoloApi.Model.Agency
  alias HoloApi.Model.Member

  schema "groups" do
    field :name, :string
    field :name_jp, :string

    belongs_to :agency, Agency
    many_to_many :members, Member, join_through: "group_members"

    timestamps()
  end
end
