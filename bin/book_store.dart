import 'author.dart';
import 'book.dart';
import 'dart:io';
void main() {

    
  Author author1 = Author("Jose");
  Author author2 = Author("Mustafa Lutfi");

  Book book1 = Book("lets wake up sun", 2013, author1, 12.8);
  Book book2 = Book("Orange tree", 2014, author1 , 30.3);
  Book book3 = Book("Majodleen", 2019, author2 , 15.7);

  Book book4 = Book("tree", 2020, author1, 22.0);
  Book book5 = Book("Majodleen 2", 2021, author2 , 32.3); 


  List <Author> authors = [author1 ,author2];
  List <Book> books = [book1 , book2, book3, book4, book5];

  print("===============================================================");
  for (var element in authors) {
        print("Authors Name : ${element.name} \n");
  }

  print("===============================================================");
  print("please choose one author \n");
  String authName = stdin.readLineSync()!;
  print("----------------------------------------------------------------");

   List<Book> filterBooks = books.where((element) => element.author!.name == authName).toList();

 for (var element in filterBooks) {
        print("Book title : ${element.title} with price : ${element.price} OR\n");
  }

}
