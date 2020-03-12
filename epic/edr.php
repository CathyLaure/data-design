<!DOCTYPE html>
<html langa="en">
<head>
	<meta charset="UTF-8" />
	<title>Conceptual Model and EDR</title>
</head>
<body>
<h1>Entities and Attributes</h1>
	<h2>userAccount</h2>
		<li>userAccountId (primary key)</li>
		<li>profileEmail</li>
		<li>profilePhone</li>

	<h2>Playlist</h2>
		<li>playlistId (primary key)</li>
		<li>playlistGenre</li>
		<li>playlistTitle</li>

	<h2>Song</h2>
		<li>songId (primary key)</li>
		<li>songAuthor</li>
		<li>songTitle</li>

	<h2>playlistSong</h2>
		<li>playlistSongPlaylistId (foreign key)</li>
		<li>playlistSongSongId (foreign key)</li>

	<h1>Relations</h1>
		<li>One User account can have many playlists -(1 to n)</li>
		<li>One playlist can contain many songs (1 to n)</li>
		<li>One song can be in many different playlist (m to n)</li>

	<h1>ERD</h1>
	<img src="erd.jpg" alt="Picture of Cathy" id="erd";
	  class="center"/>
</body>
</html>