import Seedex

alias HoloApi.DataModel.{Company, Agency, Group, Member}

companies = %{
  cover: %{
    id: 1,
    name: "Cover Corp",
    name_jp: "カバー",
    website_url: "https://cover-corp.com/"
  }
}

agencies = %{
  hololive: %{
    id: 1,
    name: "Hololive Production",
    name_jp: "ホロライブプロダクション",
    website_url: "https://www.hololive.tv/",
    company_id: 1
  }
}

groups = %{
  holo_3d_talents: %{
    id: 1,
    name: "hololive 3D Talents",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_2d_talents: %{
    id: 2,
    name: "hololive 2D Talents",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_1st: %{
    id: 3,
    name: "hololive 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_2nd: %{
    id: 4,
    name: "hololive 2nd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_gamers: %{
    id: 5,
    name: "hololive GAMERS",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_3rd: %{
    id: 6,
    name: "hololive 3rd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_4th: %{
    id: 7,
    name: "hololive 4th Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_5th: %{
    id: 8,
    name: "hololive 5th Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_inonaka_music: %{
    id: 9,
    name: "INoNaKa MUSIC",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_china_1st: %{
    id: 10,
    name: "hololive China 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_china_2nd: %{
    id: 11,
    name: "hololive China 2nd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_indonesia_1st: %{
    id: 12,
    name: "hololive Indonesia 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_english_1st: %{
    id: 13,
    name: "hololive English 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holostars_1st: %{
    id: 14,
    name: "Holostars 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holostars_2nd: %{
    id: 15,
    name: "Holostars 2nd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holostars_3rd: %{
    id: 16,
    name: "Holostars 3rd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  }
}

members = %{
  subaru: %{
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
    agency_id: agencies.hololive.id
  }
}

seed(Company, Map.values(companies))
seed(Agency, Map.values(agencies))
seed(Group, Map.values(groups))
seed(Member, Map.values(members))
