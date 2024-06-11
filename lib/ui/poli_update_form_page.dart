import 'package:flutter/material.dart';
import 'package:klinik_app2/model/poli.dart';
import 'package:klinik_app2/ui/poli_detail_page.dart';

class PoliUpdateFormPage extends StatefulWidget {
  final Poli poli;
  const PoliUpdateFormPage({super.key, required this.poli});

  @override
  State<PoliUpdateFormPage> createState() => _PoliUpdateFormPageState();
}

class _PoliUpdateFormPageState extends State<PoliUpdateFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override void initState(){
    // TODO: implement initState
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.nm_poli!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tambah Poli"),),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _field(namafield: "Nama Poli", namacontroller: _namaPoliCtrl),
                SizedBox(height: 20,),
                _tombolSimpan()
              ],
            ),
          ),
        )
    );
  }


  Widget _field({required String namafield, required namacontroller}) {
    return TextField(
        decoration: InputDecoration(labelText: namafield),
        controller: namacontroller
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Poli poli = Poli(nm_poli: _namaPoliCtrl.text);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => PoliDetailPage(poli: poli)
            )
        );
      },
      child: Text("Simpan Perubahan"),
    );
  }
}
