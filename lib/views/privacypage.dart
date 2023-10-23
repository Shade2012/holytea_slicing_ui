import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Title(
          color: Colors.white,
          child: Center(
            child: Text(
              "Privacy Policy",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              Text(
                "Informasi apa yang kami kumpulkan tentang anda?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Kami mengumpulkan Informasi Pribadi saat anda menggunakan Aplikasi kami. Kami juga mengumpulkan informasi perangkat dan teknis dari anda, dan informasi lain yang mungkin anda kirimkan saat anda menggunakan Aplikasi kami. Jika anda memilih untuk tidak menyediakan informasi tersebut, kami tidak akan dapat menyediakan Aplikasi kepada anda secara normal",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Bagaimana kami menggunakan informasi tentang anda?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Bagaimana kami menggunakan informasi anda tergantung pada apakah anda seorang Pengguna atau Penyedia Layanan. Jika anda adalah Pengguna, kami menggunakan informasi anda untuk mengatur dan mengelola Akun anda dengan kami, berkomunikasi dengan anda, dan sebaliknya memberi anda berbagai layanan dan fungsi yang tersedia di Aplikasi kami. Jika anda adalah Penyedia Layanan, kami menggunakan informasi anda untuk memverifikasi bahwa anda dapat menyediakan layanan, memungkinkan anda menyediakan layanan kepada Pengguna, mengatur dan mengelola akun anda dengan kami, berkomunikasi dengan anda, dan sebaliknya memberi anda berbagai layanan dan fungsi yang tersedia di Aplikasi kami. Kami juga menggunakan informasi anda untuk melakukan pemeliharaan atas Aplikasi kami, dan untuk menyesuaikan produk dan layanan kami dengan preferensi anda. Selain itu, kami menggunakan informasi anda untuk memasarkan produk dan layanan kami kepada anda, dan dari perusahaan dalam grup kami, mitra, dan agen (dengan persetujuan anda jika diwajibkan oleh Peraturan Perundang-undangan yang Berlaku).",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Dengan siapa kami membagikan informasi anda?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Kami membagikan data anda dengan Pengguna dan Penyedia Layanan (sebagaimana berlaku) untuk memfasilitasi kinerja layanan untuk atau oleh anda, dengan mitra dan pemasok pihak ketiga kami, sejauh yang diperlukan bagi mereka untuk menyediakan layanan mereka, seperti pemrosesan pembayaran, klaim dan verifikasi asuransi. Kami menggunakan layanan pihak ketiga ini semata-mata untuk mengolah atau menyimpan informasi anda untuk tujuan sebagaimana dijelaskan dalam Pemberitahuan Privasi ini. Kami juga membagikan informasi anda dengan Afiliasi kami untuk tujuan yang dijelaskan dalam Pemberitahuan Privasi ini dan dengan lembaga pemerintah dan otoritas pemerintah lainnya sebagaimana diwajibkan oleh Peraturan Perundang-undangan yang Berlaku",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Dimana kami memproses informasi anda?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Server kami mungkin berlokasi di luar Wilayah. Kami juga dapat mentransfer informasi anda pada Afiliasi kami dan pemasok pihak ketiga serta mitra di luar Wilayah untuk tujuan sebagaimana ditetapkan dalam Pemberitahuan Privasi ini.",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Berapa lama kami menyimpan informasi anda?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Kami menyimpan informasi anda selama diperlukan untuk memenuhi tujuan pengumpulannya, atau sebagaimana diwajibkan oleh Peraturan Perundang-undangan yang Berlaku.",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Bagaimana Saya bisa melaksanakan hak saya atas informasi saya?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Anda mungkin memiliki berbagai hak sehubungan dengan data anda berdasarkan Peraturan Perundang-undangan yang Berlaku dan anda dapat menghubungi kami untuk melaksanakan hak anda.",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Hubungi kami",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Apabila anda memiliki pertanyaan, perhatian atau keluhan, dapat menghubungi kami melalui rincian kontak yang dapat ditemukan pada bagian Hubungi Kami.",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
              Text(
                "Bagaimana kami akan memberitahukan anda terkait perubahan?",
                style: normalFontBlBold,
                textAlign: TextAlign.left,
              ),
              Text(
                "Kami akan mengubah Pemberitahuan Privasi ini dari waktu ke waktu dan memberitahu anda tentang versi yang diperbarui melalui Aplikasi kami atau email anda yang terdaftar pada kami. Silakan periksa kembali secara berkala untuk melihat pembaruan atau perubahan apapun pada Pemberitahuan Privasi ini.",
                style: normalFontBl,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
