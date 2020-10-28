import Seedex

alias HoloApi.DataModel.Member

seed(Member, [
  %{
    id: 1,
    name: "Oozora Subaru",
    name_jp: "大空スバル",
    debut_date: DateTime.from_unix!(0),
    height: 154,
    gender: "Female",
    zodiac: "Cancer",
    emoji: "🚑",
    nicknames: [
      "Subaru",
      "Subachi",
      "Subatani Subao"
    ],
    agency_id: 1
  }
])
