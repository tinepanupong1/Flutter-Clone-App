import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/coming_soon_movie_widget.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            title: const Text(
              'New & Hot',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  color: Colors.blue,
                  height: 27,
                  width: 27,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
            bottom: TabBar(
              dividerColor: Colors.black,
              isScrollable: false,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              labelColor: Colors.black,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              unselectedLabelColor: Colors.white,
              tabs: const [
                Tab(
                  text: '  🍿 Coming Soon  ',
                ),
                Tab(
                  text: "  🔥 Everyone's watching  ",
                ),
              ],
            ),
          ),
          //ภาพ coming soon
          body: const TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://media.discordapp.net/attachments/885874434391539733/1214627755703140442/2.png?ex=65f9cd3f&is=65e7583f&hm=f1f8f214863e25bdc7b72b3b39bb5a9f58f13307a5d2d76058efb0a6d12e1276&=&format=webp&quality=lossless&width=1177&height=662',
                    overview:
                        "The story begins with Kamado Tanjiro, a young boy whose family was killed by a demon. So he decided to become a ‘Hashira’ to help his sister 'Nezuko', who turned into a demon, back into a human. The first season, ‘Demon Slayer: Tanjiro Kamado, Unwavering Resolve Arc', was broadcast in April 2019, and in October 2020, a movie named ‘Demon Slayer: Mugen Train Arc’ was broadcast, and the anime series ‘Demon Slayer: Entertainment District Arc’ was broadcast in October 2021 too. And in the spring of 2024, a long-awaited new anime series, ‘Demon Slayer: Swordsmith Village Arc', is already scheduled to be broadcast.",
                    logoUrl:
                        "https://media.discordapp.net/attachments/885874434391539733/1214628201834225674/Suzume.png?ex=65f9cdaa&is=65e758aa&hm=a6627e7041cbb018acf4b7feef66267868dcfcc883b0717f874d66e9e5264fde&=&format=webp&quality=lossless&width=582&height=437",
                    month: "Jun",
                    day: "19",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://media.discordapp.net/attachments/885874434391539733/1214627756843860030/3.png?ex=65f9cd3f&is=65e7583f&hm=b38dfa669924b7497fcc3dd7f37a11ad2dc1c0384111cd75288e0de40570820f&=&format=webp&quality=lossless&width=1177&height=662',
                    overview:
                        'Po is set to become the new spiritual leader of the Valley of Peace, but before he can do that, he must find a successor to become the new Dragon Warrior. He appears to find one in Zhen, a fox with plenty of promising abilities but who doesn’t quite like the idea of Po training him.',
                    logoUrl:
                        "https://media.discordapp.net/attachments/885874434391539733/1214627955267862568/4.png?ex=65f9cd6f&is=65e7586f&hm=39f5b687c474b955e1b3e3ffb8c2f904cd86d5b81d5836e0580a4e94d7e0de51&=&format=webp&quality=lossless&width=882&height=662",
                    month: "Mar",
                    day: "31",
                  ),   
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://media.discordapp.net/attachments/885874434391539733/1218575642690453534/4.png?ex=66082a01&is=65f5b501&hm=b558ef0408d667dbf653507ed43d4a9216df59182a93eda33c004a78cc3d2489&=&format=webp&quality=lossless&width=1177&height=662',
                    overview:
                        'Animated feature film based on the popular comic strip about a sarcastic, lasagna-loving cat.',
                    logoUrl:
                        "https://media.discordapp.net/attachments/885874434391539733/1218575645425139832/7.png?ex=66082a01&is=65f5b501&hm=c9d6330a0080c3f7ae8b9cd1d454df5188554bf71d06395639ea850eaea17622&=&format=webp&quality=lossless&width=882&height=662",
                    month: "May",
                    day: "22",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://media.discordapp.net/attachments/885874434391539733/1218577351231672470/zz.png?ex=66082b98&is=65f5b698&hm=a16f56d19083d84e9685ae2a015a54876dfb792971d0165d8872cd65286ce104&=&format=webp&quality=lossless&width=1177&height=662',
                    overview:
                        "After receiving an order to be replaced in Operation Strix, Loid decides to help Anya win a cooking competition at Eden Academy by making the principal's favorite meal in order to prevent his replacement. The Forgers decide to travel to the region where the meal originates, but accidentally set off a chain of events which could put the world's peace at risk.",
                    logoUrl:
                        "https://media.discordapp.net/attachments/885874434391539733/1218575644900724776/6.png?ex=66082a01&is=65f5b501&hm=9e6925187ffd7ad58979de2e358d77fdb40bfabba07fcd0a752f8048a3560c9f&=&format=webp&quality=lossless&width=882&height=662",
                    month: "Jul",
                    day: "04",
                  ),   
                ],
              ),
            ),
            //ภาพ  every one
            SingleChildScrollView(
              child: Column(
                children: [
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://media.discordapp.net/attachments/885874434391539733/1214627754415226930/1.png?ex=66157cbf&is=660307bf&hm=9e9138f5a3e5db543b46b26fbc802b03bbd9861e57fd2140126518f5536734ca&=&format=webp&quality=lossless&width=1177&height=662',
                    overview:
                        "Suzume, a 17-year-old girl who lives in a quiet town in Kyushu, encounters a traveling young man who tells her I'm looking for a door. She follows after him and discovers a weathered door in the ruins in the mountains, as if it were the only thing left standing from a collapse. As if drawn by something, Suzume reaches for the door... Before long, doors begin to open one after another in various parts of Japan. As disasters come from the far side of the doors, the open doors must be closed. The stars, the setting sun, and the morning sky—in that place she wandered into, there was a sky that seemingly blended all of time together. Guided by the mysterious doors, Suzume's door-locking journey begins.",
                    logoUrl:
                        "https://media.discordapp.net/attachments/885874434391539733/1214627955943276605/1.png?ex=66157cef&is=660307ef&hm=f298d34ac7c0f25d6f815f39ce261f432a1a90bfaa6b0e785f257f3b80936858&=&format=webp&quality=lossless&width=882&height=662",
                    month: "Feb",
                    day: "14",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ComingSoonMovieWidget(
                    imageUrl:
                        'https://media.discordapp.net/attachments/885874434391539733/1223293091629240403/Suzume_1.png?ex=66195378&is=6606de78&hm=23edb44f42a5675a73e19287f2bc3c1aa4a8ebc930fe4476853d9fce570c5c84&=&format=webp&quality=lossless&width=687&height=386',
                    overview:
                        'Disney and Pixar’s “Elemental” is an all-new, original feature film set in Element City, where fire-, water-, land- and air residents live together. The story introduces Ember, a tough, quick-witted and fiery young woman, whose friendship with a fun, sappy, go-with-the-flow guy named Wade challenges her beliefs about the world they live in.',
                    logoUrl:
                        "https://media.discordapp.net/attachments/885874434391539733/1214627956484476928/2.png?ex=66157cef&is=660307ef&hm=34c0804ab697efb39a77791f30fa49200d960d86ff025067221a3ca77d45b785&=&format=webp&quality=lossless&width=882&height=662",
                    month: "Feb",
                    day: "14",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
