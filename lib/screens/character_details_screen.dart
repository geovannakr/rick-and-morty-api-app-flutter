import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/character.dart';


class CharacterDetailsScreen extends StatelessWidget {
  final Character character; //recebe o personagem

  const CharacterDetailsScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name),
      centerTitle : true,
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Hero(tag: 'hero-${character.name}', child: CachedNetworkImage(imageUrl: character.image))
        ],
      ),
    )
    );

  }
}