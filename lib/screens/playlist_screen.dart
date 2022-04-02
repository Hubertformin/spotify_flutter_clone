import 'package:flutter/material.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/widgets/widgets.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;
  const PlaylistScreen({Key? key, required this.playlist}) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leadingWidth: 140.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: const Icon(Icons.chevron_left, size: 24.0),
                  )),
              const SizedBox(width: 16.0),
              InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                        color: Colors.black26, shape: BoxShape.circle),
                    child: const Icon(Icons.chevron_right, size: 24.0),
                  )),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
                primary: Theme.of(context).iconTheme.color),
            icon: const Icon(Icons.account_circle_outlined, size: 30.0),
            label: Text('Hubert Formin'),
          ),
          // const SizedBox(
          //   width: 6.0,
          // ),
          IconButton(
            padding: const EdgeInsets.only(),
            icon: const Icon(Icons.keyboard_arrow_down, size: 30.0),
            onPressed: () {},
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              const Color(0xFF3CAF50),
              Theme.of(context).backgroundColor
            ],
                stops: const [
              0,
              0.3
            ])),
        child: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
            children: [
              PlaylistHeader(playlist: widget.playlist),
              TracksList(tracks: widget.playlist.songs)
            ],
          ),
        ),
      ),
    );
  }
}
