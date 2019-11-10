
    CREATE SCHEMA api;

	CREATE TABLE api.book1x (
		sl serial primary key,
		id uuid not null,
  		name text not null,
		phone text not null,
		email text
	);

	CREATE TABLE api.book2x (
		sl serial primary key,
		id uuid not null,
  		name text not null,
		phone text not null,
		email text
	);

	CREATE TABLE api.book3x (
		sl serial primary key,
		id uuid not null,
  		name text not null,
		phone text not null,
		email text
	);

	CREATE TABLE api.book4x (
		sl serial primary key,
		id uuid not null,
  		name text not null,
		phone text not null,
		email text
	);

	CREATE TABLE api.book5x (
		sl serial primary key,
		id uuid not null,
  		name text not null,
		phone text not null,
		email text
	);

	CREATE TABLE api.book6x (
		sl serial primary key,
		id uuid not null,
  		name text not null,
		phone text not null,
		email text
	);

	create role web_anon nologin;
	grant usage on schema api to web_anon;
	grant ALL on api.book1x to web_anon;
	grant ALL on api.book2x to web_anon;
	grant ALL on api.book3x to web_anon;
	grant ALL on api.book4x to web_anon;
	grant ALL on api.book5x to web_anon;
	grant ALL on api.book6x to web_anon;

	create role authenticator noinherit login password 'fu11motion';

	grant web_anon to authenticator;

curl http://localhost:3000/book1x -X POST \
    -H "Content-Type: application/json" \
    -d '{
        "name": "Christo Sabu",
        "phone": "8913544312",
        "email": "me@me.in"
        "id": "f42345434-1f20-4646-b707-f2ff40f1d141"
        }'

curl -X GET http://localhost:3000/book1x?'id=uuid_generate_v4()'&name=ChristoSabu&phone=9496873452