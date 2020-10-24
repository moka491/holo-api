defmodule HoloApi.DataModel.MemberNickname do
  use Ecto.Schema

  alias HoloApi.DataModel.Member

  schema "member_nicknames" do
    field :nickname, :string

    belongs_to :member, Member

    timestamps()
  end
end
