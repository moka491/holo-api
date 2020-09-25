defmodule HoloApi.Model.Agency do
  use Ecto.Schema

  alias HoloApi.Model.Member
  alias HoloApi.Model.Group
  alias HoloApi.Model.Company
  alias HoloApi.Model.I18nString

  schema "agencies" do
    field :website_url, :string

    belongs_to :name_i18n, I18nString
    belongs_to :company, Company

    has_many :members, Member
    has_many :groups, Group

    timestamps()
  end
end
