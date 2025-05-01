import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {

  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(product['title'] ?? '제품 상세')),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              product['imageUrl'] != null
                ? Center(
                    child: Image.asset(
                      product['imageUrl'],
                      height: 200,
                    ),
                  )
                : const Center(child: Icon(Icons.image, size:100)),
              const SizedBox(height: 20),
              Text(
                product['title'] ?? '없는 제품명',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text('제품카테고리: ${product['category'] ?? '없음'}'),
              const SizedBox(height: 10),
              Text('가격: \₩${product['cost']?.toStringAsFixed(2) ?? 'N/A'}'),
            ],

          ),),
    );

  }
  
}