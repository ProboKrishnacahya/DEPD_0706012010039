part of '../../utils/import_helper.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(48),
      child: Tooltip(
        message: "Favorite",
        child: InkWell(
          onTap: () => setState(() => isClicked = !isClicked),
          onLongPress: () => setState(() => isClicked = !isClicked),
          customBorder: const CircleBorder(),
          child: Container(
            alignment: Alignment.center,
            width: 48,
            height: 48,
            child: Icon(
              isClicked ? Icons.favorite : Icons.favorite_outline,
              color: Style.red500,
            ),
          ),
        ),
      ),
    );
  }
}
