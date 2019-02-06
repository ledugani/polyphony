-------- Users Table --------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('users'))
BEGIN;
    DROP TABLE [users];
END;
GO

CREATE TABLE [users] (
    [first_name] VARCHAR(255) NULL,
    [last_name] VARCHAR(255) NULL,
    [email] VARCHAR(255) NULL,
    [username] VARCHAR(255) NOT NULL,
    [isActive] INTEGER NULL,
    [firebaseId] VARCHAR(50) NULL,
    PRIMARY KEY ([username])
);
GO

insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Joshuah', 'Collier', 'jcollier0@wiley.com', 'jcollier0', 0, 17);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Dav', 'Comelli', 'dcomelli1@yelp.com', 'dcomelli1', 0, 55);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Jerrylee', 'Kenrick', 'jkenrick2@creativecommons.org', 'jkenrick2', 1, 50);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Brandais', 'Kunzelmann', 'bkunzelmann3@latimes.com', 'bkunzelmann3', 1, 33);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Chaddie', 'Rosencrantz', 'crosencrantz4@vistaprint.com', 'crosencrantz4', 1, 78);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Eunice', 'Sharrock', 'esharrock5@t-online.de', 'esharrock5', 0, 2);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Elbert', 'Winckles', 'ewinckles6@sina.com.cn', 'ewinckles6', 1, 2);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Gerti', 'Esp', 'gesp7@newyorker.com', 'gesp7', 0, 37);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Jocelyne', 'Rosenbaum', 'jrosenbaum8@dot.gov', 'jrosenbaum8', 1, 25);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Batsheva', 'Olenikov', 'bolenikov9@unc.edu', 'bolenikov9', 1, 20);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Fredrick', 'Allanby', 'fallanbya@macromedia.com', 'fallanbya', 1, 42);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Samuele', 'Gallafant', 'sgallafantb@hp.com', 'sgallafantb', 1, 91);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Fredric', 'Jephson', 'fjephsonc@microsoft.com', 'fjephsonc', 1, 23);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Dominica', 'Escreet', 'descreetd@twitter.com', 'descreetd', 0, 77);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Charlena', 'Biers', 'cbierse@mapy.cz', 'cbierse', 0, 30);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Rosy', 'Ricciardelli', 'rricciardellif@umich.edu', 'rricciardellif', 1, 67);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Nichole', 'Brockton', 'nbrocktong@businessinsider.com', 'nbrocktong', 1, 56);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Cassandra', 'Rooze', 'croozeh@usatoday.com', 'croozeh', 1, 47);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Amalle', 'Barwood', 'abarwoodi@uiuc.edu', 'abarwoodi', 1, 16);
insert into users (first_name, last_name, email, username, isActive, firebaseId) values ('Scott', 'Waterstone', 'swaterstonej@timesonline.co.uk', 'swaterstonej', 1, 17);


------- Artist Table --------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('artist'))
BEGIN;
    DROP TABLE [artist];
END;
GO

CREATE TABLE [artist] (
    [artistid] INTEGER NOT NULL IDENTITY(1,1),
    [username] VARCHAR(255) NULL,
    [email] VARCHAR(MAX) NULL,
    PRIMARY KEY ([artistid])
);
GO

