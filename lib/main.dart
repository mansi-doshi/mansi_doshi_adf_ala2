import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List products = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    final response = await http
        .get(Uri.parse('https://dummyjson.com/products?limit=20'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      setState(() {
        products = data['products'];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List (20 Items) 🛍"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: products.length,   // This will be 20
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.symmetric(
                horizontal: 12, vertical: 6),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Image.network(
                product['thumbnail'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                product['title'],
                style: const TextStyle(
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                product['description'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                "\$${product['price']}",
                style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}