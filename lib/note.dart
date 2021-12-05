class Note {
  String title;
  String text;

  Note(this.title, this.text);
/*
  Note.fromJson(Map<String, dynamic>json) {
    title = json['title'];
    text = json['text']
  }
  */
}

/*
class model {
  final int id;
  final String nama;
  final String harga;
  final String satuan;

  model({this.id, this.nama, this.harga, this.satuan});

  factory model.fromJson(Map<String, dynamic> json) {
    return model(
      id: json['id'] as int,
      nama: json['nama'] as String,
      harga: json['harga'] as String,
      satuan: json['satuan'] as String,
    );
  }
}
*/