INSERT INTO artist (username, email) VALUES ('kcant0', 'mmckeand0@devhub.com');
INSERT INTO artist (username, email) VALUES ('kjagson1', 'ahuegett1@netlog.com');
INSERT INTO artist (username, email) VALUES ('mruslen2', 'tjurgensen2@cam.ac.uk');
INSERT INTO artist (username, email) VALUES ('glepiscopio3', 'rvanyard3@senate.gov');
INSERT INTO artist (username, email) VALUES ('sbrookesbie4', 'sthrelfall4@yale.edu');
INSERT INTO artist (username, email) VALUES ('mbeven5', 'daleswell5@mediafire.com');
INSERT INTO artist (username, email) VALUES ('cmillott6', 'gmenlove6@sfgate.com');
INSERT INTO artist (username, email) VALUES ('nkynder7', 'mdobble7@techcrunch.com');
INSERT INTO artist (username, email) VALUES ('cbacher8', 'cpoyntz8@washington.edu');
INSERT INTO artist (username, email) VALUES ('cdockery9', 'dcantos9@princeton.edu');
INSERT INTO artist (username, email) VALUES ('ddaneluta', 'fjostana@springer.com');
INSERT INTO artist (username, email) VALUES ('gkmicickib', 'araittieb@utexas.edu');
INSERT INTO artist (username, email) VALUES ('blowlessc', 'gwhittac@gov.uk');
INSERT INTO artist (username, email) VALUES ('agilliatd', 'cwydd@github.io');
INSERT INTO artist (username, email) VALUES ('lgaskale', 'blammerse@furl.net');
INSERT INTO artist (username, email) VALUES ('agiamettif', 'lvicareyf@theglobeandmail.com');
INSERT INTO artist (username, email) VALUES ('cloughneyg', 'wlewishamg@hexun.com');
INSERT INTO artist (username, email) VALUES ('pleutyh', 'comearah@ucsd.edu');
INSERT INTO artist (username, email) VALUES ('sbeedomi', 'fyakhini@aboutads.info');
INSERT INTO artist (username, email) VALUES ('kgyllej', 'sfoxallj@wp.com');
INSERT INTO artist (username, email) VALUES ('jbeddinghamk', 'ecoppingk@alexa.com');
INSERT INTO artist (username, email) VALUES ('gmelll', 'etomel@adobe.com');
INSERT INTO artist (username, email) VALUES ('dblakelym', 'gvernem@bloglines.com');
INSERT INTO artist (username, email) VALUES ('jlonnonn', 'dhansardn@typepad.com');
INSERT INTO artist (username, email) VALUES ('mwendovero', 'edutsono@fotki.com');
INSERT INTO artist (username, email) VALUES ('vworsfoldp', 'cyatep@yellowpages.com');
INSERT INTO artist (username, email) VALUES ('slangfieldq', 'ibluettq@topsy.com');
INSERT INTO artist (username, email) VALUES ('dcustyr', 'tjeremiahr@webeden.co.uk');
INSERT INTO artist (username, email) VALUES ('rforestalls', 'chylandss@cam.ac.uk');
INSERT INTO artist (username, email) VALUES ('kkynettt', 'pcoldtartt@github.io');
INSERT INTO artist (username, email) VALUES ('ilambkinu', 'dwoolamu@youtube.com');
INSERT INTO artist (username, email) VALUES ('mbolstridgev', 'ocowev@berkeley.edu');
INSERT INTO artist (username, email) VALUES ('rmenguyw', 'iouthwaitew@dropbox.com');
INSERT INTO artist (username, email) VALUES ('ddunslevex', 'apeperellx@desdev.cn');
INSERT INTO artist (username, email) VALUES ('snevisony', 'lartheyy@bizjournals.com');
INSERT INTO artist (username, email) VALUES ('gbraunz', 'twardz@ustream.tv');
INSERT INTO artist (username, email) VALUES ('agrimshaw10', 'culyatt10@alibaba.com');
INSERT INTO artist (username, email) VALUES ('hphelipeau11', 'ndenkin11@uol.com.br');
INSERT INTO artist (username, email) VALUES ('sorleton12', 'lgriggs12@plala.or.jp');
INSERT INTO artist (username, email) VALUES ('lsparkwill13', 'fhilary13@feedburner.com');
INSERT INTO artist (username, email) VALUES ('jditzel14', 'nshervington14@dropbox.com');
INSERT INTO artist (username, email) VALUES ('dbernolet15', 'bharnes15@vkontakte.ru');
INSERT INTO artist (username, email) VALUES ('sgaukrodge16', 'ckeast16@va.gov');
INSERT INTO artist (username, email) VALUES ('oharnetty17', 'dselesnick17@berkeley.edu');
INSERT INTO artist (username, email) VALUES ('gvasilkov18', 'ljoul18@scientificamerican.com');
INSERT INTO artist (username, email) VALUES ('gszymanowski19', 'rfessler19@mapquest.com');
INSERT INTO artist (username, email) VALUES ('gpfaff1a', 'lwolfenden1a@stanford.edu');
INSERT INTO artist (username, email) VALUES ('gchecchi1b', 'rglaister1b@opensource.org');
INSERT INTO artist (username, email) VALUES ('jkinnock1c', 'iswanson1c@walmart.com');
INSERT INTO artist (username, email) VALUES ('aevert1d', 'kriseley1d@hibu.com');


