import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // TODO: Implement logout functionality
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: const [
                        Icon(Icons.work_outline),
                        SizedBox(width: 5),
                        Text('Software Engineer'),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Work',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text('Work item $index'),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Performance',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Performance rating'),
                  const SizedBox(height: 10),
                  // TODO: Implement performance graph
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement view more performance functionality
                    },
                    child: const Text('View More Performance'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
