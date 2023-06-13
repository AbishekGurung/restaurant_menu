import 'package:flutter/material.dart';
import 'package:login_app/description.dart';
import 'data.dart';
import 'package:login_app/cart.dart';




class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Restaurent Menu App'),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton( 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                  return cart();
              }));
            } 
          , icon: const Icon(Icons.shopping_cart),)
        ],
      ),


      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //space in between horizontal direction
          mainAxisSpacing: 20, //space in vertical space
          crossAxisSpacing: 20,
          ),
          

        itemBuilder: (context, index) {
         return GestureDetector(
          onTap: (){
           Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Description(
                      image: data[index]["image"].toString(),
                      name: data[index]['name'].toString(),
                      price: data[index]["price"].toString(),
                      description: data[index]["description"].toString(),
                    );
                  },
                ));
          },
           child: Card(child: Column(
            
                children: [
                  Image.network(
                    data[index]["image"].toString(),
                    height: 80,
                   // width: 40,
         
                    
         
                  ),
         
                  Center(
                    child: Text(data[index]["name"].toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
         
         
                  Text("Rs.${data[index]["price"]}",
                  style: const TextStyle(
                    fontSize: 20,
                   
                  ),
                  ),
                ],
              ),),
         );
        },
      ),
    );
  }
}

