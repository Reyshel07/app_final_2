import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const name = 'ThirdScreen';
  static const path = '/ThirdScreen';
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;

    final List<Map<String, String>> products = [
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 1',
        'price': '\$10.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 2',
        'price': '\$15.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 3',
        'price': '\$20.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 4',
        'price': '\$25.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 5',
        'price': '\$30.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 6',
        'price': '\$35.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 7',
        'price': '\$40.00',
      },
      {
        'image': 'https://via.placeholder.com/150',
        'description': 'Producto 8',
        'price': '\$45.00',
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -screenSize.width * 0.175,
            left: -screenSize.width * 0.175,
            child: CircleAvatar(
              radius: screenSize.width * 0.35,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: -screenSize.width * 0.2,
            right: -screenSize.width * 0.2,
            child: CircleAvatar(
              radius: screenSize.width * 0.4,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.9,
            right: screenSize.width * 0.4,
            child: CircleAvatar(
              radius: screenSize.width * 0.50,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.75,
            left: screenSize.width * 0.5,
            child: CircleAvatar(
              radius: screenSize.width * 0.50,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.05,
                  vertical: screenSize.height * 0.05,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Buscar productos',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: smallSpacing,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(smallSpacing),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: smallSpacing,
                    mainAxisSpacing: smallSpacing,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.network(
                                products[index]['image']!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              products[index]['description']!,
                              style: TextStyle(
                                fontSize: letterSize * 0.015,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              products[index]['price']!,
                              style: TextStyle(
                                fontSize: letterSize * 0.015,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
