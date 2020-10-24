defmodule HoloApiWeb.Schema do
  use Absinthe.Schema

  alias HoloApi.Repo

  alias HoloApiWeb.Schema.{
    Agency,
    Company,
    Group,
    Livestream,
    MediaChannel,
    MediaPlatform,
    Member,
    SocialChannel,
    SocialPlatform
  }

  import_types(Absinthe.Type.Custom)

  # Agency
  import_types(Agency.Types)
  import_types(Agency.Queries)

  # Company
  import_types(Company.Types)
  import_types(Company.Queries)

  # Group
  import_types(Group.Types)
  import_types(Group.Queries)

  # Livestream
  import_types(Livestream.Types)
  import_types(Livestream.Queries)

  # Media Channel
  import_types(MediaChannel.Types)
  import_types(MediaChannel.Queries)

  # Media Platform
  import_types(MediaPlatform.Types)
  import_types(MediaPlatform.Queries)

  # Member
  import_types(Member.Types)
  import_types(Member.Queries)

  # Social Channel
  import_types(SocialChannel.Types)
  import_types(SocialChannel.Queries)

  # Social Platform
  import_types(SocialPlatform.Types)
  import_types(SocialPlatform.Queries)

  query do
    import_fields(:agency_queries)
    import_fields(:company_queries)
    import_fields(:group_queries)
    import_fields(:livestream_queries)
    import_fields(:media_channel_queries)
    import_fields(:media_platform_queries)
    import_fields(:member_queries)
    import_fields(:social_channel_queries)
    import_fields(:social_platform_queries)
  end

  def context(ctx) do
    loader =
      Dataloader.new()
      |> Dataloader.add_source(
        Repo,
        Dataloader.Ecto.new(Repo, query: &Repo.query/2)
      )

    Map.put(ctx, :loader, loader)
  end

  def plugins do
    [Absinthe.Middleware.Dataloader] ++ Absinthe.Plugin.defaults()
  end
end
