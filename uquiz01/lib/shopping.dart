import 'package:flutter/material.dart';
import 'package:uquiz01/home.dart';


class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    const images = [
      'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
      "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
      "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
      "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
      "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('UQuiz Shopping'),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Card(
                child: SizedBox(
                  width: 200,
                  height: 200, // กำหนดความสูงของการ์ด
                  child: Image.network(images[index]),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // ปรับขอบโค้งมน
                ),
              ),
            );
          },
          itemCount: 5),
      bottomNavigationBar: NavigationBar(
          backgroundColor: const Color.fromARGB(255, 238, 85, 136),
          shadowColor: Colors.black,
          onDestinationSelected: (index) {
            print('select page : ${index + 1}');
            if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            }
          },
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}