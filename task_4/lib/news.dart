import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_3/classes/newinfomodellist.dart';
import 'package:task_3/classes/newsinfo.dart';
import 'package:task_3/classes/newsinfomodel.dart';

class NewsPage extends StatelessWidget {
  Future<List<NewsInfoModel>> getnews() async {
    NewsInfoModelList list = new NewsInfoModelList();
    List<NewsInfoModel> news = await list.populatenews();
    return news;
  }

  List<NewsInfo> newsdata = [
    NewsInfo(
        'Apple co-founder Wozniak backs cryptocurrency, calls Bitcoin "mathematically pure"',
        'Wozniak, counted among the most renowned computer programmers, said he belongs to the camp which thinks that "crypto will be used effectively".',
        'https://images.moneycontrol.com/static-mcnews/2018/02/Steve-Wozniak-770x433.jpg?impolicy=website&width=770&height=431'),
    NewsInfo(
        'Intel 12th Gen Core Alder Lake for Desktops: Top SKUs Only, Coming November 4th',
        'Six Alder Lake CPUs, \$589 For Core i9',
        'https://images.anandtech.com/doci/16959/21ADL_Chip_Angle_6_Color_BKG_3000pixels_678x452.jpg'),
    NewsInfo(
        'How Apple is gaining smartphone customers during a chip shortage',
        'Apple has weathered the supply crunch better than many other companies due to its massive purchasing power and long-term supply agreements with chip vendors even though iPhone 13 production hit a snag.',
        'https://images.indianexpress.com/2021/10/Apple-AP-2.jpg'),
    NewsInfo(
        'JioPhone Next launch date announced, set to be available from Diwali',
        'Reliance Jio and Google have announced that the JioPhone Next will be available for purchase starting November 4 on Diwali. Reliance JioPhone Next was delayed due to the global chip shortage but in the next few days buyers will be able to get their hands on it.',
        'https://static.toiimg.com/thumb/resizemode-4,msid-87402060,width-800,height-450,ver-75/87402060.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breaking News'),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder(
          future: getnews(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        snapshot.data[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapshot.data[index].picture),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(snapshot.data[index].story),
                      ),
                      isThreeLine: true,
                    ),
                  );
                },
              );
            }
            return const Center(
              child: Text("Please Wait"),
            );
          },
        ),
      ),
    );
  }
}
