import 'package:flutter/material.dart';

class Slide {
  final String teamName;
  final String imageUrl;
  final String name;
  final String description;

  Slide({
    @required this.teamName,
    @required this.imageUrl,
    @required this.name,
    @required this.description,
  });
}

final slideList = [
  Slide(
    teamName: "Meet Core Team",
    imageUrl: 'assets/images/image1.jpg',
    name: 'Vishal Bhuta, Founder',
    description: 'The whole work of Beat The Virus Startup has primarily been intuitive in nature. I am lucky to be one of the mediums for coronavirus and long term health solutions. I am looking forward to give my best on an ongoing basis for beating the virus. May we join hands and succeed together.',
  ),
  Slide(
    teamName: "Meet Core Team",
    imageUrl: 'assets/images/image3.jpg',
    name: 'Salma Moosa, Strategic Consultant',
    description: 'Beat the Virus, is the need of the hour for all of us. The startup is driven with one point agenda by all  involved, making every person’s immunity strong enough to help us walk through this pandemic in the most healthy manner.',
  ),
  Slide(
    teamName: 'Meet Training Team',
    imageUrl: 'assets/images/image2.jpg',
    name: 'Vijaya Mahalakshmi',
    description: 'Vijaya is our Training Team Primary Contact, part of Human Potential Team, will be executing assignments,etc.',
  ),
  Slide(
    teamName: 'Meet Service Team',
    imageUrl: 'assets/images/image4.jpg',
    name: 'Nusrath Hafiz',
    description: 'Nusrath is leading our Services Team and is part of our Research Team.',
  ),

  Slide(
    teamName: 'Meet Product Team',
    imageUrl: 'assets/images/image5.jpg',
    name: 'Rochelle Carvalho',
    description: 'Rochelle is the Primary Contact of Product Engineering Team and is part of Social Media and Tech Teams. She will also will be working with us on Digital Marketing, Executing Assignments and integrating her Startup SportsUnited\'s offerings with BTV for reaching additional markets..',
  ),
  Slide(
    teamName: 'Meet Research Team',
    imageUrl: 'assets/images/image6.jpg',
    name: 'Poojitha Godi',
    description: 'Poojitha is leading our Research Team and is also part of our Social Media and Tech Teams.',
  ),

  Slide(
    teamName: 'Meet Human Potential Team',
    imageUrl: 'assets/images/image7.jpg',
    name: 'Aisha Mir',
    description: 'Will be involved in Social Media Marketing, Assignments.',
  ),
  Slide(
    teamName: 'Meet Tech Team',
    imageUrl: 'assets/images/image8.jpg',
    name: 'Durgesh Kekare',
    description: 'Technology Consultant - Our Tech Team Lead.',
  ),
  Slide(
    teamName: 'Meet Partnerships Team',
    imageUrl: 'assets/images/image10.jpg',
    name: 'Palaniappan Kaliyaperumal',
    description: 'Executive Consultant - Palaniappan is part of our Prodcut and Partnerships Teams.',
  ),
  Slide(
    teamName: 'Meet Social Media Team',
    imageUrl: 'assets/images/image9.jpg',
    name: 'Rahul B',
    description: 'Rahul B',
  ),
  Slide(
    teamName: 'Meet Happiness Team',
    imageUrl: 'assets/images/image11.jpg',
    name: 'Khushi D',
    description: 'Khushi D',
  ),
];
