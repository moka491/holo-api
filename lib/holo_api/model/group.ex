defmodule HoloApi.Model.Group do
  use Ecto.Schema

  alias HoloApi.Model.Company
  alias HoloApi.Model.Member
  alias HoloApi.Model.I18nString

  schema "groups" do
    belongs_to :name_i18n, I18nString
    belongs_to :company, Company
    many_to_many :members, Member, join_through: "group_members"

    timestamps()
  end
end
