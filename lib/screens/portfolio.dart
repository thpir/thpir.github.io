import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/about_section/about_section.dart';
import 'package:portfolio/widgets/education_section/education_section.dart';
import 'package:portfolio/widgets/home_section/home_section.dart';
import 'package:portfolio/widgets/portfolio_navbar.dart';
import 'package:portfolio/widgets/projects_section/project_section.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Widget> portfolioContent = [
      HomeSection(width: width),
      const AboutSection(),
      EducationSection(width: width),
      const ProjectSection(),
      const PortfolioNavbar()
    ];
    return Container(
      color: onPrimaryActive,
      child: SingleChildScrollView(
        child: Column(
          children: portfolioContent,
        ),
      ),
    );
  }
}