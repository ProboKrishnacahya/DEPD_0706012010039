part of '../../utils/import_helper.dart';

class BookingButton extends StatefulWidget {
  const BookingButton({super.key});

  @override
  State<BookingButton> createState() => _BookingButtonState();
}

class _BookingButtonState extends State<BookingButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      child: Tooltip(
        message: "Booking",
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, BookingPage.routeName);
          },
          child: const Text('Book Now'),
        ),
      ),
    );
  }
}
