import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String name;
  final int startPrice;
  final String imageUrl;

  const ItemWidget(
      {Key? key,
      required this.name,
      required this.startPrice,
      required this.imageUrl})
      : super(key: key);

  Widget get _getImageNetwork => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.network(
          imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
  );

  Widget get _getInfo => Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'preço R\$$startPrice',
          style: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 10,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Stack(
        children: <Widget>[
          _getImageNetwork,
          _getInfo,
        ],
      ),
    );
  }
}
