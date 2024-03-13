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

create table tu_user
(
    id      bigint not null
        primary key,
    contact varchar(255),
    name    varchar(255)
);

create table tu_team_member
(
    user_id bigint not null,
    id      uuid   not null
        primary key,
    team_id uuid   not null,
    foreign key (user_id) references tu_user (id),
    foreign key (team_id) references tu_team (id)
);


create sequence tu_user_seq
    increment by 1 cache 50;