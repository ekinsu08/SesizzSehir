import 'package:flutter/material.dart';

import '../lib/services/animalModel.dart';

class PetPageView extends StatelessWidget {
   PetPageView({super.key});



  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
        Center(
          child:Image.network(
            'https://kedicinsleri.org/wp-content/uploads/2021/01/Sfenks-kedisi-682x400.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Image.network(
            'https://img-s3.onedio.com/id-61e7f8eeea29a1a83638c9b2/rev-0/w-600/h-750/f-jpg/s-1c7728299f9df5bb1ec144ad0f8ed2b0718f790b.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Image.network(
            'https://www.patigram.com/wp-content/uploads/2023/02/Munchkin-kedi.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
