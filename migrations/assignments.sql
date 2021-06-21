create table assignments (
  id serial primary key not null,
  name varchar(255) not null,
  content text not null,
  day integer not null,
  chapter integer not null,
  duration integer not null
);