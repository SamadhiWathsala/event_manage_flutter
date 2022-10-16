
class Event{
  final String id;
  final String title;
  final String description;
  final String bannerImage;
  final String time;
  final String venue;
  final String createdAt;

  Event({
    required this.title,
    required this.id,
    required this.bannerImage,
    required this.description,
    required this.time,
    required this.venue,
    required this.createdAt
  });

  factory Event.fromMap(Map<String, dynamic> data){
    return Event(
        title: data['title'],
        id: data['id'],
        bannerImage: 'assets/images/banner.png',
        description: data['description'],
        time: data['time'],
        venue: data['venue'],
        createdAt: data['createdAt']
    );
  }
}