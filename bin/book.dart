import 'author.dart';
class Book{

  String? title;
  int? yearPublished;
  double? price; 
  Author? author;
  
  Book(String t, int yearPub, Author a, double pr){
    title = t;
    yearPublished = yearPub;
    author = a;
    price = pr;
  }

  void showDetails(){
    print("Book title : $title \nYear Published : $yearPublished\nAuthor: ${author?.name}" );
  }
}