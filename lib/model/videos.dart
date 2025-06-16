class Videos {
  String title, image, description, link;
  Videos(this.title, this.image, this.description, this.link);

  static List<Videos> listOfVideos = [
    Videos('Apple', 'Assets/Images/applev.png', 'Animated Apple',
        'https://www.youtube.com/watch?v=F5RNFiT1GNY'),
    Videos('Pear', 'Assets/Images/pearv.png', 'Animated Pear',
        'https://www.youtube.com/watch?v=HTzU_3VmpKs'),
    Videos('Banana', 'Assets/Images/Banana (2).png', 'Animated Banana',
        'https://www.youtube.com/watch?v=r-62Yp0c0Ug'),
    Videos('Apple', 'Assets/Images/applev.png', 'Animated Apple',
        'https://www.youtube.com/watch?v=F5RNFiT1GNY'),
    Videos('Pear', 'Assets/Images/pearv.png', 'Animated Pear',
        'https://www.youtube.com/watch?v=HTzU_3VmpKs'),
    Videos('Pear', 'Assets/Images/pearv.png', 'Animated Pear',
        'https://www.youtube.com/watch?v=HTzU_3VmpKs'),
    Videos('Banana', 'Assets/Images/Banana (2).png', 'Animated Banana',
        'https://www.youtube.com/watch?v=r-62Yp0c0Ug'),
  ];
}
