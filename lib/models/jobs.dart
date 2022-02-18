List<String> jobsCategories = [
  "IT",
  "Fantasy",
  "Science fiction",
  "Horror",
  "Thriller",
  "Survival",
  "Historical",
  "Stealth",
  "Comedy",
  "Business",
  "Drama",
  "Non-fiction",
  "Sandbox",
  "Educational",
  "Kids",
  "Open world"
];

class JobModel {
  final String? description, iconUrl, location, salary, title;
  final List<String>? photos;

  JobModel(
      {this.photos,
      this.description,
      this.iconUrl,
      this.location,
      this.salary,
      this.title});
}
