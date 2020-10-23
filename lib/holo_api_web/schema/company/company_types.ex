defmodule HoloApiWeb.Schema.Company.Types do
  use Absinthe.Schema.Notation

  @desc """
  A company defines an organization that owns one or multiple virtual youtuber agencies.
  """
  object :company do
    @desc """
    The unique ID of the company entry.
    """
    field :id, :id

    @desc """
    The international name of the company.
    """
    field :name, :string

    @desc """
    The japanese name of the company.
    """
    field :name_jp, :string

    @desc """
    The official website of the company.
    """
    field :website_url, :string

    @desc """
    The agencies which are operated by the company.
    """
    field :agencies, list_of(:agency)
  end
end
