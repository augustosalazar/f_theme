import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return width > 600
        ? Container(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            child: Center(child: SizedBox(width: 600, child: CompleteBody())))
        : CompleteBody();
  }
}

class CompleteBody extends StatelessWidget {
  const CompleteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme example'),
      ),
      body: ContentWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(child: Text('My text')),
        ElevatedButton(
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
            child: const Text('ElevatedButton - Change theme light/dark')),
        OutlinedButton(
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
            child: const Text('Outlined Button - Change theme light/dark')),
        TextButton(
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
            child: const Text('Text Button - Change theme light/dark')),
        ElevatedButton(
            onPressed: () {
              Get.changeThemeMode(ThemeMode.system);
            },
            child: const Text('Change theme to system')),
      ],
    );
  }
}
