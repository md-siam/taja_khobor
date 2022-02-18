List<String> divisionCategories = [
  'Dhaka',
  'Chittagong',
  'Sylhet',
  'Khulna',
  'Rangpur',
  'Barisal',
  'Mymensingh',
];

class Post {
  String? authorName;
  String? authorImageUrl;
  String? timeAgo;
  String? imageUrl;
  String? description;
  int? like;
  int? dislike;

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
    this.description,
    this.like,
    this.dislike,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Md. Siam',
    authorImageUrl: 'assets/images/main/mdsiam.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/traffic_alert/169157577_1966710363491536_4047302796015554658_n.jpg',
    description:'Gabtoli',
    like: 250,
    dislike: 5,
  ),
  Post(
    authorName: 'Ibn Sina Orko',
    authorImageUrl: 'assets/images/traffic_alert/sina.png',
    timeAgo: '10 min',
    imageUrl: 'assets/images/traffic_alert/170963109_6035696049789600_1800755507933162986_n.jpg',
    description:'Ashulia',
    like: 350,
    dislike: 56,
  ),
  Post(
    authorName: 'Anika Alom',
    authorImageUrl: 'assets/images/traffic_alert/anika.png',
    timeAgo: '15 min',
    imageUrl: 'assets/images/traffic_alert/169067073_2942739335957428_9109722339493657169_n.jpg',
    description:'Mirpur-01',
    like: 20,
    dislike: 1,
  ),
  Post(
    authorName: 'Amil Hossain',
    authorImageUrl: 'assets/images/traffic_alert/amil.png',
    timeAgo: '15 min',
    imageUrl: 'assets/images/traffic_alert/170299566_4549063911777296_368914305870284775_n.jpg',
    description:'Dhanmondi',
    like: 250,
    dislike: 5,
  ),
];