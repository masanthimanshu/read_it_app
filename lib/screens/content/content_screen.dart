import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hooked")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Hooked: How to Build Habit-Forming Products by Nir Eyal is a book that explores the psychology behind the creation of habit-forming products and provides insights into how companies can design products that capture users' attention and keep them engaged. The book is divided into four main chapters, each covering a different aspect of building habit-forming products.",
              ),
            ),
            const SizedBox(height: 15),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (e, index) {
                return const ListTile(
                  title: Text("Chapter 1: Trigger \n"),
                  subtitle: Text(
                    "This chapter introduces the concept of triggers, which are cues that prompt users to take action. Triggers can be either external (such as notifications or ads) or internal (emotions or thoughts). Eyal explains the two types of triggers: external triggers, which initiate an action through a notification or prompt, and internal triggers, which arise from the user's own thoughts or emotions. He discusses how to create products that tap into these triggers to encourage user engagement. \n\n",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
