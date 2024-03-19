class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Chandrakant Sahu',
  profileImageUrl:
      'https://lh3.googleusercontent.com/a/ACg8ocKvW4UQlryh2xVSgnvCexv-1UgQdNdI1--_naD1l4aq75TJ=s96-c-rg-br100',
  subscribers: '100K',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: currentUser,
    title: 'Video Presentation Of The Outer Space',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1488415032361-b7e238421f1b?q=80&w=1769&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    duration: '0:28',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
    videoUrl:
        'https://vod-progressive.akamaized.net/exp=1710852367~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4349%2F14%2F371745222%2F1543748356.mp4~hmac=cd06b60c3943986f4fa1701c25c4dd13cea997fa99003a5d2a42ef9aa237199e/vimeo-prod-skyfire-std-us/01/4349/14/371745222/1543748356.mp4',
  ),
  Video(
    author: currentUser,
    id: 'vrPk6LB9bjo',
    title: 'Beautiful Butterlies Video',
    thumbnailUrl:
        'https://images.unsplash.com/photo-1524087086535-177f3752451c?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    duration: '22:06',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '8',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: currentUser,
    title: 'Big Buck Bunny Funniest Clips',
    thumbnailUrl:
        'https://1.bp.blogspot.com/-r8moSqmA574/XoIWqdaQFxI/AAAAAAAAEvw/qfrHTGCfeJYX2PhpF2i-1IK7na6bnad7QCLcBGAsYHQ/s1600/Ver%2Bcorto%2Banimado%2BBig%2BBuck%2BBunny%2BOnline.png',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '4',
    videoUrl:
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  ),
];

final List<Video> suggestedVideos = [
  Video(
    id: 'rJKN_880b-M',
    author: currentUser,
    title: 'Flutter Netflix Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/rJKN_880b-M/0.jpg',
    duration: '1:13:15',
    timestamp: DateTime(2020, 8, 22),
    viewCount: '32K',
    likes: '1.9k',
    dislikes: '7',
    videoUrl:
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  ),
  Video(
    id: 'HvLb5gdUfDE',
    author: currentUser,
    title: 'Flutter Facebook Clone Responsive UI Tutorial | Web and Mobile',
    thumbnailUrl: 'https://i.ytimg.com/vi/HvLb5gdUfDE/0.jpg',
    duration: '1:52:12',
    timestamp: DateTime(2020, 8, 7),
    viewCount: '190K',
    likes: '9.3K',
    dislikes: '45',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
  Video(
    id: 'h-igXZCCrrc',
    author: currentUser,
    title: 'Flutter Chat UI Tutorial | Apps From Scratch',
    thumbnailUrl: 'https://i.ytimg.com/vi/h-igXZCCrrc/0.jpg',
    duration: '1:03:58',
    timestamp: DateTime(2019, 10, 17),
    viewCount: '358K',
    likes: '20k',
    dislikes: '85',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  ),
];
