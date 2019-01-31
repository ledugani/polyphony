-------- Users Table --------
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('users'))
BEGIN;
    DROP TABLE [users];
END;
GO

CREATE TABLE [users] (
    [id] INTEGER NOT NULL IDENTITY(1, 1),
    [username] VARCHAR(50) NULL,
    [email] VARCHAR(50) NULL,
    PRIMARY KEY ([id])
);
GO

INSERT INTO users (email, username) VALUES ('dcapp0@umn.edu', 'mjenoure0'),('atankard1@clickbank.net', 'smoat1'),('hlapenna2@artisteer.com', 'agiovanni2'),('dvalenta3@slate.com', 'gweight3');
INSERT INTO users (email, username) VALUES ('ctarry4@google.ca', 'aallbon4'),('ocamel5@yahoo.co.jp', 'aledwich5'),('jmcclaurie6@cbc.ca', 'buren6'),('pirdale7@cyberchimps.com', 'gmilburn7');
INSERT INTO users (email, username) VALUES ('tbrewin8@cisco.com', 'kclendennen8'),('eaire9@barnesandnoble.com', 'sumbert9'),('kdillwaya@alibaba.com', 'pfarisha'),('dsaintsburyb@who.int', 'bbartleyb');
INSERT INTO users (email, username) VALUES ('vduckelsc@sciencedaily.com', 'hcollinwoodc'),('mcassleyd@topsy.com', 'mrodnightd'),('sharnette@timesonline.co.uk', 'amotherwelle'),('wguillermanf@lulu.com', 'tplentyf');
INSERT INTO users (email, username) VALUES ('hbuzineg@merriam-webster.com', 'jwombwellg'),('mjocelynh@rakuten.co.jp', 'gpearlh'),('jsowersbyi@hibu.com', 'rbreartyi'),('elitherlandj@prnewswire.com', 'fsandsj');
INSERT INTO users (email, username) VALUES ('egowenk@apache.org', 'mbennellickk'),('dwandrackl@clickbank.net', 'rgabbitusl'),('jroslem@pbs.org', 'skingsfordm'),('bwollrauchn@hexun.com', 'sbaldersonn');
INSERT INTO users (email, username) VALUES ('bstubbeleyo@bloglines.com', 'ucolisbeo'),('ksimkinp@taobao.com', 'rgaishsonp'),('ykerswellq@epa.gov', 'efarressq'),('agagier@blogspot.com', 'gsherr');
INSERT INTO users (email, username) VALUES ('vjakovijevics@mediafire.com', 'scoppledikes'),('clefriect@fc2.com', 'gscraggt'),('cpawsonu@cbsnews.com', 'lsyalvesteru'),('lheightonv@goo.gl', 'ninglishv');
INSERT INTO users (email, username) VALUES ('lderuelw@bloglines.com', 'vdreakinw'),('vcutcheyx@weather.com', 'smacelholmx'),('hspinozziy@cpanel.net', 'jgoldiny'),('pkristufekz@theguardian.com', 'osoonhousez');
INSERT INTO users (email, username) VALUES ('sdilleston10@soup.io', 'fjanus10'),('adumingo11@angelfire.com', 'ngaisford11'),('hpiche12@csmonitor.com', 'cbellham12'),('ahelleker13@sina.com.cn', 'vbradshaw13');
INSERT INTO users (email, username) VALUES ('lavory14@naver.com', 'vsaunt14'),('cgentile15@51.la', 'bfalkinder15'),('ascarrott16@symantec.com', 'dhearsey16'),('jkilmurray17@microsoft.com', 'kfontes17');
INSERT INTO users (email, username) VALUES ('zhillum18@eepurl.com', 'lpattillo18'),('nrubega19@homestead.com', 'gbonfield19'),('hkeizman1a@typepad.com', 'kdantesia1a'),('mkeighly1b@miitbeian.gov.cn', 'enears1b');
INSERT INTO users (email, username) VALUES ('fokie1c@comsenz.com', 'sspinley1c'),('bgladdin1d@facebook.com', 'ivallack1d'),('gmcdill1e@prlog.org', 'nmaltby1e'),('oreuter1f@drupal.org', 'cbelward1f');
INSERT INTO users (email, username) VALUES ('znelson1g@meetup.com', 'dbrittian1g'),('nwigley1h@cargocollective.com', 'whewins1h'),('cwinterton1i@cisco.com', 'tkorfmann1i'),('aprentice1j@walmart.com', 'ewilmott1j');
INSERT INTO users (email, username) VALUES ('tgisbey1k@salon.com', 'wyouster1k'),('nfarnell1l@japanpost.jp', 'mmoreton1l'),('rwidd1m@si.edu', 'cbutlerbowdon1m'),('eiacovaccio1n@aboutads.info', 'bembra1n');
INSERT INTO users (email, username) VALUES ('srussi1o@hostgator.com', 'tswepstone1o'),('alawford1p@house.gov', 'pmilksop1p'),('agoddard1q@google.it', 'rgrunnill1q'),('wwittrington1r@arizona.edu', 'mebbetts1r');
INSERT INTO users (email, username) VALUES ('sbeedle1s@php.net', 'kbyllam1s'),('jdownes1t@opera.com', 'mricciardello1t'),('jakred1u@cargocollective.com', 'npolini1u'),('jcardwell1v@netscape.com', 'nbennetto1v');
INSERT INTO users (email, username) VALUES ('dbrennon1w@dagondesign.com', 'bmoohan1w'),('fnestor1x@github.com', 'echaloner1x'),('pberceros1y@state.tx.us', 'tfrancais1y'),('dspinozzi1z@themeforest.net', 'pwestnage1z');
INSERT INTO users (email, username) VALUES ('bcanniffe20@cnn.com', 'rdelahaye20'),('edacres21@icq.com', 'cucchino21'),('hgofton22@hostgator.com', 'lramel22'),('nreynard23@dmoz.org', 'fhagwood23');
INSERT INTO users (email, username) VALUES ('nwhittington24@craigslist.org', 'rdingate24'),('oreaveley25@whitehouse.gov', 'esaull25'),('aferrers26@cbsnews.com', 'bcoste26'),('rsurridge27@tiny.cc', 'phawlgarth27');
INSERT INTO users (email, username) VALUES ('awall28@wufoo.com', 'ikivelhan28'),('cgather29@netvibes.com', 'cdungay29'),('hlowrance2a@howstuffworks.com', 'lhuband2a'),('lkoppens2b@diigo.com', 'jmcilrath2b');
INSERT INTO users (email, username) VALUES ('rrivenzon2c@webnode.com', 'lmegarry2c'),('rsarll2d@studiopress.com', 'ahewes2d'),('hjansson2e@arstechnica.com', 'msantino2e'),('rmerritt2f@rambler.ru', 'ralsford2f');
INSERT INTO users (email, username) VALUES ('strusler2g@sourceforge.net', 'pvanyashin2g'),('srekes2h@free.fr', 'chussell2h'),('fthacker2i@squidoo.com', 'smackenzie2i'),('tadrien2j@goodreads.com', 'csouthcomb2j');
INSERT INTO users (email, username) VALUES ('edonnellan2k@nih.gov', 'titzcak2k'),('dheineke2l@timesonline.co.uk', 'ndebanke2l'),('dedensor2m@last.fm', 'gcrates2m'),('ylambin2n@drupal.org', 'srasher2n');
INSERT INTO users (email, username) VALUES ('hscowcraft2o@hp.com', 'wbartoshevich2o'),('mvorley2p@opensource.org', 'evidean2p'),('dbouzan2q@technorati.com', 'kburnand2q'),('flennon2r@independent.co.uk', 'bgrange2r');

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
    [start_time] DATETIME,
    [end_time] DATETIME,
    PRIMARY KEY ([roomid])
);
GO

INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 32, '2018-01-29 00:23:52', '2018-06-05 00:49:44');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 20, '2018-11-19 12:18:06', '2018-05-27 16:35:39');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 42, '2018-09-28 04:56:44', '2018-03-19 00:26:23');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 20, '2018-08-21 16:52:08', '2018-12-26 00:53:15');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 34, '2019-01-02 15:55:02', '2018-10-11 14:58:13');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 37, '2018-07-01 08:48:32', '2018-12-19 03:12:04');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 30, '2018-02-16 06:15:38', '2018-11-04 14:18:48');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 11, '2018-07-27 05:16:09', '2018-11-11 16:38:47');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 5, '2018-11-12 04:46:56', '2018-12-17 11:18:24');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 6, '2018-12-20 00:35:14', '2018-10-28 21:59:40');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 12, '2018-08-14 23:56:39', '2019-01-22 08:42:46');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 18, '2018-05-03 22:14:03', '2018-02-12 07:20:57');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 1, '2018-08-28 02:47:57', '2018-03-10 00:09:45');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 34, '2018-10-13 17:25:31', '2018-06-28 14:13:27');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 29, '2018-08-07 09:31:43', '2018-03-31 21:54:37');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 13, '2018-11-29 15:31:23', '2018-06-07 05:49:55');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 41, '2018-06-28 08:44:40', '2018-02-22 08:35:21');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 20, '2018-03-11 17:55:22', '2018-08-14 21:29:39');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 36, '2018-04-06 08:49:41', '2018-04-02 20:46:19');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 21, '2018-08-23 06:35:25', '2018-08-14 06:06:09');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 26, '2018-09-13 23:35:05', '2018-12-23 19:58:04');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 22, '2018-11-30 02:03:04', '2018-12-11 06:01:45');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 22, '2018-12-31 22:12:02', '2018-02-03 18:12:41');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 42, '2018-07-21 09:30:09', '2018-09-26 01:31:24');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 13, '2018-08-26 02:38:30', '2018-11-22 22:35:57');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 23, '2018-07-01 07:20:36', '2018-12-31 04:12:12');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 22, '2018-04-11 09:40:39', '2019-01-07 17:05:38');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 6, '2018-07-11 07:39:56', '2018-03-12 23:28:50');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 26, '2018-01-31 22:02:22', '2018-06-06 12:22:31');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 43, '2018-05-20 12:52:33', '2018-07-24 03:46:42');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 45, '2018-11-16 10:15:03', '2018-06-11 12:32:10');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 27, '2018-02-16 10:24:06', '2018-07-24 10:53:49');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 9, '2018-07-07 16:27:27', '2018-11-21 00:31:44');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 8, '2018-11-18 14:51:02', '2018-07-19 10:15:05');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 9, '2018-08-31 16:02:16', '2018-09-07 08:15:48');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 34, '2018-11-08 19:54:39', '2018-07-02 10:00:51');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 9, '2018-02-01 20:10:09', '2019-01-24 20:44:54');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 13, '2018-07-02 23:11:01', '2018-07-31 04:55:26');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 48, '2018-12-30 08:45:00', '2018-05-02 12:32:41');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 42, '2018-05-10 13:08:28', '2018-05-09 20:05:42');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 18, '2019-01-08 15:25:50', '2018-06-09 00:49:27');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 34, '2018-06-24 20:28:34', '2018-10-15 02:49:35');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 47, '2018-08-04 05:42:03', '2018-05-01 02:18:55');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 32, '2018-02-25 07:21:58', '2018-06-06 03:59:42');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 29, '2018-08-05 00:02:13', '2018-11-27 13:04:41');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 43, '2018-04-14 05:05:48', '2019-01-22 05:34:16');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 8, '2019-01-06 09:21:33', '2018-11-17 01:48:07');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 2, '2018-05-26 02:19:00', '2018-09-15 05:54:02');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 10, '2018-06-15 04:25:13', '2018-04-15 13:16:07');
INSERT INTO room (currenttime, artistid, start_time, end_time) VALUES (getdate(), 29, '2018-12-28 09:43:52', '2018-09-26 16:12:42');


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
