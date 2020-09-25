defmodule HoloApi.Model.Company do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Model.Member
  alias HoloApi.Model.Group
  alias HoloApi.Model.I18nString

  schema "companies" do
    belongs_to :name_i18n, I18nString

    field :website_url, :string

    has_many :members, Member
    has_many :groups, Group

    timestamps()
  end
end
