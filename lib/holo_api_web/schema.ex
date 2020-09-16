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
  end
end
