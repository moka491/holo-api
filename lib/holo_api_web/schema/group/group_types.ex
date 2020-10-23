defmodule HoloApiWeb.Schema.Group.Types do
  use Absinthe.Schema.Notation

  @desc """
  A group is a subset of virtual youtubers, which are working for a company, that often collaborate together under a common name.
  An example would be FAMS, or any of the "Generations" of Hololive.
  """
  object :group do
    @desc """
    The unique ID of the group entry.
    """
    field :id, :id

    @desc """
    The international name of the group.
    """
    field :name, :string

    @desc """
    The japanese name of the group.
    """
    field :name_jp, :string

    @desc """
    The agency under which the group operates.
    """
    field :agency, :agency

    @desc """
    The agency under which the group operates.
    """
    field :members, list_of(:member)
  end
end
