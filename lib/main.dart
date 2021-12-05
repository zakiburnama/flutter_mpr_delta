import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

//import 'src/catalog.dart';
//import 'src/item_tile.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
//import './model.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MPR Delta',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future fetchNotes() async{
    var url = 'https://raw.githubusercontent.com/boriszv/json/master/random_example.json';
    var response = await http.get(url);
    if 
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter MPR delta'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Text('data'),
                  Text('data'),
                ],
              ),
            ),
          );
        },
        itemCount: 50,
      ),
    );
  }

}


//
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Catalog>(
      create: (context) => Catalog(),
      child: const MaterialApp(
        title: 'MPR delta',
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MPR delta'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){

        },
      ),
    );
  }
}
*/

//
/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data;
  var superheros_length;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  void getData() async {
    http.Response response =
        await http.get("https://protocoderspoint.com/jsondata/superheros.json");
    if (response.statusCode == 200) {
      data = response.body; //store response as string
      setState(() {
        superheros_length = jsonDecode(
            data)['superheros']; //get all the data from json string superheros
        print(superheros_length.length); // just printed length of data
      });
      var venam = jsonDecode(data)['superheros'][4]['url'];
      print(venam);
    } else {
      print(response.statusCode);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Http Example"),
      ),
      body: ListView.builder(
        itemCount: superheros_length == null ? 0 : superheros_length.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Image.network(
                jsonDecode(data)['superheros'][index]['url'],
                fit: BoxFit.fill,
                width: 100,
                height: 500,
                alignment: Alignment.center,
              ),
              title: Text(jsonDecode(data)['superheros'][index]['name']),
              subtitle: Text(jsonDecode(data)['superheros'][index]['power']),
            ),
          );
        },
      ),
    );
  }
}
*/


/*
class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => new _ProdukState();
}

class _ProdukState extends State<Produk> {
  final String sUrl = "https://mysimrs.com/api/";
  List<ProdukModel> listproduk;

  @override
  void initState() {
    super.initState();
  }

  Future<List<ProdukModel>> _fetchData() async {
    var params = "produk.php";
    try {
      var jsonResponse = await http.get(sUrl + params);
      if (jsonResponse.statusCode == 200) {
        final jsonItems =
            json.decode(jsonResponse.body).cast<Map<String, dynamic>>();

        listproduk = jsonItems.map<ProdukModel>((json) {
          return ProdukModel.fromJson(json);
        }).toList();
      }
    } catch (e) {}
    return listproduk;
  }

  Future<Null> _refresh() {
    return _fetchData().then((_listproduk) {
      setState(() => listproduk = _listproduk);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text(' Data Produk'),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder<List<ProdukModel>>(
          future: _fetchData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return Container(
              margin: EdgeInsets.only(bottom: 0.0),
              child: ListView(
                padding: EdgeInsets.only(bottom: 160.0),
                children: snapshot.data
                    .map(
                      (_data) => Column(children: <Widget>[
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.perm_media, size: 50),
                                title: Text(_data.nama),
                                subtitle:
                                    Text(_data.harga + ' / ' + _data.satuan),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
*/
