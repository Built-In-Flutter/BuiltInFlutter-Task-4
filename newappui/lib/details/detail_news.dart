import 'package:flutter/material.dart';
import 'package:newappui/home/widgets/mainbar.dart';

class DetailsNews extends StatelessWidget {
  static const routeName = "DetailsNews";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share,
              color: Colors.black,
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
                mainbar(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                    'The buzz about TATA Motors taking over the plant got stronger following news reports about Ford is not the first manufacturer to receive financial help for electric vehicle production through the fund, set up to encourage investment in electric vehicle manufacturing in the UK.The factory will be Fords first European plant to produce components for electric cars There had been speculation about the future of the Halewood factory complex as Ford moves towards electrifying its vehicles Ford is not the first manufacturer to receive financial help for electric vehicle production through the fund, set up to encourage investment in electric vehicle manufacturing in the UK Business Secretary Kwasi Kwarteng said the Ford decision was "further proof that the UK remains one of the best locations in the world for high-quality automotive manufacturing The announcement suggested the facility would be an important part of electric vehicle manufacturing in the UK, Prof David Bailey of Birmingham Business School, said However, Ford said that it was not currently facing the kind of supply chain difficulties affecting some other UK businesses. Additional post-Brexit paperwork at ports, which has contributed to bottlenecks for some UK-based firms, has not been much of an obstacle for Ford as it has its own landing facilities at Dagenham, the firm said.The global car giant also recently announced a  (£730m) investment in its vehicle assembly facility in Cologne, Germany, and an expansion of electric vehicle production in Turkey and Romania.',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .merge(const TextStyle(wordSpacing: 3))),
            ],
            ),
          ),
      ),
      ),
    );
  }
}
