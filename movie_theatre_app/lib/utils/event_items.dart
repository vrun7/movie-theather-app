import 'package:flutter/material.dart';
import 'package:movie_theatre_app/Widgets/item_block.dart';
import 'package:movie_theatre_app/model/event_model.dart';

class EventItems extends StatelessWidget {
  final List<EventModel> events;
  const EventItems({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 230,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (_, i) {
          return ItemBlock(
            model: events[i],
            onTap: (model) {},
          );
        },
      ),
    );
  }
}
