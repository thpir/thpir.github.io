import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/portfolio_appbar.dart';
import 'package:portfolio/widgets/portfolio_body.dart';
import 'package:portfolio/widgets/portfolio_navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thijs Pirmez',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
          create: (_) => NavigationController(),
          child: const ResponsiveLayout()),
    );
  }
}

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
    Provider.of<NavigationController>(context, listen: false).initController();
  }

  @override
  void dispose() {
    super.dispose();
    Provider.of<NavigationController>(context, listen: false)
        .disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PortfolioAppbar(),
      body: PortfolioBody(),
      bottomNavigationBar: PortfolioNavbar()
    );
  }
}
