import 'package:flutter/material.dart';
import 'package:machine_test/UI/NewInvoicePage.dart';

void main() {
  runApp(const MaterialApp(
    home: InvoicePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class InvoicePage extends StatefulWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        decoration: BoxDecoration(
          color: Colors.white,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.purple.shade50, Colors.lightBlue.shade100])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 3)
                      ]),
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 17),
                child: Text(
                  "Enter the invoice number",
                  style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10,right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Eg: 256347865423",
                        hintStyle: TextStyle(color: Colors.grey[400])
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    child: const Image(
                      image: AssetImage(
                          "assets/images/3d-hand-holding-bill-isolated-on-pastel-background-business-hand-using-hold-invoice-bill-expenses-under-creative-solution-concept-in-3d-paper-receipt-for-shopping-in-store-free-png.webp"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 25),
                child: Row(
                  children: [
                    SizedBox(
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, elevation: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  color: Colors.blue,
                                  size: 18,
                                ),
                                Text(
                                  "Back",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => NewInvoice(),));},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text("Next"),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                ),
                              ],
                            ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
