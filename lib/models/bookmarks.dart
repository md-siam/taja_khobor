List<String> bookmarksCategories = [
  'Business',
  'Politics',
  'Sports',
  'Technology',
  'Automobile',
  'Art',
  'National',
  'International',
  'Crime',
  'Lifestyle',
];

class Bookmark {
  String? imageUrl;
  String? title;
  String? date;
  String? description;
  List<String>? screenshots;

  Bookmark({
    this.imageUrl,
    this.title,
    this.date,
    this.description,
    this.screenshots,
  });
}
