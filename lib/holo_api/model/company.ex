defmodule HoloApi.Model.Company do
  use Ecto.Schema

  alias HoloApi.Model.Member
  alias HoloApi.Model.Group

  schema "companies" do
    field :name_jp, :string
    field :name_en, :string
    field :website_url, :string

    has_many :members, Member
    has_many :groups, Group

    timestamps()
  end
end
