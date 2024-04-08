import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body:  ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/003/623/626/non_2x/sunset-lake-landscape-illustration-free-vector.jpg',
            name: 'Sunset lake'),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://121clicks.com/wp-content/uploads/2023/11/natural-landscape-photography-awards-winners-13.jpg',
            name: 'Natural landscape photography'),
        ],
      ),
    );
  }
}

