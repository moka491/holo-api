defmodule HoloApi.Model.Group do
  use Ecto.Schema

  alias HoloApi.Model.Company
  alias HoloApi.Model.Member

  schema "groups" do
    field :name_jp, :string
    field :name_en, :string

    belongs_to :company, Company
    many_to_many :members, Member, join_through: "group_members"

    timestamps()
  end
end
