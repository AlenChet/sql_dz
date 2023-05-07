insert into categories (name)
values ('Rock'), ('Alternative'), ('Pop');

insert into singer (name_singer)
values ('Агата Кристи'), ('Анимал Джаз'), ('Киркоров'), ('Green day');

insert into categoriessinger (categories_id, singer_id)
values (10, 1), (11, 2), (12, 3), (10, 4);

insert into album (name_album, year)
values ('Декоданс', 1991), ('Шаг вдох', 2007), ('Незнакомка', 2003), ('Nimrod', 1997);

insert into album (name_album, year)
values ('Время любить', 2019)


insert into albumsinger (album_id, singer_id)
values (1, 1), (2, 2), (3, 3), (4, 4), (5, 2);


insert into track (name_track, duration, album_id)
values ('Беглец', 207, 1), ('Кошка', 153, 1), ('Думать дважды', 419, 2), ('Ответ нет', 329, 2),
('Дай огня детка', 238, 3), ('Worry rock', 147, 4), ('Jinx', 132, 4);

insert into track (name_track, duration, album_id)
values ('Мистика', 227, 5)

update track
set name_track = 'Мой беглец'
where track_id = 1;


insert into collection (name_collection, year)
values ('Rock collecteion', 1990), ('Russian Alternative', 2000), ('Pop collection', 2000),
('Pop rock', 1990);

update collection 
set year = '2020'
where collection_id = 2;

insert into collectiontrack (collection_id, track_id)
values (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (4, 6), (4, 7);

insert into collectiontrack (collection_id, track_id)
values (1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (4, 6), (4, 7);

