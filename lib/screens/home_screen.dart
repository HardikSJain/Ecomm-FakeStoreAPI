import 'package:flutter/material.dart';
import 'package:ecomm/services/apiService.dart';
import 'package:ecomm/screens/all_category.dart';
import 'package:ecomm/screens/cart_screen.dart';
import 'package:ecomm/screens/product_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> allProducts = [];
  List<dynamic> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  Future<void> fetchAllProducts() async {
    final apiService = ApiService();
    final data = await apiService.getAllPosts();
    setState(() {
      allProducts = data;
      filteredProducts = data;
    });
  }

  void searchProducts(String query) {
    setState(() {
      filteredProducts = allProducts
          .where((product) =>
              product['title'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AllCategory()));
          },
          icon: Icon(Icons.view_list),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.purple),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.purple),
                ),
              ),
              onChanged: searchProducts,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final item = filteredProducts[index];

                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 200,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xFFE3DFFD),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 12,
                            bottom: 12,
                            left: 25,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.network(
                                  item['image'],
                                  width: double.maxFinite,
                                  height: 130.0,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 5,
                            left: 170,
                            child: SizedBox(
                              width: double.minPositive,
                              child: Text(
                                item['title'],
                                // style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 155,
                            right: 5,
                            left: 170,
                            child: SizedBox(
                              width: double.minPositive,
                              child: Text(
                                '\$ ${item['price'].toString()}',
                                // style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 140,
                            right: 5,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProductDetail(item['id']),
                                  ),
                                );
                              },
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                  color: Color.fromRGBO(128, 44, 110, 1),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
