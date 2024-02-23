import 'package:flutter/material.dart';

Widget floatingBar(selectMedia) {
  return FloatingActionButton.extended(
    onPressed: selectMedia,
    icon: const Icon(Icons.add),
    label: const Text('Scan Image for OCR'),
  );
}
