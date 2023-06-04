import 'package:ecomm/services/apiService.dart';
import 'package:ecomm/screens/product_detail.dart';
import 'package:flutter/material.dart';

class CategoryProductScreen extends StatelessWidget {
  // const CategoryProductScreen({ Key? key }) : super(key: key);
  final String categoryName;

  CategoryProductScreen(this.categoryName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName.toUpperCase()),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiService().getProductByCategory(categoryName),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  final item = snapshot.data[index];

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
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
