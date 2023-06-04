import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future getAllPosts() async {
    final allProductUrl = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(allProductUrl);

    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future getSingleProduct(int id) async {
    final singleProductUrl = Uri.parse("https://fakestoreapi.com/products/$id");
    final response = await http.get(singleProductUrl);

    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future getAllCategory() async {
    final allCategoryUrl =
        Uri.parse("https://fakestoreapi.com/products/categories");
    final response = await http.get(allCategoryUrl);

    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future getProductByCategory(String catName) async {
    final fetchProductCategoryUrl =
        Uri.parse("https://fakestoreapi.com/products/category/$catName");
    final response = await http.get(fetchProductCategoryUrl);

    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  Future getCart(String userId) async {
    final fetchCartProducts =
        Uri.parse("https://fakestoreapi.com/carts/$userId");
    final response = await http.get(fetchCartProducts);

    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  //POST REQUEST

  Future userLogin(String username, String password) async {
    final loginUrl = Uri.parse("https://fakestoreapi.com/auth/login");
    final response = await http.post(loginUrl, body: {
      'username': username,
      'password': password,
    });
    if (response.statusCode == 200) {
      // Successful login
      return json.decode(response.body);
    } else if (response.statusCode == 400) {
      // Invalid credentials
    } else {
      // Other error
    }
  }

  //PUT REQUEST

  Future updateCart(int userId, int productId) async {
    final updateCartUrl = Uri.parse("https://fakestoreapi.com/carts/$userId");
    final response = await http.put(
      updateCartUrl,
      body: json.encode({
        "userId": userId,
        "date": DateTime.now().toString(),
        "products": [
          {
            "productId": productId,
            "quantity": 1,
          }
        ],
      }),
      headers: {"Content-Type": "application/json"},
    );

    print(response.statusCode);
    print(response.body);
    return json.decode(response.body);
  }

  //DELETE REQUEST

  // Future deleteCart(String userId) async {
  //   final deleteCartUrl = Uri.parse("https://fakestoreapi.com//carts/$userId");
  //   final response = await http.delete(deleteCartUrl);
  //   print(response.statusCode);
  //   print(response.body);
  //   return json.decode(response.body);
  // }

  Future<void> deleteCart(String userId) async {
    final deleteCartUrl = Uri.parse("https://fakestoreapi.com/carts/$userId");
    try {
      final response = await http.delete(deleteCartUrl);
      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        // Cart deleted successfully
        final jsonResponse = json.decode(response.body);
        print(jsonResponse);
      } else {
        // Error deleting cart
      }
    } catch (error) {
      print('Error deleting cart: $error');
    }
  }
}
