create user 'john_stones' identified by 'johnstones2000john';
revoke insert, update, delete on *.* from 'john_stones';
grant select on *.* to 'john_stones';