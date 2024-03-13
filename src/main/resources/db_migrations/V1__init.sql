create table tu_team
(
    max_spots  integer,
    created_by uuid,
    id         uuid not null
        primary key,
    category   varchar(255),
    date_time  varchar(255),
    location   varchar(255)
);

create table tu_team_member
(
    user_id bigint not null
        constraint fkip5f5wy683cn8cppnq8knn9gh
            references tu_user,
    id      uuid   not null
        primary key,
    team_id uuid   not null
        constraint fkg96mqbb9vo7lx4ht17pn92lq1
            references tu_team
);

alter table tu_team_member
    owner to "teamUp";

alter table tu_team
    owner to "teamUp";

create table tu_user
(
    id      bigint not null
        primary key,
    contact varchar(255),
    name    varchar(255)
);

alter table tu_user
    owner to "teamUp";


create sequence tu_user_seq
    increment by 1 cache 50;