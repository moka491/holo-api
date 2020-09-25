defmodule HoloApi.Model.Agency do
  use Ecto.Schema

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
end
