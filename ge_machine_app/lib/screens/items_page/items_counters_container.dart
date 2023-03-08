import 'package:flutter/material.dart';
import 'package:ge_machine_app/screens/items_page/green_divider.dart';
import 'package:ge_machine_app/screens/items_page/items_counters.dart';

class ItemsCountersContainer extends StatelessWidget {
  const ItemsCountersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green, width: 2),
      ),
      padding: EdgeInsets.all(36),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ItemsCounters(itemName: 'Plastic', itemCounter: 0),
          GreenDivider(),
          ItemsCounters(itemName: 'Cans', itemCounter: 0),
          GreenDivider(),
          ItemsCounters(itemName: 'Points', itemCounter: 0)
        ],
      ),
    );
  }
}
