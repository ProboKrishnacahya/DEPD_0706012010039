part of '../../utils/import_helper.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});
  static const routeName = '/booking-page';

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  void initState() {
    super.initState();
  }

  final _bookingKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final cityController = TextEditingController();
  String fullNameValue = '';
  String emailValue = '';
  String phoneNumberValue = '';
  String cityValue = '';

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          color: Style.lime800,
        ),
        title: Text(
          "Booking Form",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              color: Style.grey800,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _bookingKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: fullNameController,
                        keyboardType: TextInputType.name,
                        cursorColor: Style.lime800,
                        onChanged: (value) {
                          fullNameValue = value;
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          hintText: 'John Doe',
                          labelText: 'Full Name',
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Style.lime800,
                        onChanged: (value) {
                          emailValue = value;
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          hintText: 'johndoe@gmail.com',
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        cursorColor: Style.lime800,
                        onChanged: (value) {
                          phoneNumberValue = value;
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          hintText: '08123456789',
                          labelText: 'Phone Number',
                          prefixIcon: Icon(Icons.phone_android_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: cityController,
                        keyboardType: TextInputType.streetAddress,
                        cursorColor: Style.lime800,
                        onChanged: (value) {
                          cityValue = value;
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          hintText: 'Surabaya',
                          labelText: 'City',
                          prefixIcon: Icon(Icons.location_city_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (fullNameController.text.isEmpty ||
                                emailController.text.isEmpty ||
                                phoneNumberController.text.isEmpty ||
                                cityController.text.isEmpty) {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: Style.grey800,
                                  title: const Text('Booking Failed'),
                                  content:
                                      const Text('Please fill all form field!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: Style.grey800,
                                  title: const Text('Booking Confirmation'),
                                  content: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('Name: $fullNameValue'),
                                      Text('Email: $emailValue'),
                                      Text('Phone Number: $phoneNumberValue'),
                                      Text('City: $cityValue'),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage(),
                                        ),
                                      ),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          icon: const Icon(Icons.save_outlined),
                          label: const Text('Book Now'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