------- Room Table -------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('room'))
BEGIN;
    DROP TABLE [room];
END;
GO

CREATE TABLE [room] (
    [roomid] INTEGER NOT NULL IDENTITY(1, 1),
    [currenttime] DATETIME,
    [artistid] VARCHAR(255) NULL,
    [starttime] DATETIME,
    [endtime] DATETIME,
    [roomname] VARCHAR(50),
    [roomdescription] VARCHAR(255),
    PRIMARY KEY ([roomid])
);
GO

insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 37, '2019-02-01 23:16:59', '2019-03-26 19:59:15', 'Terathopius ecaudatus', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 46, '2019-02-19 07:51:50', '2019-03-03 01:24:25', 'Chlidonias leucopterus', 'Morbi ut odio.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 38, '2019-02-20 22:23:10', '2019-03-17 13:07:16', 'Diomedea irrorata', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 37, '2019-02-12 07:23:32', '2019-03-07 00:47:37', 'Phalacrocorax brasilianus', 'Donec quis orci eget orci vehicula condimentum.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 28, '2019-02-12 11:24:35', '2019-03-02 10:44:43', 'Alligator mississippiensis', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 34, '2019-02-21 02:48:09', '2019-03-03 20:07:57', 'Bison bison', 'Maecenas pulvinar lobortis est.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 27, '2019-02-20 07:17:10', '2019-03-26 15:17:08', 'Raphicerus campestris', 'Morbi a ipsum. Integer a nibh.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 27, '2019-02-21 22:44:52', '2019-03-10 07:18:31', 'Spizaetus coronatus', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 33, '2019-02-11 01:14:36', '2019-03-14 01:32:50', 'Theropithecus gelada', 'Sed ante.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 9, '2019-02-19 07:02:00', '2019-03-19 22:11:22', 'Felis silvestris lybica', 'Maecenas pulvinar lobortis est.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 4, '2019-02-05 18:17:42', '2019-03-27 02:17:20', 'Uraeginthus angolensis', 'Integer ac neque.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 4, '2019-02-25 09:37:08', '2019-03-12 00:37:48', 'Felis concolor', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 50, '2019-02-27 23:48:39', '2019-03-30 14:25:18', 'Toxostoma curvirostre', 'Nam tristique tortor eu pede.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 41, '2019-02-13 03:36:07', '2019-03-20 22:03:27', 'Butorides striatus', 'Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 3, '2019-02-08 07:33:54', '2019-03-06 18:51:33', 'Neophoca cinerea', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 36, '2019-02-07 12:44:32', '2019-03-03 07:19:04', 'Cervus canadensis', 'Ut tellus.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 16, '2019-02-05 17:03:41', '2019-03-04 15:20:06', 'Geochelone elegans', 'Ut at dolor quis odio consequat varius.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 5, '2019-02-15 05:28:27', '2019-03-13 02:07:15', 'Certotrichas paena', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 7, '2019-02-19 10:58:01', '2019-03-27 23:06:00', 'Vulpes chama', 'Phasellus id sapien in sapien iaculis congue.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 38, '2019-02-15 11:06:45', '2019-03-20 19:25:30', 'Macropus rufogriseus', 'Nunc rhoncus dui vel sem.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 45, '2019-02-27 18:46:15', '2019-03-07 07:09:44', 'Phascogale tapoatafa', 'Proin interdum mauris non ligula pellentesque ultrices.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 31, '2019-02-17 08:53:43', '2019-03-20 09:35:25', 'Acrobates pygmaeus', 'In sagittis dui vel nisl.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 24, '2019-02-16 19:55:52', '2019-03-30 08:33:17', 'Panthera pardus', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 1, '2019-02-06 22:17:45', '2019-03-29 03:16:51', 'Eumetopias jubatus', 'Suspendisse potenti.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 19, '2019-02-23 12:37:23', '2019-03-10 01:00:57', 'Lorythaixoides concolor', 'Duis at velit eu est congue elementum.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 33, '2019-02-13 23:31:29', '2019-03-10 21:03:14', 'Crotalus adamanteus', 'Maecenas ut massa quis augue luctus tincidunt.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 50, '2019-02-08 18:06:02', '2019-03-26 12:38:00', 'Gorilla gorilla', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 4, '2019-02-15 13:53:24', '2019-03-14 11:38:21', 'Centrocercus urophasianus', 'Vivamus vestibulum sagittis sapien.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 5, '2019-02-26 15:31:05', '2019-03-30 09:04:39', 'Tachyglossus aculeatus', 'Phasellus id sapien in sapien iaculis congue.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 2, '2019-02-05 03:39:00', '2019-03-23 00:53:19', 'Cervus elaphus', 'Nullam sit amet turpis elementum ligula vehicula consequat.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 15, '2019-02-04 01:08:34', '2019-03-29 23:05:41', 'Pavo cristatus', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 47, '2019-02-25 09:58:50', '2019-03-21 18:33:50', 'Uraeginthus bengalus', 'Donec posuere metus vitae ipsum. Aliquam non mauris.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 50, '2019-02-11 09:35:04', '2019-03-25 14:55:08', 'Sciurus niger', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 20, '2019-02-21 17:42:32', '2019-03-14 04:42:20', 'Zalophus californicus', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 44, '2019-02-25 20:20:58', '2019-03-08 15:28:10', 'Sagittarius serpentarius', 'Donec dapibus.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 3, '2019-02-15 01:14:14', '2019-03-06 04:25:30', 'Stenella coeruleoalba', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 21, '2019-02-02 01:06:44', '2019-03-09 22:15:19', 'Mellivora capensis', 'Aliquam non mauris. Morbi non lectus.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 27, '2019-02-24 06:53:27', '2019-03-01 08:09:36', 'Varanus salvator', 'Vivamus in felis eu sapien cursus vestibulum.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 39, '2019-02-19 18:37:57', '2019-03-28 19:50:02', 'Equus hemionus', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 12, '2019-02-06 04:44:20', '2019-03-27 12:58:40', 'Felis silvestris lybica', 'Nunc rhoncus dui vel sem. Sed sagittis.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 42, '2019-02-18 16:53:31', '2019-03-15 00:27:50', 'Streptopelia senegalensis', 'In quis justo. Maecenas rhoncus aliquam lacus.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 45, '2019-02-05 00:13:56', '2019-03-29 21:00:59', 'Naja haje', 'Suspendisse accumsan tortor quis turpis.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 37, '2019-02-08 13:36:11', '2019-03-04 14:23:52', 'Himantopus himantopus', 'Praesent id massa id nisl venenatis lacinia.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 7, '2019-02-15 12:12:40', '2019-03-13 17:56:58', 'Sitta canadensis', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 40, '2019-02-09 05:30:46', '2019-03-24 05:18:22', 'Tursiops truncatus', 'Nam tristique tortor eu pede.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 19, '2019-02-20 04:59:45', '2019-03-15 20:53:06', 'Lepilemur rufescens', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 45, '2019-02-26 01:04:07', '2019-03-17 20:28:32', 'Spermophilus lateralis', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 7, '2019-02-10 15:17:31', '2019-03-01 16:23:59', 'Ninox superciliaris', 'Maecenas tincidunt lacus at velit.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 46, '2019-02-10 05:33:13', '2019-03-26 18:05:15', 'Butorides striatus', 'Aenean fermentum.');
insert into room (currenttime, artistid, starttime, endtime, roomname, roomdescription) values (getdate(), 36, '2019-02-19 05:19:46', '2019-03-05 16:56:37', 'Loxodonta africana', 'In hac habitasse platea dictumst.');


