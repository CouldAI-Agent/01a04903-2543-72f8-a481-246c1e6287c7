import 'package:flutter/material.dart';

void main() {
  runApp(const PancaInderaApp());
}

class PancaInderaApp extends StatelessWidget {
  const PancaInderaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Panca Indera Pada Manusia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MakalahScreen(),
      },
    );
  }
}

class MakalahScreen extends StatelessWidget {
  const MakalahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makalah IPA: Panca Indera'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: const [
              _CoverPage(),
              SizedBox(height: 48),
              Divider(thickness: 2),
              SizedBox(height: 32),
              _ContentPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CoverPage extends StatelessWidget {
  const _CoverPage();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'MAKALAH\nSISTEM PANCA INDERA PADA MANUSIA',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Diajukan untuk memenuhi mata pelajaran ipa',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 32),

        const SizedBox(height: 48),
        const Text(
          'DiSUSUN OLEH:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          'NAMA: Sakilah Mutia Zahra\nKelas: lX-5\nMapel: IPA',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 48),
        const Text(
          'MTsN Kota Tebing Tinggi\nTahun Ajaran: 2026/2027',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),
        ),
      ],
    );
  }
}

class _ContentPage extends StatelessWidget {
  const _ContentPage();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('A. Pengertian Panca Indera'),
        _buildParagraph(
          'Panca indera adalah lima organ tubuh manusia yang berfungsi untuk menerima rangsangan dari lingkungan sekitar (stimulus) dan meneruskannya ke otak berupa impuls saraf, sehingga manusia dapat mengenali dan merespons keadaan di sekelilingnya.\n\nKata "panca" berarti lima, sedangkan "indera" berarti sistem penerima rangsang.',
        ),
        const SizedBox(height: 24),
        _buildSectionTitle('Rumusan Masalah'),
        _buildList([
          'Apa fungsi dari panca indera manusia?',
          'Bagaimana cara kerja mata, telinga, hidung, lidah, dan kulit?',
          'Gangguan apa saja yang bisa terjadi pada panca indera?'
        ]),
        const SizedBox(height: 32),
        const Center(
          child: Text(
            'PEMBAHASAN',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 24),

        _InderaSection(
          number: '1.',
          title: 'INDERA PENGLIHATAN (Mata)',
          description:
              'Mata salah satu alat indra dari makluh hidup khususnya manusia yang berfungsi sebagai indra penglihat. Mata merupakan alat indra yang sangat kompleks.',
          parts: [
            'Kornea : Kornea mata berguna meneruskan cahaya yang masuk kedalam mata.',
            'Iris : Mengatur banyaknya cahaya yang masuk ke dalam mata.',
            'Lensa : Untuk memfokuskan cahaya yang masuk ke dalam mata jatuh tepat pada retina.',
            'Retina (selaput Jala) : Untuk menangkap cahaya yang masuk ke dalam mata.',
            'Saraf Mata : Berguna untuk meneruskan rangsang cahaya ke otak.'
          ],
          icon: Icons.remove_red_eye,
          imageQuery: 'eye anatomy',
        ),

        _InderaSection(
          number: '2.',
          title: 'INDERA PEMBAU (Hidung)',
          description:
              'Hidung merupakan indera pembau disamping sebagai alat pernapasan. Didalam hidung terdapat saraf pembau. Rangsang bau yang diterima hidung diteruskan ke otak. Ketidak mampuan indera pembau untuk mencium bau dinamakan anosmia.\n\nPenyebabnya anosmia antara lain sebagai berikut:\n- Terjadinya penyumbatan rongga hidung, misalnya akibat pilek dan penyakit polip.\n- Gangguan pada saraf indera pembau.',
          parts: [
            'Rambut halus penyaring udara.',
            'Rambut halus yang peka terhadap bau.',
            'Kumpulan ujung saraf pembau.',
            'Serat saraf untuk mengirim rangsang bau ke otak.'
          ],
          icon: Icons.air,
          imageQuery: 'nose anatomy',
        ),

        _InderaSection(
          number: '3.',
          title: 'INDERA PENDENGAR (Telinga)',
          description:
              'Telinga adalah Organ tubuh manusia yang berfungsi sebagai indra pendengaran dan organ yang menjaga keseimbangan. Telinga merupakan organ yang berperan terhadap pendengaran kita akan suara atau bunyi, hal ini dapat terjadi karena telinga memiliki reseptor khusus yang berfungsi untuk mengenali getaran suara. Namun Telinga memiliki batasan frekuensi suara yang dapat didengar, yaitu yang frekuensinya 20 Hz – 20.000 Hz.',
          parts: [
            'Telinga luar terdiri dari daun telinga, lubang telinga, dan saluran telinga luar. Telinga luar berguna untuk menangkap getaran suara.',
            'Telinga Tengah terdiri dari selaput pendengaran (gendang telinga), tulang-tulang pendengaran, dan saluran Eustachius. Tulang-tulang pendengaran terdiri dari tulang martil, landasan, dan sangurdi.',
            'Telinga dalam terdiri dari bagian yang disebut tingkap jorong dan rumah siput berguna untuk meneruskan rangsang suara ke otak.'
          ],
          icon: Icons.hearing,
          imageQuery: 'ear anatomy',
        ),

        _InderaSection(
          number: '4.',
          title: 'INDERA PENCECAP (Lidah)',
          description:
              'Lidah adalah kumpulan otot rangka pada bagian lantai mulut yang dapat membantu pencernaan makanan dengan mengunyah dan menelan. Lidah dikenal sebagai indera pengecap yang banyak memiliki struktur tunas pengecap. Lidah juga turut membantu dalam tindakan bicara. Juga membantu membolak balik makanan dalam mulut.',
          parts: [
            'Papillae: Bintik-bintik kecil yang terdapat pada permukaan lidah, yang berfungsi untuk memberikan tekstur lidah. Papillae juga mengandung ribuan kuncup perasa (taste buds) yang merupakan sel saraf yang terhubung ke otak. Kuncup perasa ini berfungsi untuk merasakan rasa, suhu, dan tekstur makanan.',
            'Pinggir lidah depan: Sensitif terhadap rasa asin.',
            'Pinggir lidah belakang: Sensitif terhadap rasa asam.',
            'Pangkal lidah: Sensitif terhadap rasa pahit.'
          ],
          icon: Icons.fastfood,
          imageQuery: 'tongue anatomy',
        ),

        _InderaSection(
          number: '5.',
          title: 'INDERA PERABA (Kulit)',
          description:
              'Kulit Merupakan indera peraba. Di dalam kulit terdapat ujung-ujung saraf peraba. Tidak semua permukaan kulit merupakan alat peraba yang sama pekanya. Bagian paling peka adalah ujung jari dan bibir. Kulit dapat membedakan kasar, halus, panas, dingin, dan sakit. Kulit adalah organ yang memiliki banyak fungsi, diantaranya adalah sebagai pelindung tubuh dari berbagai hal yang dapat membahayakan, sebagai alat indra peraba dll.',
          parts: [
            'Lapisan epidermis (lapisan luar/kulit ari) Lapisan Epidermis memiliki tebal kurang lebih 0,1 mm dan terdiri atas empat lapisan jaringan epitel.',
            'Lapisan dermis (kulit jangat) Lapisan Dermis adalah lapisan kulit yang terdiri atas pembuluh darah, kelenjar minyak, kantung rambut, ujung ujung saraf indra, dan kelenjar keringat.',
            'Hipodermis (jaringan ikat bawah kulit) Lapisan ini merupakan tempat penyimpanan lemak dalam tubuh, sehingga sering juga dikenal dengan Lapisan Lemak Bawah Tubuh.'
          ],
          icon: Icons.back_hand,
          imageQuery: 'skin anatomy',
        ),

        const SizedBox(height: 24),
        _buildSectionTitle('GANGGUAN DAN KELAINAN UMUM'),
        _buildList([
          'Gangguan Mata: Kelainan pembiasan cahaya (seperti rabun jauh/dekat) serta katarak yang memperkeruh lensa mata.',
          'Gangguan Telinga: Peradangan telinga tengah (otitis media) dan penurunan daya dengar akibat penuaan atau paparan bising berlebih.',
          'Gangguan Hidung: Hilangnya kemampuan mencium bau (anosmia) atau peradangan mukosa hidung (rhinitis).',
          'Gangguan Lidah: Penurunan hingga hilangnya kemampuan mengecap rasa (ageusia), kerap dipicu defisiensi nutrisi atau infeksi.',
          'Gangguan Kulit: Peradangan kulit (dermatitis) atau penurunan sensitivitas saraf tepi (hipestesi).'
        ]),
        const SizedBox(height: 32),

        _buildSectionTitle('SARAN'),
        _buildParagraph(
          'Mengingat peran vitalnya, kesehatan panca indera perlu dijaga secara konsisten. Langkah sederhana seperti menjaga kebersihan diri, mengonsumsi makanan bergizi, menghindari paparan polusi dan bising berlebih, serta melakukan pemeriksaan kesehatan secara berkala sangat dianjurkan untuk mempertahankan fungsinya secara optimal.',
        ),
        const SizedBox(height: 48),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, height: 1.6),
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(fontSize: 16, height: 1.6)),
              Expanded(
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 16, height: 1.6),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _InderaSection extends StatelessWidget {
  final String number;
  final String title;
  final String description;
  final List<String> parts;
  final IconData icon;
  final String imageQuery;

  const _InderaSection({
    required this.number,
    required this.title,
    required this.description,
    required this.parts,
    required this.icon,
    required this.imageQuery,
  });

  @override
  Widget build(BuildContext context) {
    // Determine layout based on screen width
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        Widget contentWidget = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$number $title',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: const TextStyle(fontSize: 16, height: 1.6),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12),
            const Text(
              'Bagian-Bagian Terdiri Dari:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...parts.map((part) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '- ',
                        style: TextStyle(fontSize: 16, height: 1.6),
                      ),
                      Expanded(
                        child: Text(
                          part,
                          style: const TextStyle(fontSize: 16, height: 1.6),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        );

        Widget imageWidget = Container(
          width: isMobile ? double.infinity : 200,
          height: isMobile ? 200 : 250,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 64, color: Colors.teal.shade700),
              const SizedBox(height: 16),
              const Text(
                'Gambar Anatomi',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                '($title)',
                style: const TextStyle(fontSize: 12, color: Colors.black45),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );

        return Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    contentWidget,
                    const SizedBox(height: 16),
                    imageWidget,
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: contentWidget),
                    const SizedBox(width: 24),
                    imageWidget,
                  ],
                ),
        );
      },
    );
  }
}
