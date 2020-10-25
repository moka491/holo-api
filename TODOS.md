1. I'm not super happy with the company structure yet.
   The currently "Agency" betitled entity is definitely the more important entrypoint here, since
   it hosts vtuber members and groups (i.e. generations). "Company" on the other hand is just an appendix,
   and some companies that would, as of now, fall into the Agency dataset, like Kizuna AI Inc., don't even have a parent company managing them.
   It's debatable whether Kizuna AI Inc. now is a company or an agency, but since entities of the Agency dataset store the members working under them,
   and Kizuna AI Inc directly manages Kizuna AI, it should be stored as an Agency among Nijisanji and Hololive Production.

2. Next tasks on the roadmap are to update the resolvers to not load associations but use dataloader (maybe even write them inline in schema.ex because I can),
   and to write changeset validators for all ecto types. The latter brings more data integrity, but also allows the seeds to update the existing data instead of creating duplicate rows.
   Makes it much easier to roll out data updates.
