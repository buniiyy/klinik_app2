import 'package:flutter/material.dart';
import 'package:klinik_app2/ui/pegawai_form_page.dart';
import 'pegawai_detail.dart';
import 'pasien_detail.dart';
import '../model/pegawai.dart';
import '../model/pasien.dart';
import 'package:klinik_app2/widget/sidebar.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("KLINIK CHELS"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiFormPage())
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pegawai"),
              ),
            ),
            onTap: () {
              Pegawai pegawai = new Pegawai(namaPegawai: "Nama Pegawai");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: pegawai)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pasien"),
              ),
            ),
            onTap: () {
              Pasien pasien = new Pasien(namaPasien: "Nama Pasien");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: pasien)));
            },
          ),
        ],
      ),
    );
  }
}