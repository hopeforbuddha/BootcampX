create table assignments (
  id serial primary key not null,
  name varchar(255),
  content text,
  day integer,
  chapter integer,
  duration integer
);