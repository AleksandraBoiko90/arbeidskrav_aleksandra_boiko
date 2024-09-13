CREATE DATABASE IF NOT EXISTS aleksandra_boiko;
use aleksandra_boiko;


DROP table if exists talks;
DROP table if exists speakers;
CREATE TABLE if not exists speakers(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	phone_number VARCHAR(50),
	bio TEXT,
	company VARCHAR(50)
);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Alvie',
		'Earthfield',
		'aearthfield0@bizjournals.com',
		'Male',
		'653-816-7277',
		'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',
		'Schumm, Morar and Schimmel'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Marleah',
		'Wroughton',
		'mwroughton1@squidoo.com',
		'Female',
		'224-755-4860',
		'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',
		'Dickinson, Klein and Corwin'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Flem',
		'Deares',
		'fdeares2@netlog.com',
		'Polygender',
		'838-662-0779',
		'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.',
		'Wolff, Rice and Prosacco'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Jarid',
		'Lockhart',
		'jlockhart3@cornell.edu',
		'Bigender',
		'161-404-5336',
		'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',
		'Lesch and Sons'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Bondie',
		'Rivaland',
		'brivaland4@berkeley.edu',
		'Male',
		'919-496-0329',
		'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',
		'Kertzmann, Sporer and Walter'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Osmund',
		'Tow',
		'otow5@angelfire.com',
		'Male',
		'935-478-0047',
		'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.',
		'Stamm, Stracke and McClure'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Lyon',
		'Heijnen',
		'lheijnen6@ebay.com',
		'Male',
		'699-232-7437',
		'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',
		'Lemke, Doyle and Little'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Lanita',
		'de Wilde',
		'ldewilde7@xing.com',
		'Female',
		'506-178-7845',
		'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',
		'Donnelly, Marquardt and Bashirian'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Cari',
		'Rootes',
		'crootes8@mediafire.com',
		'Bigender',
		'955-272-2265',
		'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',
		'Nitzsche-Kunde'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Burton',
		'Sandars',
		'bsandars9@dagondesign.com',
		'Male',
		'927-730-8650',
		'Fusce consequat. Nulla nisl. Nunc nisl.',
		'McLaughlin Group'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Kalinda',
		'Gresham',
		'kgreshama@dagondesign.com',
		'Female',
		'758-762-8004',
		'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',
		'Kuphal and Sons'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Jorey',
		'Abrams',
		'jabramsb@shinystat.com',
		'Female',
		'388-194-7458',
		'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.',
		'Kihn LLC'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Rosalind',
		'Leaton',
		'rleatonc@merriam-webster.com',
		'Female',
		'447-320-3678',
		'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',
		'Quitzon-Boyer'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Montague',
		'Vanelli',
		'mvanellid@alibaba.com',
		'Polygender',
		'537-269-6358',
		'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',
		'Maggio-Dietrich'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Friedrich',
		'Ellerington',
		'felleringtone@oakley.com',
		'Male',
		'361-791-4338',
		'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.',
		'Kertzmann Group'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Ludovico',
		'Ferryn',
		'lferrynf@mozilla.org',
		'Male',
		'824-895-5384',
		'Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',
		'Fisher-Ullrich'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Ashlin',
		'Beumant',
		'abeumantg@weather.com',
		'Male',
		'806-696-0020',
		'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.',
		'Zboncak, Keeling and Jacobson'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Quintin',
		'O''Duilleain',
		'qoduilleainh@cmu.edu',
		'Male',
		'716-857-3235',
		'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',
		'Rempel Inc'
	);
insert into speakers (
		first_name,
		last_name,
		email,
		gender,
		phone_number,
		bio,
		company
	)
values (
		'Vassily',
		'Philippard',
		'vphilippardi@vk.com',
		'Male',
		'859-834-9164',
		'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',
		'VonRueden, Ryan and Wilderman'
	);




DROP table if exists rooms;
CREATE TABLE if not exists rooms(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id),
	number int,
	description VARCHAR(500)
);

insert into rooms (number, description) values (1, 'room #1');
insert into rooms (number, description) values (2, 'room #2');
insert into rooms (number, description) values (3, 'room #3');
insert into rooms (number, description) values (4, 'room #4');
insert into rooms (number, description) values (5, 'room #5');
insert into rooms (number, description) values (6, 'room #6');
insert into rooms (number, description) values (7, 'room #7');



CREATE TABLE if not exists talks(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id),
	speaker_id int,
	room_id int,
	time datetime,
	topic varchar(50),
	
    FOREIGN KEY (speaker_id) REFERENCES speakers(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id) ,
	CONSTRAINT  uq_talks_room_time UNIQUE KEY (room_id,`time`) ,
	CONSTRAINT  uq_talks_speaker_time UNIQUE KEY (speaker_id,`time`)
);
