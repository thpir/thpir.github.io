import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/global_variables.dart';

class PortfolioNavbar extends StatelessWidget {
  const PortfolioNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: IconButton(
                    hoverColor: accentColor1,
                    onPressed: () {
                          js.context.callMethod('open', ['https://be.linkedin.com/in/thijs-pirmez-973327230']);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.linkedinIn,
                      color: onPrimaryActive,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: IconButton(
                    hoverColor: accentColor1,
                    onPressed: () {
                      js.context.callMethod('open', ['https://g.dev/thpir']);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.android,
                      color: onPrimaryActive,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: IconButton(
                    hoverColor: accentColor1,
                    onPressed: () {
                      js.context.callMethod('open', ['https://github.com/thpir']);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: onPrimaryActive,
                    )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Desgned & Built by Thijs Pirmez',
              style: TextStyle(color: onPrimaryActive),
            ),
          ),
        ],
      ),
    );
  }
}