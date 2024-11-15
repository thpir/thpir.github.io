import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/about_section/about_section.dart';
import 'package:portfolio/widgets/education_section/education_section.dart';
import 'package:portfolio/widgets/home_section/home_section.dart';
import 'package:portfolio/widgets/portfolio_appbar.dart';
import 'package:portfolio/widgets/portfolio_navbar.dart';
import 'package:portfolio/widgets/projects_section/project_section.dart';
import 'package:provider/provider.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    double width = MediaQuery.of(context).size.width;
    List<Widget> portfolioContent = [
      HomeSection(width: width),
      const AboutSection(),
      EducationSection(width: width),
      const ProjectSection(),
      const PortfolioNavbar()
    ];
    
    return Scaffold(
      appBar: const PortfolioAppbar(),
      backgroundColor: primaryColor,
      body: Container(
        color: onPrimaryActive,
        child: SingleChildScrollView(
          key: controller.listViewKey,
          controller: controller.scrollController,
          child: Column(
            children: portfolioContent,
          ),
        ),
      ),
    );
  }
}
