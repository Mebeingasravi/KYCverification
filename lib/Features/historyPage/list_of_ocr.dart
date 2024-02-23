import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget historyListView(historyData) {
  historyData = historyData.reversed.toList();
  return ListView.builder(
    itemBuilder: (context, index) {
      if (historyData.length != 0) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.yellow, width: 1),
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${index + 1}'),
                    IconButton(
                      onPressed: () async {
                        await Clipboard.setData(
                          ClipboardData(
                            text: historyData[index],
                          ),
                        );
                      },
                      icon: const Icon(Icons.copy_outlined),
                    )
                  ],
                ),
                Text(historyData[index]),
              ],
            ),
          ),
        );
      } else {
        return const Center(child: Text('No History found'));
      }
    },
    itemCount: historyData.length,
  );
}

/**
 * 
 * ? Read Shared Pref data for showing scanned image text to easy access and copy
 * ! only uncomment after testing.
 */

// void readShardPrefValues() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   final String? action = prefs.getString('action');
//   print(action);
// }
