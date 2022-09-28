part of '../../utils/import_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mission 1",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Style.blueGrey900,
              Style.grey800,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/adidas.png"),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: FavoriteButton(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: listShoe.length,
                itemBuilder: (BuildContext context, int index) {
                  Shoe shoes = listShoe[index];
                  return Container(
                    margin: EdgeInsets.fromLTRB(
                      index == 0 ? 16 : 8,
                      16,
                      index == listShoe.length - 1 ? 16 : 8,
                      16,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image.asset(
                            shoes.path,
                            width: 128,
                            height: 128,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "TENTANG PRODUK ADIDAS",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Text(
                  "adidas Online Store menawarkan perlengkapan terbaru dan terbaik yang ditawarkan adidas dalam setiap momen. Saat Anda berbelanja di adidas, Anda bisa yakin bahwa selama lebih dari tujuh dekade, produk adidas selalu mengutamakan keunggulan. Ciri khas kami adalah selalu mempersembahkan produk dengan standar kualitas, teknologi, dan inovasi terbaik.\n\nORIGINALS\nadidas Originals: Merefleksikan warisan adidas yang tak lekang oleh waktu. Inovatif, mempertahankan ciri klasik, dan selalu autentik, produk adidas Originals ditunjukkan dengan Trefoil yang diluncurkan pada Olimpiade tahun 1972 di Munich.\n\nSPORTS PERFORMANCE\nSemua produk adidas tidak hanya memiliki tampilan yang menarik, namun juga menawarkan performa tak tertandingi. Di divisi Performance, kami terus berupaya untuk menawarkan produk olahraga paling fungsional dengan performa terbaik bagi atlet dalam semua kategori olahraga. Semangat dan motivasi kami adalah untuk membantu atlet yang menuntut performa tertinggi disamping faktor pendukung lainnya. Produk Performance didesain menggunakan terobosan teknologi terbaru\n\nTEKNOLOGI\nInovasi produk unggulan kami secara terus menerus berupaya untuk mendukung atlet dalam meraih level performa yang lebih baik. Pakaian dan sepatu kami menggunakan berbagai teknologi yang dideskripsikan pada setiap halaman produk Olahraga\n\nUKURAN\nKami menyediakan bagan ukuran pada Halaman Detail Produk yang akan membantu Anda untuk membandingkan ukuran yang tercantum pada halaman produk dengan ukuran yang mungkin lebih familiar bagi Anda. Jika Anda menerima produk, namun ukurannya tidak sesuai, Anda dapat mengirimkannya kembali dan melakukan pemesanan ulang dengan ukuran yang berbeda. Silakan baca Kebijakan Retur kami untuk detail lebih lanjut.",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool click = false;
  bool snackbar = false;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: Tooltip(
          message: "Favorit",
          child: InkWell(
            onTap: () => setState(() => click = !click),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                click ? Icons.favorite : Icons.favorite_outline,
                color: Style.red500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
