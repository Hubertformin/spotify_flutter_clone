const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

const _lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Ginger',
    artist: 'Wizkid, Burna Boy',
    album: 'Made in Lagos',
    duration: '3:15',
  ),
  Song(
    id: '1',
    title: 'Baddest Boy Remix',
    artist: 'Skibii, Davido',
    album: 'SkiiBii',
    duration: '2:18',
  ),
  Song(
    id: '2',
    title: 'Turn up',
    artist: 'Dj Tunez, Wizkid, Rekardo Banks',
    album: 'Silent River',
    duration: '2:39',
  ),
  Song(
    id: '3',
    title: 'Champion Sound',
    artist: 'Davido, Focalistic',
    album: 'Can We Talk',
    duration: '2:35',
  ),
  Song(
    id: '4',
    title: 'Monalisa',
    artist: 'Lojay, Sarz',
    album: 'Feelings',
    duration: '2:15',
  ),
  Song(
    id: '5',
    title: 'Beggie Beggie',
    artist: 'Ayra Starr, Ckay',
    album: 'Memories We Made',
    duration: '1:57',
  ),
  Song(
    id: '6',
    title: '23',
    artist: 'Burna Boy',
    album: 'Growth Patterns',
    duration: '2:00',
  ),
  Song(
    id: '7',
    title: 'Finesse',
    artist: 'Pheelz, Buju',
    album: 'Autumn in Budapest',
    duration: '2:34',
  ),
  Song(
    id: '8',
    title: 'Longtime',
    artist: 'Wizkid, Skepta',
    album: 'Made in Lagos',
    duration: '1:43',
  ),
  Song(
    id: '9',
    title: 'Takeover',
    artist: 'Kwamz & Flava',
    album: '3 Am. Study Session',
    duration: '2:41',
  ),
  Song(
    id: '10',
    title: 'For life',
    artist: 'Runtown',
    album: 'Polar',
    duration: '2:12',
  ),
  Song(
    id: '11',
    title: 'Askamaya',
    artist: 'Teni',
    album: 'Evermore',
    duration: '2:31',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  id: '5-playlist',
  name: 'Best African Songs 2021 - beats to Party',
  imageURL: 'assets/afro_playlist.jpeg',
  description: 'A daily selection of chill beats - perfect to help you party',
  creator: 'Ycee',
  duration: '2h48 min',
  followers: '5,351,685',
  songs: _lofihiphopMusic,
);
