class Project {
  final String title;
  final String description;
  final String icon;
  final String downloadLink;
  final int id;
  final List<String> screenshots;
  final String company;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.downloadLink,
    required this.id,
    this.screenshots = const [],
    this.company = "Personal project",
  });
}
