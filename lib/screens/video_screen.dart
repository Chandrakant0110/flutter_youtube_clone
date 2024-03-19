import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_youtube_ui/data.dart';
import 'package:flutter_youtube_ui/screens/nav_screen.dart';
import 'package:flutter_youtube_ui/widgets/widgets.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  final Video video;

  const VideoScreen({Key? key, required this.video}) : super(key: key);
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  ScrollController? _scrollController;

  late ChewieController chewieCtrl;
  late VideoPlayerController videoPlayerCtrl;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    videoPlayerCtrl = VideoPlayerController.network(widget.video.videoUrl);
    chewieCtrl = ChewieController(
      videoPlayerController: videoPlayerCtrl,
      autoPlay: true,
      aspectRatio: 16 / 9,
      placeholder: Center(
        child: Image.network(widget.video.thumbnailUrl),
      ),
    );
  }

  @override
  void didUpdateWidget(VideoScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.video != oldWidget.video) {
      videoPlayerCtrl.dispose();
      videoPlayerCtrl = VideoPlayerController.network(widget.video.videoUrl);
      chewieCtrl = ChewieController(
        videoPlayerController: videoPlayerCtrl,
        autoPlay: true,
        aspectRatio: 16 / 9,
        placeholder: Center(
          child: Image.network(widget.video.thumbnailUrl),
        ),
      );
    }
  }

  @override
  void dispose() {
    chewieCtrl.dispose();
    videoPlayerCtrl.dispose();
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context
          .read(miniPlayerControllerProvider)
          .state
          .animateToHeight(state: PanelState.MAX),
      child: Scaffold(
        body: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: CustomScrollView(
            controller: _scrollController,
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: Consumer(
                  builder: (context, watch, _) {
                    final selectedVideo = watch(selectedVideoProvider).state;
                    return SafeArea(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 220.0,
                                width: double.infinity,
                                child: Chewie(
                                  controller: chewieCtrl,
                                ),
                              ),
                              IconButton(
                                iconSize: 30.0,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                onPressed: () => context
                                    .read(miniPlayerControllerProvider)
                                    .state
                                    .animateToHeight(state: PanelState.MIN),
                              ),
                            ],
                          ),
                          VideoInfo(video: selectedVideo!),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final video = suggestedVideos[index];
                    return VideoCard(
                      video: video,
                      hasPadding: true,
                      onTap: () => _scrollController!.animateTo(
                        0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      ),
                    );
                  },
                  childCount: suggestedVideos.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
