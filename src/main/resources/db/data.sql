insert into user_tb(username, password, fullname, created_at) values ('ssar', '1234', '쌀', now());
insert into user_tb(username, password, fullname, created_at) values ('cos', '1234', '코스', now());
insert into user_tb(username, password, fullname, created_at) values ('love', '1234', '러브', now());

insert into account_tb(user_id, number, password, balance, status, created_at) values (1, '1111', '1111', '1000', true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (1, '1112', '1112', '1000', true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (2, '2222', '2222', '1000', true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (2, '2221', '2221', '1000', true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (3, '3333', '3333', '1000', true, now());
insert into account_tb(user_id, number, password, balance, status, created_at) values (3, '3331', '3331', '1000', true, now());

insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (1, 3, 100, 1100, 900, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (3, 1, 100, 1000, 1000, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (1, 4, 100, 1100, 900, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (4, 1, 100, 1000, 1000, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (1, 5, 100, 1100, 900, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (5, 1, 100, 1000, 1000, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (1, 6, 100, 1100, 900, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (6, 1, 100, 1000, 1000, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (6, 3, 100, 1100, 900, now());
insert into history_tb(sender_id, receiver_id, amount, receiver_balance, sender_balance, created_at)
values (3, 6, 100, 1000, 1000, now());