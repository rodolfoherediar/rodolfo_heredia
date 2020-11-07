class Suerte {
  int suerteID;
  String suertee;
  String libro;
  String autor;

  Suerte({this.suerteID, this.suertee, this.libro, this.autor});

  Suerte.newSuerte(int id, String suer, String lib, String aut) {
    this.suerteID = id;
    this.suertee = suer;
    this.libro = lib;
    this.autor = aut;
  }

  factory Suerte.fromJson(Map<dynamic, dynamic> json) {
    return Suerte(
      suerteID: json['id'] as int,
      suertee: json['frase'] as String,
      libro: json['livro'] as String,
      autor: json['autor'] as String,
    );
  }
}