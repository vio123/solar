import 'package:flutter/material.dart';
import 'package:solar/screens/home/home_view_desktop.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const HomeViewDesktop();
  }
}
