import 'package:flutter/material.dart';
import 'package:hmtk_app/widget/template_page.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyPage(
          widget: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Image.asset(
            'assets/LogoTK3.png',
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apa Itu Teknik Komputer?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
                Text(
                  'Teknik komputer adalah suatu disiplin khusus yang mengkombinasikan teknik elektro dan ilmu komputer. Seorang teknisi komputer adalah teknisi elektro arus lemah yang lebih berfokus pada sistem sirkuit digital, sistem komunikasi data pada frekuensi radio, dan elektronika sebagai bagian dari komputer secara menyeluruh.',
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sejarah Teknik Komputer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
                Text('1990'),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'STT TELKOM DIDIRIKAN Sekolah Tinggi Teknologi Telkom (STTTelkom) didirikan oleh Yayasan Pendidikan dan Pelatihan Teknologi dan Manajemen Telekomunikasi atau disingkat Yayasan Pendidikan Telkom (YPT) pada tanggal 28 September 1990. STT Telkom didirikan untuk menyiapkan tenaga-tenaga ahli di bidang informasi dan Telekomunikasi (Infokom) yang terampil dan berwawasan bisnis sebagai jawaban atas tuntutan perkembangan industri infokom yang begitu pesat.Fakultas Elektro dan Komunikasi merupakan pengembangan dari Departemen Teknik Elektro, yang merupakan departemen terbesar di dalam Institut Teknologi Telkom dilihat dari sumber daya manusia (Mahasiswa, Dosen, Alumni) maupun dari sisi jumlah laboratorium, serta dari kerjasama yang telah dijalin. Departemen Teknik Elektro didirikan seiring dengan berdirinya STT Telkom pada tahun 1990, yang sebelumnya bernama Jurusan Teknik Elektro.Pada saat itu Departemen Teknik Elektro hanya membuka 2 (dua) buah program Studi yaitu Program Studi S1 Teknik Telekomunikasi dan D3 Teknik Telekomunikasi. Pada tahun 2007, Jurusan Teknik Elektro berubah nama menjadi Departemen Teknik Elektro.',
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
