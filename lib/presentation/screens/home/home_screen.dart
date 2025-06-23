import 'package:bitfolio/core/configs/themes/app_colors.dart';
import 'package:bitfolio/presentation/widgets/common/styled_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _gitStats = [
      'Total Stars',
      'Total Commits',
      'Total Repos',
      'Contributions',
    ];

    final _gitStatsIcons = [
      Icons.star_border_outlined,
      Icons.commit_outlined,
      Icons.my_library_books_outlined,
      Icons.publish_outlined
    ];
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: Colors.transparent,
          surfaceTintColor: AppColors.lightBackground,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              'assets/vectors/logo.svg',
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            'Badusha',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.dark_mode),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: styledHeading(text: 'favorites', fontSize: 30),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: styledHeading(text: 'now building', fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: styledHeading(text: 'github stats', fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: .5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) => ListTile(
                              leading: Icon(
                                _gitStatsIcons[index],
                                size: 20,
                              ),
                              horizontalTitleGap: 5,
                              minTileHeight: 8,
                              title: Text(
                                _gitStats[index],
                                style: TextStyle(fontSize: 13),
                              ),
                              trailing: Text(
                                '100k',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                        separatorBuilder: (ctx, index) => Divider(),
                        itemCount: _gitStats.length),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: styledHeading(text: 'CTA', fontSize: 30),
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(),
                            right: BorderSide(),
                            top: BorderSide()),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Explore Projects'),
                          Icon(
                            Icons.arrow_outward_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('View Resume'),
                          Icon(
                            Icons.arrow_outward_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(),
                            left: BorderSide(),
                            top: BorderSide()),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50))),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
