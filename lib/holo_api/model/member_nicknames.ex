defmodule HoloApi.Model.MemberNickname do
  use Ecto.Schema

  alias HoloApi.Model.Member

  schema "member_nicknames" do
    field :name, :string

    belongs_to :member, Member

    timestamps()
  end
end