------- RoomSession Table -------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('roomsession'))
BEGIN;
    DROP TABLE [roomsession];
END;
GO

CREATE TABLE [roomsession] (
    [username] VARCHAR(255) NULL,
    [roomid] INTEGER NULL,
    [currenttime] VARCHAR(255)
);
GO

insert into roomsession (username, roomid, currenttime) values ('cvala0', 1, getdate());
insert into roomsession (username, roomid, currenttime) values ('tjude1', 2, getdate());
insert into roomsession (username, roomid, currenttime) values ('mstollen2', 3, getdate());
insert into roomsession (username, roomid, currenttime) values ('rbranscombe3', 4, getdate());
insert into roomsession (username, roomid, currenttime) values ('gchaldecott4', 5, getdate());
insert into roomsession (username, roomid, currenttime) values ('ewatmough5', 6, getdate());
insert into roomsession (username, roomid, currenttime) values ('ppordall6', 7, getdate());
insert into roomsession (username, roomid, currenttime) values ('jmatheson7', 8, getdate());
insert into roomsession (username, roomid, currenttime) values ('chaggie8', 9, getdate());
insert into roomsession (username, roomid, currenttime) values ('gwandtke9', 10, getdate());
insert into roomsession (username, roomid, currenttime) values ('icasoa', 11, getdate());
insert into roomsession (username, roomid, currenttime) values ('ccartledgeb', 12, getdate());
insert into roomsession (username, roomid, currenttime) values ('jshewanc', 13, getdate());
insert into roomsession (username, roomid, currenttime) values ('lwaycottd', 14, getdate());
insert into roomsession (username, roomid, currenttime) values ('askette', 15, getdate());
insert into roomsession (username, roomid, currenttime) values ('cgarnamf', 16, getdate());
insert into roomsession (username, roomid, currenttime) values ('mgoldeg', 17, getdate());
insert into roomsession (username, roomid, currenttime) values ('dhemereth', 18, getdate());
insert into roomsession (username, roomid, currenttime) values ('acracknalli', 19, getdate());
insert into roomsession (username, roomid, currenttime) values ('ablacklyj', 20, getdate());
insert into roomsession (username, roomid, currenttime) values ('lsaysek', 21, getdate());
insert into roomsession (username, roomid, currenttime) values ('wdowdal', 22, getdate());
insert into roomsession (username, roomid, currenttime) values ('opanonsm', 23, getdate());
insert into roomsession (username, roomid, currenttime) values ('nthackstonn', 24, getdate());
insert into roomsession (username, roomid, currenttime) values ('zgoadbyo', 25, getdate());
insert into roomsession (username, roomid, currenttime) values ('edetheridgep', 26, getdate());
insert into roomsession (username, roomid, currenttime) values ('eridesq', 27, getdate());
insert into roomsession (username, roomid, currenttime) values ('asilleyr', 28, getdate());
insert into roomsession (username, roomid, currenttime) values ('mtaggetts', 29, getdate());
insert into roomsession (username, roomid, currenttime) values ('probiott', 30, getdate());
insert into roomsession (username, roomid, currenttime) values ('abansalu', 31, getdate());
insert into roomsession (username, roomid, currenttime) values ('dhaymesv', 32, getdate());
insert into roomsession (username, roomid, currenttime) values ('brubinfeldw', 33, getdate());
insert into roomsession (username, roomid, currenttime) values ('mjertzx', 34, getdate());
insert into roomsession (username, roomid, currenttime) values ('fclausy', 35, getdate());
insert into roomsession (username, roomid, currenttime) values ('mbraunleinz', 36, getdate());
insert into roomsession (username, roomid, currenttime) values ('cprettejohns10', 37, getdate());
insert into roomsession (username, roomid, currenttime) values ('jcapon11', 38, getdate());
insert into roomsession (username, roomid, currenttime) values ('ekornes12', 39, getdate());
insert into roomsession (username, roomid, currenttime) values ('sbatman13', 40, getdate());
insert into roomsession (username, roomid, currenttime) values ('rdunford14', 41, getdate());
insert into roomsession (username, roomid, currenttime) values ('dsiburn15', 42, getdate());
insert into roomsession (username, roomid, currenttime) values ('jhuby16', 43, getdate());
insert into roomsession (username, roomid, currenttime) values ('bfadell17', 44, getdate());
insert into roomsession (username, roomid, currenttime) values ('lcammock18', 45, getdate());
insert into roomsession (username, roomid, currenttime) values ('epechold19', 46, getdate());
insert into roomsession (username, roomid, currenttime) values ('bgreste1a', 47, getdate());
insert into roomsession (username, roomid, currenttime) values ('laustins1b', 48, getdate());
insert into roomsession (username, roomid, currenttime) values ('glusgdin1c', 49, getdate());
insert into roomsession (username, roomid, currenttime) values ('hguillou1d', 50, getdate());

