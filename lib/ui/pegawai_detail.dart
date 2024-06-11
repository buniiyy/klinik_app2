import 'package:flutter/material.dart';
import 'package:klinik_app2/ui/pegawai_page.dart';
import '../model/pegawai.dart';
import 'package:klinik_app2/constant.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pegawai"),
        backgroundColor: Colors.blueAccent,),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "ID Pegawai : 110404",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nama Pegawai : Mason Mount",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "NIP : 15567291",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Tanggal Lahir : 10 Januari 1999",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Telepon : 081256735197",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Email : mounttok@bsi.ac.id",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Password : 10011999",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }
  Widget _tombolHapus(){
    return ElevatedButton(
      onPressed: (){
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin menghapus data ini?"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
              child: const Text("YA"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop;
            },
              child: Text("Tidak"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            )
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Palette.danger
      ),
      child: Text("Hapus"),
    );
  }
}


