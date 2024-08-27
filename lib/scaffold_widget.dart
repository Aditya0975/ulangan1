import 'package:flutter/material.dart';
import 'package:ulangan_1/kategorinilai_widget.dart';

class ScaffoldWidget extends StatefulWidget {
  @override
  _NilaiSiswaFormState createState() => _NilaiSiswaFormState();
}

class _NilaiSiswaFormState extends State<ScaffoldWidget> {
  final _controller = TextEditingController();
  String _kategori = '';

  void _hitungKategori() {
    int nilai = int.tryParse(_controller.text) ?? -1;
    setState(() {
      if (nilai >= 0 && nilai <= 100) {
        _kategori = kategoriNilai(nilai);
      } else {
        _kategori = 'Input tidak valid';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Masukkan Nilai',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _hitungKategori,
            child: Text('Hitung'),
          ),
          SizedBox(height: 20),
          Text(
            'Kategori Nilai: $_kategori',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
