import 'package:flutter/material.dart';
import 'package:maan2_api/ui/product_details/providers/product_details_provider.dart';
import 'package:provider/provider.dart';


class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor:Colors.grey,
      centerTitle: true,
      elevation: 0,
        title: Text('Product Details'
,style: TextStyle(color: Colors.black),),
      ),
      body: Consumer<ProductDetailsProvider>(
        builder: (context, provider, x) {
          return provider.product == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                 
                      margin: EdgeInsets.all(20),
                      child:
                      Card(
      elevation: 10,
      margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffdddddd),
        ),child:
                      
                       Image.network(provider.product.image),
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                      ),
                    ),

                   
                    Text('Product Name :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.grey),),
                    Text(provider.product.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                 Container(padding: EdgeInsets.all(20),),
                    Text('Price:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.grey)),
                    Text(provider.product.price.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Container(padding: EdgeInsets.all(20),),
                    Text(provider.product.description,style: TextStyle(fontSize: 13,backgroundColor: Colors.grey),)
                 
                  ],
                );
        },
      ),
    );
  }
}






 