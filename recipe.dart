class Recipe {
  String name;
  String image;
  String rec;

  Recipe(
    this.name,
    this.image,
    this.rec,
  );

  static List<Recipe> turkey = [
    Recipe(
        'Roasted Turkey marinated in Pinapple Tartar',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/turkey.webp',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/turkeyrec.png'),
    Recipe(
        'Fresh American Gravy',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/gravy.jpeg',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/gravyrec.png')
  ];
  static List<Recipe> drink = [
    Recipe(
        'Lemon Mint Spitzer',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/lemon.webp',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/lemonrec.png'),
    Recipe(
        'Ginger Orange Mocktail',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/orange.webp',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/orangerec.png')
  ];
  static List<Recipe> dessert = [
    Recipe(
        'Pumpkin Pie',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/pumpkin.webp',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/pumpkinrec.png'),
    Recipe(
        'Apple Pie',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/apple.jpeg',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/applerec.png'),
    Recipe(
        'Pecan Pie',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/pecan.jpeg',
        '/Users/mattkad/Desktop/Projects/thanksgiving/assets/pecanIngred.png')
  ];
}
