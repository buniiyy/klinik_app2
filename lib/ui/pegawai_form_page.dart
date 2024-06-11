import 'package:flutter/material.dart';
import 'pegawai_detail.dart';

class PegawaiFormPage extends StatefulWidget {
  const PegawaiFormPage({super.key});

  @override
  State<PegawaiFormPage> createState() => _PegawaiFormPageState();
}

class _PegawaiFormPageState extends State<PegawaiFormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(labelText: "Nama Pegawai")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){}, child: Text("simpan"))
            ],
          ),
        ),
      ),
    );
  }
}