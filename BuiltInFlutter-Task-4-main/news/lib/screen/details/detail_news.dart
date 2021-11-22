import 'package:flutter/material.dart';
import 'package:news/screen/home/widgets/main_bar.dart';

class DetailsNews extends StatelessWidget {
  const DetailsNews({Key? key}) : super(key: key);

  static const routeName = 'DetailsNews';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black54,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share_rounded,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainBar(),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                    'Excepteur sunt do qui tempor culpa fugiat fugiat voluptate laboris Lorem magna irure ea pariatur. Magna ea esse ipsum id ex consequat officia commodo voluptate ex sit ea minim deserunt. Veniam aute mollit fugiat ullamco laborum. Ex minim ad consequat aute Lorem commodo sit enim elit labore qui irure enim ipsum. Eu sint cillum excepteur exercitation est velit laboris eu.',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .merge(const TextStyle(wordSpacing: 3))),
              )
            ],
          ),
        ),
      )),
    );
  }
}
