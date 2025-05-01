import 'package:flutter/material.dart';

class ProductUploadPage extends StatefulWidget {

  const ProductUploadPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductUploadPageState();
  }

}

class _ProductUploadPageState extends State<ProductUploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Product')),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Text('add product...'),)
    );
  }

}