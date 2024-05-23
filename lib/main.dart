import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Event {
  final String name;
  final String date;
  final String location;
  final String image; // URL or path to the image

  Event({
    required this.name,
    required this.date,
    required this.location,
    required this.image,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample event data
    List<Event> events = [
      Event(
        name: 'Basketball Tournament',
        date: 'June 15-20, 2024',
        location: 'City Arena',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX7yA86KOLEVc1vjcnZUwxVUnoj38RPX9LtQ&s',
      ),
      Event(
        name: 'Tennis Championship',
        date: 'July 10-15, 2024',
        location: 'Tennis Club',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ270V2LW4FEEEwTsNDgJQRvM8OT8bXF4bp-A&s',
      ),
      Event(
        name: 'Soccer Match',
        date: 'August 5, 2024',
        location: 'Main Stadium',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0HoQllcNTJIG6JROUKa4TlZuTA3tYOBC8ag&s',
      ),
      Event(
        name: 'Golf Open',
        date: 'September 1-3, 2024',
        location: 'Golf Course XYZ',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB11Zjs0KjaVLLto9_vcL1gQU-Tr0XD4ODYA&s',
      ),
      Event(
        name: 'Marathon',
        date: 'October 20, 2024',
        location: 'City Streets',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2haH2LMVTf1ET62bqLYPVLVYrlkhoa9xow&s',
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Upcoming Sports Events'),
        ),
        body: ListView.builder(
          itemCount: events.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        events[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.network(
                        events[index].image,
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Date: ${events[index].date}',
                      ),
                      Text(
                        'Location: ${events[index].location}',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
