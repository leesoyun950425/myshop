create database myshop;
 
use myshop;

 create table product(
    -> pnum int not null auto_increment primary key,
    -> pid text not null,
    -> ptitle text not null,
    -> pcontent text not null,
    -> price text not null);