------- messages table -------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('messagesent'))
BEGIN;
    DROP TABLE [messagesent];
END;
GO

CREATE TABLE [messagesent] (
    [messageid] INTEGER NOT NULL IDENTITY(1, 1),
    [roomid] INTEGER NULL,
    [content] VARCHAR(MAX) NULL,
    [timesent] VARCHAR(255),
    [username] VARCHAR(255) NULL,
    PRIMARY KEY ([messageid])
);
GO

insert into messagesent (roomid, content, timesent, username) values (4, 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'getdate()', 'smacelholmx');
insert into messagesent (roomid, content, timesent, username) values (20, 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 'getdate()', 'pfarisha');
insert into messagesent (roomid, content, timesent, username) values (12, 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', 'getdate()', 'gmilburn7');
insert into messagesent (roomid, content, timesent, username) values (34, 'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'getdate()', 'mjenoure0');
insert into messagesent (roomid, content, timesent, username) values (3, 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'getdate()', 'wyouster1k');
insert into messagesent (roomid, content, timesent, username) values (38, 'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'getdate()', 'wbartoshevich2o');
insert into messagesent (roomid, content, timesent, username) values (42, 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'getdate()', 'bbartleyb');
insert into messagesent (roomid, content, timesent, username) values (50, 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim', 'getdate()', 'ahewes2d');
insert into messagesent (roomid, content, timesent, username) values (40, 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', 'getdate()', 'gscraggt');
insert into messagesent (roomid, content, timesent, username) values (25, 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 'getdate()', 'esaull25');
insert into messagesent (roomid, content, timesent, username) values (4, 'porttitor pede justo eu massa donec dapibus duis at velit eu', 'getdate()', 'vbradshaw13');
insert into messagesent (roomid, content, timesent, username) values (4, 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', 'getdate()', 'gmilburn7');
insert into messagesent (roomid, content, timesent, username) values (15, 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 'getdate()', 'skingsfordm');
insert into messagesent (roomid, content, timesent, username) values (44, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'getdate()', 'mbennellickk');
insert into messagesent (roomid, content, timesent, username) values (20, 'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', 'getdate()', 'vdreakinw');
insert into messagesent (roomid, content, timesent, username) values (14, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum', 'getdate()', 'lmegarry2c');
insert into messagesent (roomid, content, timesent, username) values (37, 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', 'getdate()', 'kbyllam1s');
insert into messagesent (roomid, content, timesent, username) values (50, 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 'getdate()', 'ninglishv');
insert into messagesent (roomid, content, timesent, username) values (4, 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', 'getdate()', 'sbaldersonn');
insert into messagesent (roomid, content, timesent, username) values (7, 'blandit non interdum in ante vestibulum ante ipsum primis in', 'getdate()', 'jmcilrath2b');
insert into messagesent (roomid, content, timesent, username) values (31, 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', 'getdate()', 'rgabbitusl');
insert into messagesent (roomid, content, timesent, username) values (35, 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'getdate()', 'lsyalvesteru');
insert into messagesent (roomid, content, timesent, username) values (43, 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', 'getdate()', 'lsyalvesteru');
insert into messagesent (roomid, content, timesent, username) values (9, 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', 'getdate()', 'mmoreton1l');
insert into messagesent (roomid, content, timesent, username) values (47, 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', 'getdate()', 'titzcak2k');
insert into messagesent (roomid, content, timesent, username) values (15, 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', 'getdate()', 'jgoldiny');
insert into messagesent (roomid, content, timesent, username) values (38, 'sed accumsan felis ut at dolor quis odio consequat varius integer', 'getdate()', 'smackenzie2i');
insert into messagesent (roomid, content, timesent, username) values (19, 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', 'getdate()', 'gweight3');
insert into messagesent (roomid, content, timesent, username) values (39, 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 'getdate()', 'ikivelhan28');
insert into messagesent (roomid, content, timesent, username) values (27, 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium', 'getdate()', 'rbreartyi');
insert into messagesent (roomid, content, timesent, username) values (33, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', 'getdate()', 'mebbetts1r');
insert into messagesent (roomid, content, timesent, username) values (13, 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', 'getdate()', 'ikivelhan28');
insert into messagesent (roomid, content, timesent, username) values (30, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 'getdate()', 'bgrange2r');
insert into messagesent (roomid, content, timesent, username) values (13, 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 'getdate()', 'ngaisford11');
insert into messagesent (roomid, content, timesent, username) values (28, 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 'getdate()', 'bcoste26');
insert into messagesent (roomid, content, timesent, username) values (43, 'tellus nulla ut erat id mauris vulputate elementum nullam varius', 'getdate()', 'csouthcomb2j');
insert into messagesent (roomid, content, timesent, username) values (44, 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'getdate()', 'fhagwood23');
insert into messagesent (roomid, content, timesent, username) values (45, 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut', 'getdate()', 'dhearsey16');
insert into messagesent (roomid, content, timesent, username) values (21, 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 'getdate()', 'cdungay29');
insert into messagesent (roomid, content, timesent, username) values (26, 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', 'getdate()', 'titzcak2k');
insert into messagesent (roomid, content, timesent, username) values (40, 'risus dapibus augue vel accumsan tellus nisi eu orci mauris', 'getdate()', 'pmilksop1p');
insert into messagesent (roomid, content, timesent, username) values (8, 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', 'getdate()', 'amotherwelle');
insert into messagesent (roomid, content, timesent, username) values (37, 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede', 'getdate()', 'cucchino21');
insert into messagesent (roomid, content, timesent, username) values (50, 'aliquam convallis nunc proin at turpis a pede posuere nonummy', 'getdate()', 'ralsford2f');
insert into messagesent (roomid, content, timesent, username) values (38, 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 'getdate()', 'ndebanke2l');
insert into messagesent (roomid, content, timesent, username) values (11, 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', 'getdate()', 'rgabbitusl');
insert into messagesent (roomid, content, timesent, username) values (44, 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in', 'getdate()', 'mrodnightd');
insert into messagesent (roomid, content, timesent, username) values (49, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', 'getdate()', 'ewilmott1j');
insert into messagesent (roomid, content, timesent, username) values (12, 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris', 'getdate()', 'jmcilrath2b');
insert into messagesent (roomid, content, timesent, username) values (4, 'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', 'getdate()', 'bfalkinder15');
insert into messagesent (roomid, content, timesent, username) values (20, 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', 'getdate()', 'evidean2p');
insert into messagesent (roomid, content, timesent, username) values (39, 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'getdate()', 'esaull25');
insert into messagesent (roomid, content, timesent, username) values (21, 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam', 'getdate()', 'aallbon4');
insert into messagesent (roomid, content, timesent, username) values (16, 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 'getdate()', 'rgrunnill1q');
insert into messagesent (roomid, content, timesent, username) values (12, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 'getdate()', 'bcoste26');
insert into messagesent (roomid, content, timesent, username) values (21, 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 'getdate()', 'aallbon4');
insert into messagesent (roomid, content, timesent, username) values (5, 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', 'getdate()', 'mricciardello1t');
insert into messagesent (roomid, content, timesent, username) values (32, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in', 'getdate()', 'scoppledikes');
insert into messagesent (roomid, content, timesent, username) values (2, 'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', 'getdate()', 'pfarisha');
insert into messagesent (roomid, content, timesent, username) values (45, 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 'getdate()', 'smoat1');
insert into messagesent (roomid, content, timesent, username) values (49, 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', 'getdate()', 'nmaltby1e');
insert into messagesent (roomid, content, timesent, username) values (27, 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'getdate()', 'gpearlh');
insert into messagesent (roomid, content, timesent, username) values (13, 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 'getdate()', 'kclendennen8');
insert into messagesent (roomid, content, timesent, username) values (20, 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 'getdate()', 'pvanyashin2g');
insert into messagesent (roomid, content, timesent, username) values (15, 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', 'getdate()', 'mbennellickk');
insert into messagesent (roomid, content, timesent, username) values (13, 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', 'getdate()', 'tkorfmann1i');
insert into messagesent (roomid, content, timesent, username) values (41, 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris', 'getdate()', 'pmilksop1p');
insert into messagesent (roomid, content, timesent, username) values (13, 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', 'getdate()', 'lramel22');
insert into messagesent (roomid, content, timesent, username) values (25, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'getdate()', 'pfarisha');
insert into messagesent (roomid, content, timesent, username) values (16, 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'getdate()', 'jwombwellg');
insert into messagesent (roomid, content, timesent, username) values (8, 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', 'getdate()', 'whewins1h');
insert into messagesent (roomid, content, timesent, username) values (12, 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'getdate()', 'bembra1n');
insert into messagesent (roomid, content, timesent, username) values (17, 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', 'getdate()', 'kclendennen8');
insert into messagesent (roomid, content, timesent, username) values (25, 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'getdate()', 'cucchino21');
insert into messagesent (roomid, content, timesent, username) values (42, 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'getdate()', 'lhuband2a');
insert into messagesent (roomid, content, timesent, username) values (15, 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum', 'getdate()', 'csouthcomb2j');
insert into messagesent (roomid, content, timesent, username) values (35, 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper', 'getdate()', 'lmegarry2c');
insert into messagesent (roomid, content, timesent, username) values (19, 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis', 'getdate()', 'vbradshaw13');
insert into messagesent (roomid, content, timesent, username) values (3, 'eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'getdate()', 'osoonhousez');
insert into messagesent (roomid, content, timesent, username) values (7, 'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse', 'getdate()', 'chussell2h');
insert into messagesent (roomid, content, timesent, username) values (25, 'vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel', 'getdate()', 'msantino2e');
insert into messagesent (roomid, content, timesent, username) values (11, 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', 'getdate()', 'whewins1h');
insert into messagesent (roomid, content, timesent, username) values (13, 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', 'getdate()', 'sumbert9');
insert into messagesent (roomid, content, timesent, username) values (14, 'quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas', 'getdate()', 'gcrates2m');
insert into messagesent (roomid, content, timesent, username) values (47, 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'getdate()', 'bgrange2r');
insert into messagesent (roomid, content, timesent, username) values (44, 'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', 'getdate()', 'csouthcomb2j');
insert into messagesent (roomid, content, timesent, username) values (29, 'nulla elit ac nulla sed vel enim sit amet nunc viverra', 'getdate()', 'bembra1n');
insert into messagesent (roomid, content, timesent, username) values (18, 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', 'getdate()', 'tplentyf');
insert into messagesent (roomid, content, timesent, username) values (8, 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', 'getdate()', 'mbennellickk');
insert into messagesent (roomid, content, timesent, username) values (41, 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', 'getdate()', 'chussell2h');
insert into messagesent (roomid, content, timesent, username) values (43, 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', 'getdate()', 'evidean2p');
insert into messagesent (roomid, content, timesent, username) values (25, 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 'getdate()', 'phawlgarth27');
insert into messagesent (roomid, content, timesent, username) values (5, 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', 'getdate()', 'fjanus10');
insert into messagesent (roomid, content, timesent, username) values (36, 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 'getdate()', 'smacelholmx');
insert into messagesent (roomid, content, timesent, username) values (33, 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', 'getdate()', 'srasher2n');
insert into messagesent (roomid, content, timesent, username) values (19, 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'getdate()', 'rdingate24');
insert into messagesent (roomid, content, timesent, username) values (50, 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'getdate()', 'ucolisbeo');
insert into messagesent (roomid, content, timesent, username) values (45, 'nec condimentum neque sapien placerat ante nulla justo aliquam quis', 'getdate()', 'jwombwellg');
insert into messagesent (roomid, content, timesent, username) values (44, 'fermentum justo nec condimentum neque sapien placerat ante nulla justo', 'getdate()', 'wyouster1k');
insert into messagesent (roomid, content, timesent, username) values (11, 'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 'getdate()', 'sspinley1c');
