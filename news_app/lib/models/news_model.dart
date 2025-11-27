class NewsModel {
  final String title;
  final String description;
  final String image;

  NewsModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<NewsModel> getNews() {
  return [
    NewsModel(
      title: "Breaking News: Market Hits All-Time High",
      description:
          "The stock market reached an all-time high today, driven by strong earnings reports and positive economic data.",
      image: "asset/business1.jpg",
    ),
    NewsModel(
      title: "Sports Update: Local Team Wins Championship",
      description:
          "In an exciting finale, the local team clinched the championship title after a nail-biting match.",
      image: "asset/business2.jpg",
    ),
    NewsModel(
      title: "Health Alert: New Wellness Trends Emerging",
      description:
          "Experts discuss the latest wellness trends that are gaining popularity among health-conscious individuals.",
      image: "asset/business3.jpg",
    ),
    NewsModel(
      title: "Technology: Innovations in AI",
      description:
          "Artificial Intelligence continues to evolve, with new innovations transforming various industries.",
      image: "asset/business4.jpg",
    ),
    NewsModel(
      title: "Entertainment: Upcoming Movie Releases",
      description:
          "A sneak peek into the most anticipated movie releases set to hit theaters this season.",
      image: "asset/business5.jpg",
    ),
  ];
}
