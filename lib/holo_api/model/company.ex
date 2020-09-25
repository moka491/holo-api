defmodule HoloApi.Model.Company do
  use Ecto.Schema

  alias HoloApi.Model.Agency
  alias HoloApi.Model.Member
  alias HoloApi.Model.Group
  alias HoloApi.Model.I18nString

  schema "companies" do
    field :website_url, :string

    belongs_to :name_i18n, I18nString

    has_many :agencies, Agency
    has_many :members, Member
    has_many :groups, Group

    timestamps()
  end
end
