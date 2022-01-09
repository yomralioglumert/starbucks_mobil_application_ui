import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Starbucks Card',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/card.png',
                      ),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Text(
              'Hesabınıza giriş yapmadınız.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Text(
              'Starbucks Card\'ınızı kullanmak veya para yüklemek için lütfen programımıza katılın ya da giriş yapın',
              style:  TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: SizedBox(
              width: 90,
              height: 30,
              child: TextButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Gift Card',
                    style: TextStyle(color: Colors.green.shade600),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Colors.green.shade600, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
