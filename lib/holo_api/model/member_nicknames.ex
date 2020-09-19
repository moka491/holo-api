defmodule HoloApi.Model.MemberNickname do
  use Ecto.Schema

  schema "member_nicknames" do
    field :name, :string

    timestamps()
  end
end
