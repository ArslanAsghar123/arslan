import 'package:flutter/material.dart';
import 'package:profile/views/projects/project_mobile.dart';
import 'package:profile/views/projects/project_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const ProjectViewWeb(),
      mobile: const ProjectViewMobile(),
      tablet: const ProjectViewMobile(),
    );
  }
}
