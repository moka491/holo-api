defmodule HoloApi.Model.I18nString do
  use Ecto.Schema

  schema "i18n_strings" do
    field :string_jp, :string
    field :string_en, :string

    timestamps()
  end
end
