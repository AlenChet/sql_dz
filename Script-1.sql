create table if not exists Employee (
	employee_id SERIAL primary key,
	name VARCHAR(120) not null,
	departament VARCHAR(120),
	boss_id integer references Employee(employee_id)
);
