part of '../../utils/import_helper.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(48),
      child: Tooltip(
        message: "Favorite",
        child: InkWell(
          onTap: () => setState(() => click = !click),
          onLongPress: () => setState(() => click = !click),
          customBorder: const CircleBorder(),
          child: Container(
            alignment: Alignment.center,
            width: 48,
            height: 48,
            child: Icon(
              click ? Icons.favorite : Icons.favorite_outline,
              color: Style.red500,
            ),
          ),
        ),
      ),
    );
  }
}
