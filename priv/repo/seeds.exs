alias HoloApi.Repo
alias HoloApi.DataModel.{Company, Agency, Group, Member, GroupMember}

companies = %{
  cover:
    %Company{
      name: "Cover Corp",
      name_jp: "カバー",
      website_url: "https://cover-corp.com/"
    }
    |> Repo.insert!()
}

agencies = %{
  hololive:
    %Agency{
      name: "Hololive Production",
      name_jp: "ホロライブプロダクション",
      website_url: "https://www.hololive.tv/",
      company_id: companies.cover.id
    }
    |> Repo.insert!()
}

groups = %{
  holo_3d_talents:
    %Group{
      name: "hololive 3D Talents",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_2d_talents:
    %Group{
      name: "hololive 2D Talents",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_1st:
    %Group{
      name: "hololive 1st Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_2nd:
    %Group{
      name: "hololive 2nd Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_gamers:
    %Group{
      name: "hololive GAMERS",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_3rd:
    %Group{
      name: "hololive 3rd Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_4th:
    %Group{
      name: "hololive 4th Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_5th:
    %Group{
      name: "hololive 5th Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_inonaka_music:
    %Group{
      name: "INoNaKa MUSIC",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_china_1st:
    %Group{
      name: "hololive China 1st Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_china_2nd:
    %Group{
      name: "hololive China 2nd Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_indonesia_1st:
    %Group{
      name: "hololive Indonesia 1st Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holo_english_1st:
    %Group{
      name: "hololive English 1st Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holostars_1st:
    %Group{
      name: "Holostars 1st Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holostars_2nd:
    %Group{
      name: "Holostars 2nd Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  holostars_3rd:
    %Group{
      name: "Holostars 3rd Gen",
      name_jp: "",
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!()
}

members = %{
  tokino_sora:
    %Member{
      name: "Tokino Sora",
      name_jp: "ときのそら",
      debut_date: Date.from_iso8601!("2017-09-07"),
      birthday: Date.from_iso8601!("0004-05-15"),
      age: "20",
      gender: "Female",
      height: 160,
      zodiac: "Taurus",
      emoji: "🐻",
      nicknames: [
        "Sora",
        "Tokki~",
        "〇〇's Sora"
      ],
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  roboco:
    %Member{
      name: "Roboco",
      name_jp: "ロボ子",
      debut_date: Date.from_iso8601!("2018-03-04"),
      birthday: Date.from_iso8601!("0004-05-23"),
      age: "17",
      gender: "Female",
      height: 154,
      zodiac: "Gemini",
      emoji: "🤖",
      nicknames: [
        "Roboco"
      ],
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  sakura_miko:
    %Member{
      name: "Sakura Miko",
      name_jp: "さくらみこ",
      debut_date: Date.from_iso8601!("2018-08-01"),
      birthday: Date.from_iso8601!("0004-03-05"),
      age: "18.2",
      gender: "Female",
      height: 152,
      zodiac: "Pisces",
      emoji: "🌸",
      nicknames: [
        "Miko-chi",
        "Virtual Elite Miko",
        "Elite Miko",
        "sakuramiko35"
      ],
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  hoshimachi_suisei:
    %Member{
      name: "Hoshimachi Suisei",
      name_jp: "星街すいせい",
      debut_date: Date.from_iso8601!("2018-03-22"),
      birthday: Date.from_iso8601!("0004-03-22"),
      age: "18 (forever)",
      gender: "Female",
      height: 160,
      zodiac: "Aries",
      emoji: "☄️",
      nicknames: [
        "Sui-chan"
      ],
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!(),
  yozora_mel:
    %Member{
      name: "Yozora Mel",
      name_jp: "夜空メル",
      debut_date: Date.from_iso8601!("2018-05-13"),
      birthday: Date.from_iso8601!("0004-10-31"),
      gender: "Female",
      height: 154,
      zodiac: "Scorpio",
      emoji: "🌟",
      nicknames: [
        "Merumeru"
      ],
      agency_id: agencies.hololive.id
    }
    |> Repo.insert!()
}

group_members = %{
  tokino_sora:
    %GroupMember{
      member_id: members.tokino_sora.id,
      group_id: groups.holo_3d_talents.id
    }
    |> Repo.insert!(),
  roboco:
    %GroupMember{
      member_id: members.roboco.id,
      group_id: groups.holo_3d_talents.id
    }
    |> Repo.insert!(),
  sakura_miko:
    %GroupMember{
      member_id: members.sakura_miko.id,
      group_id: groups.holo_3d_talents.id
    }
    |> Repo.insert!(),
  hoshimachi_suisei:
    %GroupMember{
      member_id: members.hoshimachi_suisei.id,
      group_id: groups.holo_2d_talents.id
    }
    |> Repo.insert!()
}
