import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:univfinder/model/schools.dart';
import 'package:univfinder/utils/colors.dart';
import 'package:univfinder/utils/fade_animation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 55,
          ),
          header(),
          greetingAndTabs(context),
          const SizedBox(
            height: 30,
          ),
          privateSchools(),
          const SizedBox(
            height: 30,
          ),
          publicSchools(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/menu.png',
            height: 35,
            width: 35,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }

  Widget greetingAndTabs(context) {
    List<String> tabText = ['Universities', 'Programs', 'News', 'Updates'];
    List<String> iconData = [
      'univ_icon.png',
      'programs.png',
      'news.png',
      'updates.png'
    ];
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                children: const [
                  FadeAnimation(
                    1.4,
                    Text(
                      'Hello, ',
                      style: TextStyle(
                          fontSize: 30,
                          color: redAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    Offset(-1, 0),
                  ),
                  FadeAnimation(
                    1.6,
                    Text(
                      'where are you planning to go to college?',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    Offset(-1, 0),
                  ),
                ],
              ),
            )),
        FadeAnimation(
          1.8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        color: redAccent.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/' + iconData[0],
                          fit: BoxFit.fill,
                          color: redAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    tabText[0],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        color: redAccent.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/' + iconData[1],
                          fit: BoxFit.fill,
                          color: redAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    tabText[1],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        color: redAccent.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/' + iconData[2],
                          fit: BoxFit.fill,
                          color: redAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    tabText[2],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                        color: redAccent.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/' + iconData[3],
                          fit: BoxFit.fill,
                          color: redAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    tabText[3],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          const Offset(0, 1),
        ),
      ],
    );
  }

  Widget privateSchools() {
    List<Schools> schools = [
      Schools(
        schoolName: 'University of Santo Tomas',
        rating: '4.8',
        location: 'Espana, Manila',
        img: 'assets/ust.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
      Schools(
        schoolName: 'Far Eastern University',
        rating: '4.5',
        location: 'Recto, Manila',
        img: 'assets/feu.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
      Schools(
        schoolName: 'Centro Escolar University',
        rating: '4.4',
        location: 'Mendiola, Manila',
        img: 'assets/ceu.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
      Schools(
        schoolName: 'University of East',
        rating: '4.6',
        location: 'Legarda, Manila',
        img: 'assets/ue.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
    ];
    return FadeAnimation(
      2.0,
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Best Universities',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: schools.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        'singleschool',
                        arguments: Schools(
                          schoolName: schools[index].schoolName,
                          location: schools[index].location,
                          rating: schools[index].rating,
                          img: schools[index].img,
                          gallery: schools[index].gallery,
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 350,
                          width: MediaQuery.of(context).size.width / 1.75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(schools[index].img),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                colors: [
                                  blackColor.withOpacity(.8),
                                  blackColor.withOpacity(.7),
                                  blackColor.withOpacity(.2),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  schools[index].schoolName,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: whiteColor),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.80,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: whiteColor.withOpacity(0.5),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      schools[index].location,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: whiteColor.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, i) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      const Offset(0, 1),
    );
  }

  Widget publicSchools() {
    List<Schools> schools = [
      Schools(
        schoolName: 'University of the Philippines',
        rating: '5.0',
        location: 'Quezon City, Metro Manila',
        img: 'assets/up.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
      Schools(
        schoolName: 'Unibersidad De Manila',
        rating: '4.3',
        location: 'Ermita, Manila',
        img: 'assets/udm.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
      Schools(
        schoolName:
            'Eulogio "Amang" Rodriguez Insititute of Science and Technology',
        rating: '4.8',
        location: 'Nagtahan, Manila',
        img: 'assets/earist.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
      Schools(
        schoolName: 'Polytechnic University of the Philippines',
        rating: '4.6',
        location: 'Old Sta Mesa, Manila',
        img: 'assets/pup.jpg',
        gallery: [
          'assets/ust_g1.jpg',
          'assets/ust_g2.jpg',
          'assets/ust_g3.jpg',
          'assets/ust_g4.jpg',
          'assets/ust_g5.jpg',
          'assets/ust_g6.jpg',
        ],
      ),
    ];
    return FadeAnimation(
      2.1,
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Public Universities',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: schools.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width / 1.75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(schools[index].img),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              colors: [
                                blackColor.withOpacity(.8),
                                blackColor.withOpacity(.7),
                                blackColor.withOpacity(.2),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                schools[index].schoolName,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: whiteColor),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.80,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: whiteColor.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    schools[index].location,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: whiteColor.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, i) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      const Offset(0, 1),
    );
  }
}
