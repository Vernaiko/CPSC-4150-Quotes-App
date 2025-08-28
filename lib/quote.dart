class Quote {

  String text;
  String author;
  String category;
  String sourceMaterial;
  String character;

  //  normal constructor, as we've already seen

  //  Quote(String author, String text){
  //    this.text = text;
  //    this.author = author;
  //  }

  //  constructor with named parameters

  //  Quote({ String author, String text }){
  //    this.text = text;
  //    this.author = author;
  //  }

  // constructor with named parameters
  // & automatically assigns named arguments to class properties

  Quote({ required this.text, required this.author, required this.category,
  required this.character, required this.sourceMaterial});

}