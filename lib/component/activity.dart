import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hmtk_app/admin/account.dart';
import 'package:hmtk_app/admin/daftar_about_us.dart';
import 'package:hmtk_app/admin/daftar_aktivity.dart';
import 'package:hmtk_app/admin/daftar_bph.dart';
import 'package:hmtk_app/admin/daftar_funtk.dart';
import 'package:hmtk_app/admin/daftar_material_bank.dart';
import 'package:hmtk_app/admin/daftar_shop.dart';
import 'package:hmtk_app/admin/daftar_visi_misi.dart';
import 'package:hmtk_app/admin/daftra_laboratory.dart';
import 'package:hmtk_app/admin/dashboard.dart';
import 'package:hmtk_app/admin/edit_about_us.dart';
import 'package:hmtk_app/admin/edit_aktivity.dart';
import 'package:hmtk_app/admin/edit_bph.dart';
import 'package:hmtk_app/admin/edit_fun_tk.dart';
import 'package:hmtk_app/admin/edit_lab.dart';
import 'package:hmtk_app/admin/edit_material_bank.dart';
import 'package:hmtk_app/admin/edit_shop.dart';
import 'package:hmtk_app/admin/edit_visi_misi.dart';
import 'package:hmtk_app/admin/get.dart';
import 'package:hmtk_app/admin/tambah_about_us.dart';
import 'package:hmtk_app/admin/tambah_aktivty.dart';
import 'package:hmtk_app/admin/tambah_bph.dart';
import 'package:hmtk_app/admin/tambah_fun_tk.dart';
import 'package:hmtk_app/admin/tambah_lab.dart';
import 'package:hmtk_app/admin/tambah_material_bank.dart';
import 'package:hmtk_app/admin/tambah_shop.dart';
import 'package:hmtk_app/admin/tambah_visi_misi.dart';
import 'package:hmtk_app/component/drawer.dart';
import 'package:hmtk_app/presentation/user/start.dart';

import 'package:hmtk_app/utils/color_pallete.dart';

class ActivityDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah Activity',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahActivty(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit Activity',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditAktivity(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text('Daftarr Activity',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarAktivity(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AspirasiDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Masukan Aspirasi',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahActivty(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Daftar Aspirasi',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditAktivity(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 180,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'Account',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountEdit(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 150, 0),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        'Logout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      SystemNavigator.pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FuntkDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah Fun TK',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahFunTk(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit Fun TK',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditFunTk(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text('Daftar Fun TK',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarFuntk(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 140,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah Shop',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahShop(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit Shop',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditShop(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Daftar Shop',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarShop(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child:
                    Text('Data Pesanan', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarAktivity(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LabDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah Laboratory',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahLab(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit Laboratory',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditLab(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text('Daftar Laboratory',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarLaboratory(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MaterialBankDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah Material Bank',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahmaterialBank(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit Material Bank',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditMaterialBank(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text('Daftar Material Bank',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarMaterialBank(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah About Us',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahAboutUs(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit  About Us',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditAboutUs(),
                      ));
                },
              ),
              GestureDetector(
                child: Text('Daftar  About Us',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarAboutUs(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VisiMisiDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah Vision & Mision',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahVisiMisi(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit Vision & Mision',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditVisiMisi(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text('Daftar Vision & Mision',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarVisiMisi(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BphDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:
          Colors.transparent, // Set latar belakang menjadi transparan
      content: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
        height: 120,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment(0.0,
                0.5), // Sesuaikan titik akhir untuk membuat opacity pada bagian kanan
            colors: [
              ColorPallete.greenprim.withOpacity(0.3),
              ColorPallete.greenprim
            ], // Warna hijau dengan sedikit opasitas pada bagian kanan
          ),
        ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text(
                  'Tambah BPH HMTI',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TambahBph(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text(
                  'Edit BPH HMTI',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditBph(),
                    ),
                  );
                },
              ),
              GestureDetector(
                child: Text('Daftar BPH HMTI',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DaftarBph(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
