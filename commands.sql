-- Создаем базу данных
create database library_guide;

-- Создаем таблицу
create table information_library(
    id serial primary key,
    author_names varchar(100) not null,
    title_of_the_work varchar(255) not null,
    the_work varchar(100) not null,
    genre_theme varchar(100) not null,
    category varchar(255) not null
);

-- Запросы к базе данных и таблицам
select author_names, genre_theme from information_library where genre_theme like '%роман%';
select author_names, title_of_the_work from information_library where author_names like '%Маргарет Митчелл%';
select title_of_the_work, category from information_library where category like '%литература%';
select author_names, title_of_the_work from information_library where title_of_the_work = 'Ветры зимы';

-- Создаем базу данных
create database human_resources_department;

-- Создаем таблицу
create table employee_information(
    id serial primary key,
    employee_full_name varchar(100) not null,
    department varchar(100) not null,
    position varchar(100) not null,
    manager_full_name varchar(100) not null,
    date date not null,
    working_time time not null,
    salary int not null
);

-- Запросы к базе данных и таблицам
select employee_full_name, department, date from employee_information where employee_full_name = 'Robert' and date = '2023-02-10';
select employee_full_name, position, date from employee_information where employee_full_name = 'Alex' and date = '2023-03-18';
select employee_full_name, date, salary from employee_information where employee_full_name = 'John' and date = '2023-03-20';
select employee_full_name, manager_full_name, date from employee_information where employee_full_name = 'Maks' and date = '2023-02-15';
select employee_full_name, manager_full_name, date from employee_information where manager_full_name = 'Джулия Браун' and date = '2023-02-10';
select employee_full_name, department, date from employee_information where date between '2023-01-01' and '2023-03-20' and employee_full_name = 'John';
select employee_full_name, position, date from employee_information where date between '2023-01-01' and '2023-03-18' and employee_full_name = 'Alex';
select employee_full_name, date, salary from employee_information where date between '2023-01-01' and '2023-03-15' and employee_full_name = 'Maks';

-- Создаем базу данных
create database accounting_for_programming_courses;

-- Создаем таблицу
create table class_schedule_information(
    id serial primary key,
    programming_group varchar(100) not null,
    lesson_topic varchar(255) not null,
    lesson_plan varchar(255) not null,
    lesson_date timestamp not null
);

-- Создаем таблицу
create table information_about_the_lesson(
    id serial primary key,
    student_full_name varchar(100) not null,
    programming_group varchar(100) not null,
    lesson_date timestamp not null,
    attendance varchar(100) not null
);

-- Создаем таблицу
create table information_group(
    id serial primary key,
    student_full_name varchar(100) not null,
    academic_performance int not null
);