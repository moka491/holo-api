defmodule HoloApiWeb.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(HoloApiWeb.Schema.CompanyType)
  import_types(HoloApiWeb.Schema.GroupType)
  import_types(HoloApiWeb.Schema.LivestreamType)
  import_types(HoloApiWeb.Schema.MediaChannelType)
  import_types(HoloApiWeb.Schema.MediaPlatformType)
  import_types(HoloApiWeb.Schema.MemberType)
  import_types(HoloApiWeb.Schema.SocialChannelType)
  import_types(HoloApiWeb.Schema.SocialPlatformType)

  query do
    import_fields(:company_queries)
    import_fields(:group_queries)
    import_fields(:livestream_queries)
    import_fields(:media_channel_queries)
    import_fields(:media_platform_queries)
    import_fields(:member_queries)
    import_fields(:social_channel_queries)
    import_fields(:social_platform_queries)
  end
end
