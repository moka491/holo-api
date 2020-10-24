defmodule HoloApiWeb.Schema.Agency.Types do
  use Absinthe.Schema.Notation
  import Absinthe.Resolution.Helpers, only: [dataloader: 1]

  @desc """
  An agency is a subbranch of a company that employs virtual youtuber talents.
  """
  object :agency do
    @desc """
    The unique ID of the agency entry.
    """
    field :id, :id

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
    field :members, list_of(:member), resolve: dataloader(HoloApi.Repo)

    @desc """
    The groups in which the members of the agency are categorized.
    """
    field :groups, list_of(:group), resolve: dataloader(HoloApi.Repo)
  end
end
