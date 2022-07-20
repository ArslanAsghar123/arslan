import 'package:flutter/material.dart';
import 'package:profile/views/contact/contact_mobile.dart';
import 'package:profile/views/contact/contact_web.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const ContactViewWeb(),
      mobile: const ContactViewMobile(),
      tablet: const ContactViewMobile(),
    );
  }
}
