import 'package:flutter/material.dart';


class Product{
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main() => runApp(MaterialApp(
  title: '参数传递',
  home: ProductListView(products: List.generate(20, (i) => Product('Product $i', 'This is product serial number is: $i'))),
));


class ProductListView extends StatelessWidget {

  final List<Product> products;

  ProductListView({Key key, @required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProductList')),

      body: ListView.builder(
          itemCount: products.length,
          itemBuilder:(context,index){
            return ListTile(
              title: Text(products[index].title),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(product: products[index])));
              },
            );
          }
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}'),),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}


