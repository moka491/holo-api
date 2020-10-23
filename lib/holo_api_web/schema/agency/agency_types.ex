defmodule HoloApiWeb.Schema.Agency.Types do
  use Absinthe.Schema.Notation

  @desc """
  An agency is a subbranch of a company that employs virtual youtuber talents.
  """
  object :agency do
    @desc """
    The international name of the agency.
    """
    field :name, :string

    @desc """
    The japanese name of the agency.
    """
    field :name_jp, :string

    @desc """
    The official website of the agency.
    """
    field :website_url, :string

    @desc """
    The company which owns the agency.
    """
    field :company, :company

    @desc """
    The members which are employed in the agency.
    """
    field :members, list_of(:member)

    @desc """
    The groups in which the members of the agency are categorized.
    """
    field :groups, list_of(:group)
  end
end
