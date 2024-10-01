import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp ({Key?  key}) : super (key : key);
  const MyApp({super.key});

  Widget build(BuildContext context) {
    Widget titlesection = Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'Kandersteg, Sitzerland',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41')
          ],
        ));
    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Nur Ardina Anzilia Putri | 362358302044"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'danau.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            titlesection,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: const Text(
                            'Oeschien Lake Campground',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Button Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(Icons.call, 'CALL'),
                _buildButtonColumn(Icons.near_me, 'ROUTE'),
                _buildButtonColumn(Icons.share, 'SHARE'),
              ],
            ),
            // Text Section
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text(
                'Oeschinen Lake is one of the largest Alpine Lakes in Switzerland. '
                'Located near Kandersteg in the Bernese Oberland, it is surrounded '
                'by beautiful mountains and is a popular tourist destination.',
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
