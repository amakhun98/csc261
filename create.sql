create table users (
	id int(11) primary key auto_increment NOT NULL,
	username text NOT NULL,
	password text NOT NULL
);

create table topic (
	id int(11) primary key auto_increment NOT NULL,
	topic_name text NOT NULL
);

create table posts (
	id int(11) primary key auto_increment NOT NULL,
	title text NOT NULL,
	topic_id int(11) NOT NULL,
	posted_by int(11) NOT NULL,
	date_created timestamp NOT NULL,
	FOREIGN KEY (topic_id) REFERENCES topic(id),
	FOREIGN KEY (posted_by) REFERENCES users(id)
);

create table comments (
	id int(11) primary key auto_increment NOT NULL,
	message text NOT NULL,
	post_id int(11) NOT NULL,
	commented_by int(11) NOT NULL,
	date_created timestamp NOT NULL,
	FOREIGN KEY (post_id) REFERENCES posts(id),
	FOREIGN KEY (commented_by) REFERENCES users(id)
);
