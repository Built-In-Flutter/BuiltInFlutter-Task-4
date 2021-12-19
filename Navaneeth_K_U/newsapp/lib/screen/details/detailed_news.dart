import 'package:flutter/material.dart';
import 'package:portfolio/screen/home/widgets/main_bar.dart';

class DetailedNews extends StatelessWidget {
  static const routeName = 'DetailedNews';

  const DetailedNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(Icons.share, color: Colors.black,),
        )],
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_rounded, color: Colors.black,)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              const Mainbar(),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text('A new, 3D-printable polymer nanocomposite ink has incredible properties — and many applications in aerospace, medicine and electronics.', style: Theme.of(context).textTheme.headline6),
                  const SizedBox(height: 10),
                  Text('Mechanical engineering researchers at Michigan Technological University have created a way to make a 3D-printable nanocomposite polymeric ink that uses carbon nanotubes (CNTs) — known for their high tensile strength and lightness. This revolutionary ink could replace epoxies — and understanding why its properties are so fantastic is a first step toward its mass use.', style: Theme.of(context).textTheme.bodyText1),
                  Text('3D printing, also known as additive manufacturing, is more versatile and efficient than casting. It adds a material with precision, often in complex geometries, with considerably less excess to  cut away. Adding low-dimensional nanomaterials such as CNTs, graphene, metal nanoparticles and quantum dots allows 3D-printed materials to adapt to external stimuli, giving them features such as electrical and thermal conductance, magnetism and electrochemical storage.',style: Theme.of(context).textTheme.bodyText1),
                  Text('But 3D printing using plastic, metal or something else entirely isn’t new. What Tech researchers have done differently is use polymer nanocomposites (made of epoxy, carbon nanotubes and nano-clay) and a printing process that doesn’t sacrifice functionality. The junction of material type and morphology — size, shape, structure — in polymer nanocomposite inks is the ultimate in form meeting function.',style: Theme.of(context).textTheme.bodyText1),
                  Text('The exploration of process, morphology and properties of polymeric inks is the subject of an article recently published in the journal Additive Manufacturing by Parisa Pour Shahid Saeed Abadi, an engineer who explores the interface of materials, mechanics and medicine, and graduate student Masoud Kasraie.',style: Theme.of(context).textTheme.bodyText1)

                ],
              ),

            ],
          ),
        ),
      )),
    );
  }
}
