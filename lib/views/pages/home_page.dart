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
                "Adidas Indonesia menyediakan semua kebutuhan olahraga Anda",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: SingleChildScrollView(
                  child: Text(
                      "Mencari perlengkapan olahraga yang dapat meningkatkan performa Anda dan lebih nyaman saat digunakan berolahraga? Hanya ada satu tempat yang dapat menyediakan semua kebutuhan olahraga Anda mulai dari sepatu hingga aksesori, yaitu Toko Online Resmi adidas Indonesia. adidas Indonesia menyediakan perlengkapan olahraga mulai dari sepatu training, celana running, hingga aksesori olahraga untuk pria, wanita, dan anak-anak. Toko Online Resmi adidas Indonesia menawarkan banyak deal untuk Anda yang berbelanja secara online; mulai dari gratis ongkos kirim jika Anda berbelanja minimal Rp 750.000, easy return, fast response, dan masih banyak lagi. Beli segera sepatu untuk segala jenis olahraga hanya di adidas Indonesia."),
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
