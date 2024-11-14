import 'package:portfolio/models/app_store_link.dart';

class Project implements Comparable<Project> {
  final String title;
  final String description;
  final String icon;
  final List<AppStoreLink> downloadLinks;
  final int id;
  final List<String> screenshots;
  final String company;
  final String route;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.downloadLinks,
    required this.id,
    this.screenshots = const [],
    this.company = "Personal project",
    required this.route,
  });

  @override
  int compareTo(Project other) => company.compareTo(other.company);
}
