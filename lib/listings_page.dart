import 'package:airbnb_listing_widget/widgets/listing_card.dart';
import 'package:flutter/material.dart';

class ListingsPage extends StatelessWidget {
  const ListingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // image urls to be displayed
    final List<String> listingImages = [
      'https://a0.muscache.com/im/pictures/e25a9b25-fa98-4160-bfd1-039287bf38b6.jpg?im_w=1200',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/f4f7b242-db33-46fc-9080-c3d6a6fd55ec.jpeg?im_w=720',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/372e7d6f-7fb9-4668-92f0-25bb9a346814.jpeg?im_w=720',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/4756e699-f474-4ca7-8b77-06b12715a6cb.jpeg?im_w=1200',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/fca892a4-3481-4ad1-9f92-404feaa42e9f.jpeg?im_w=720',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/f95b0a2e-0272-469e-a56c-433b9cc4ffdb.jpeg?im_w=1200',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/97108083-280f-4e0e-9f1b-7a4b0dd34c44.jpeg?im_w=720',
      'https://a0.muscache.com/im/pictures/miso/Hosting-34113796/original/6308de24-4c50-4bb6-8a66-ae42b45a2ac2.jpeg?im_w=1200'
    ];

    // image widget showing the image from the network (url)
    final List<Widget> listingData = List.generate(
      listingImages.length,
      (index) => Image.network(
        listingImages[index],
        fit: BoxFit.cover,
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: ListingCard(listingData: listingData),
        ),
      ),
    );
  }
}
