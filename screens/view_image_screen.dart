import 'dart:io';
import 'package:flutter/material.dart';

class ViewImageScreen extends StatelessWidget {
  final String imagePath;
  const ViewImageScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ver Imagen'),
      ),
      body: Center(child: Image.file(File(imagePath))),
    );
  }
}
