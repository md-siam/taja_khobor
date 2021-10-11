
class JobModel {
  final String description, iconUrl, location, salary, title;
  final List<String> photos;

  JobModel(
      {this.photos,
        this.description,
        this.iconUrl,
        this.location,
        this.salary,
        this.title});
}

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

List<JobModel> jobList = [
  JobModel(
    description:
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl:
    "assets/images/jobs/microsoft_box.png",
    location: "Austin, TX",
    title: "Flutter Developer",
    salary: "\$70,000 - 120,000\$",
    photos: [
      "assets/images/jobs/image_0.jpg",
      "assets/images/jobs/image_1.png",
      "assets/images/jobs/image_2.png",
      "assets/images/jobs/image_3.png",
    ],
  ),
  JobModel(
    description:
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl:
    "assets/images/jobs/facebook.png",
    location: "Company, San Francisco, CA",
    title: "Web Developer",
    salary: "\$50,000 - 80,000\$",
    photos: [
      "assets/images/jobs/image_0.jpg",
      "assets/images/jobs/image_1.png",
      "assets/images/jobs/image_2.png",
      "assets/images/jobs/image_3.png",
    ],
  ),
  JobModel(
    description:
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl:
    "assets/images/jobs/tesla.png",
    location: "Company, San Francisco, CA",
    title: "Backend Developer",
    salary: "\$170,000 - 230,000\$",
    photos: [
      "assets/images/jobs/image_0.jpg",
      "assets/images/jobs/image_1.png",
      "assets/images/jobs/image_2.png",
      "assets/images/jobs/image_3.png",
    ],
  ),
  JobModel(
    description:
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl:
    "assets/images/jobs/microsoft_box.png",
    location: "Company, San Francisco, CA",
    title: "Web Designer",
    salary: "\$30,000 - 60,000\$",
    photos: [
      "assets/images/jobs/image_0.jpg",
      "assets/images/jobs/image_1.png",
      "assets/images/jobs/image_2.png",
      "assets/images/jobs/image_3.png",
    ],
  ),
  JobModel(
    description:
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl:
    "assets/images/jobs/tesla.png",
    location: "Company, Austin, TX",
    title: "AI Developer",
    salary: "\$120,000 - 160,000\$",
    photos: [
      "assets/images/jobs/image_0.jpg",
      "assets/images/jobs/image_1.png",
      "assets/images/jobs/image_2.png",
      "assets/images/jobs/image_3.png",
    ],
  ),
];