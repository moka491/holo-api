defmodule HoloApi.Repo.Migrations.CreateI18nStrings do
  use Ecto.Migration

  def change do
    create table(:i18n_strings) do
      add(:string_jp, :string)
      add(:string_en, :string)
      timestamps()
    end
  end
end
