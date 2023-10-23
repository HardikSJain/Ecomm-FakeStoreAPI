import 'package:ecomm/services/apiService.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiService Tests', () {
    late ApiService apiService;

    setUp(() {
      apiService = ApiService();
    });

    test('Get All Posts Test', () async {
      var posts = await apiService.getAllPosts();
      expect(posts, isNotNull);
      expect(posts.length, greaterThan(0));
    });

    test('Get Single Product Test', () async {
      var productId = 1; // Provide a valid product ID
      var product = await apiService.getSingleProduct(productId);
      expect(product, isNotNull);
      expect(product['id'], productId);
    });

    test('Get All Categories Test', () async {
      var categories = await apiService.getAllCategory();
      expect(categories, isNotNull);
      expect(categories.length, greaterThan(0));
    });

    test('Get Products By Category Test', () async {
      var categoryName = 'electronics'; // Provide a valid category name
      var products = await apiService.getProductByCategory(categoryName);
      expect(products, isNotNull);
      expect(products.length, greaterThan(0));
    });

    test('User Login Test', () async {
      var username = 'testuser'; // Provide a valid username
      var password = 'password123'; // Provide a valid password
      var response = await apiService.userLogin(username, password);
      expect(response, isNotNull);
      expect(response.containsKey('token'), true);
    });

    test('Update Cart Test', () async {
      var userId = 1; // Provide a valid user ID
      var productId = 1; // Provide a valid product ID
      var response = await apiService.updateCart(userId, productId);
      expect(response, isNotNull);
      expect(response.containsKey('message'), true);
    });

    test('Delete Cart Test', () async {
      var userId = '1'; // Provide a valid user ID
      await apiService.deleteCart(userId);
      // If the delete request is successful, it won't return anything.
      // So, if the function doesn't throw an error, it is considered successful.
    });
  });
}
