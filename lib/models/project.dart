class Project {
  final String title;
  final String description;
  final String icon;
  final String downloadLink;
  final List<String> screenshots;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.downloadLink,
    this.screenshots = const [],
  });
}
