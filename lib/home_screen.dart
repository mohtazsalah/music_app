import 'package:flutter/material.dart';
import 'package:music_app/components/custom_list_tile.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List musicList = [
    {
      "avatar": "https://is5-ssl.mzstatic.com/image/thumb/Music4/v4/ae/74/6f/ae746f79-c0e7-bd13-bdf0-a39cb5fefe12/5051813914621_cover.jpg/800x800ac.jpg",
      "name": "Kiss The Rain",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/kiss-the-rain/881889878",
      "adamid": "881889878"
    } ,
    {
      "avatar": "https://is2-ssl.mzstatic.com/image/thumb/Features115/v4/3f/84/4e/3f844e97-8c23-b64d-87f1-d536e99f80e9/mzl.rsxdpqqq.jpg/800x800bb.jpg",
      "name": "Yiruma",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/yiruma/73406786",
      "adamid": "73406786"
    } ,
    {
      "avatar": "https://is3-ssl.mzstatic.com/image/thumb/Features124/v4/4e/0d/1f/4e0d1ff5-9f2e-0170-0ec9-3dbe25f3a471/pr_source.png/800x800bb.jpg",
      "name": "Billie Myers",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/billie-myers/99951",
      "adamid": "99951"
    } ,
    {
      "avatar": "https://is5-ssl.mzstatic.com/image/thumb/Music4/v4/ae/74/6f/ae746f79-c0e7-bd13-bdf0-a39cb5fefe12/5051813914621_cover.jpg/800x800ac.jpg",
      "name": "Kiss The Rain",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/kiss-the-rain/881889878",
      "adamid": "881889878"
    } ,
    {
      "avatar": "https://is2-ssl.mzstatic.com/image/thumb/Features115/v4/3f/84/4e/3f844e97-8c23-b64d-87f1-d536e99f80e9/mzl.rsxdpqqq.jpg/800x800bb.jpg",
      "name": "Yiruma",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/yiruma/73406786",
      "adamid": "73406786"
    } ,
    {
      "avatar": "https://is3-ssl.mzstatic.com/image/thumb/Features124/v4/4e/0d/1f/4e0d1ff5-9f2e-0170-0ec9-3dbe25f3a471/pr_source.png/800x800bb.jpg",
      "name": "Billie Myers",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/billie-myers/99951",
      "adamid": "99951"
    } ,
    {
      "avatar": "https://is5-ssl.mzstatic.com/image/thumb/Music4/v4/ae/74/6f/ae746f79-c0e7-bd13-bdf0-a39cb5fefe12/5051813914621_cover.jpg/800x800ac.jpg",
      "name": "Kiss The Rain",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/kiss-the-rain/881889878",
      "adamid": "881889878"
    } ,
    {
      "avatar": "https://is2-ssl.mzstatic.com/image/thumb/Features115/v4/3f/84/4e/3f844e97-8c23-b64d-87f1-d536e99f80e9/mzl.rsxdpqqq.jpg/800x800bb.jpg",
      "name": "Yiruma",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/yiruma/73406786",
      "adamid": "73406786"
    } ,
    {
      "avatar": "https://is3-ssl.mzstatic.com/image/thumb/Features124/v4/4e/0d/1f/4e0d1ff5-9f2e-0170-0ec9-3dbe25f3a471/pr_source.png/800x800bb.jpg",
      "name": "Billie Myers",
      "verified": false,
      "weburl": "https://music.apple.com/us/artist/billie-myers/99951",
      "adamid": "99951"
    }
  ];

  String currentTitle = '' ;
  String currentCover = '' ;
  String currentSinger = '' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Playlist',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: musicList.length,
                  itemBuilder: (context , index) => customListTile(
                    title: musicList[index]['name'],
                    singer: musicList[index]['adamid'],
                    cover: musicList[index]['avatar'],
                    onTap: (){
                      setState(() {
                        currentCover = musicList[index]['avatar'];
                        currentSinger = musicList[index]['adamid'];
                        currentTitle = musicList[index]['name'];
                      });
                    },
                  ),
              ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white ,
              boxShadow: [BoxShadow(
                color: Color(0x55212121),
                blurRadius: 8.0,
              ),
              ]
            ),
            child: Column(
              children: [
                Slider.adaptive(
                    value: 0.0,
                    onChanged: (value){},
                ),
                Row(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        image: DecorationImage(
                          image: NetworkImage(currentCover),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
