USE ctasama;
ALTER DATABASE ctasama CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE userAccount(
   userAccountId BINARY(16) NOT NULL,
   userAccountEmail VARCHAR(200) NOT NULL,
   userAccountName VARCHAR(40) NOT NULL,
   userAccountPhone VARCHAR(32),
	UNIQUE(userAccountEmail),
	UNIQUE(userAccountName),
	INDEX(userAccountName),
	PRIMARY KEY(userAccountId)
);

CREATE TABLE playlist(
	playlistId BINARY(16) NOT NULL,
	playlistGenre VARCHAR(38) NOT NULL,
	playlistTitle VARCHAR(38) NOT NULL,
	INDEX(playlistGenre, playlistTitle),
	PRIMARY KEY(playlistId)
);

CREATE TABLE song(
	songId BINARY(16) NOT NULL,
	songAuthor VARCHAR(38) NOT NULL,
	songTitle VARCHAR(38) NOT NULL,
	INDEX(songAuthor,songTitle),
	PRIMARY KEY(songId)
);

CREATE TABLE playlistSong(
	playlistSongPlaylistId BINARY(16) NOT NULL,
	playlistSongSongId BINARY(16) NOT NULL,
	INDEX(playlistSongPlaylistId, playlistSongSongId),
	FOREIGN KEY(playlistSongPlaylistId) REFERENCES playlist(playlistId),
	FOREIGN KEY(playlistSongSongId) REFERENCES song(songId),
	PRIMARY KEY(playlistSongPlaylistId, playlistSongSongId)
);