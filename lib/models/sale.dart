List<String> saleCategories = [
  'Mobiles',
  'Electronics',
  'Vehicles',
  'Property',
  'Services',
  'Home & Living',
  'Fashion & Beauty',
  'Business & Industry',
  'Education',
  'Pets & Animals',
  'Agriculture',
  'Others',
];

class Sale {
  String? imageUrl;
  String? title;
  String? date;
  String? description;
  List<String>? screenshots;

  Sale({
    this.imageUrl,
    this.title,
    this.date,
    this.description,
    this.screenshots,
  });
}
