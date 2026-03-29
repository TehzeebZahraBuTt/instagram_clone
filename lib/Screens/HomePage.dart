import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/BottomNavigation.dart';

class Homepage extends StatelessWidget {
  List<String> storyImages = [
    "https://media.istockphoto.com/id/1345020578/photo/cheerful-caucasian-schoolgirl-teenager-pupil-student-smiling-with-toothy-smile-looking-at.jpg?s=1024x1024&w=is&k=20&c=UPSIli8ciTnL8wydHY6hGgaFzXzlzc6yW3BgcW_2LvQ=",
    "https://media.istockphoto.com/id/1392783238/photo/portrait-of-a-teenage-smiling-female-looking-at-the-camera-on-a-blue-background.jpg?s=1024x1024&w=is&k=20&c=cPytjchmnWau9d1sdPlqB3LEZtMAjqRss6MLVpRu6PE=",
    "https://media.istockphoto.com/id/1278975233/photo/high-school-students-doing-exam-in-classroom.jpg?s=1024x1024&w=is&k=20&c=lQ3lAE4GTBE7kLUqDyWhgvKdWx9hFbX-RNMhRzzNBCU=",
    "https://media.istockphoto.com/id/2166429659/photo/young-girl-holding-laptop-and-looking-up.jpg?s=1024x1024&w=is&k=20&c=aBqfxyrI0lQKELDwCs3sCFioDamoZfWoY3mmQP2WiMk=",
    "https://media.istockphoto.com/id/649314674/photo/woman-teacher-and-girl-student-scientists-looking-at-glass-microscope-slide-through-magnifier.jpg?s=1024x1024&w=is&k=20&c=XBBCqDLBzZsT_0hlCbFlx_4JcrXMMpLa5Ut4yYk3OCs=",
    "https://media.istockphoto.com/id/498794388/photo/girl.jpg?s=1024x1024&w=is&k=20&c=lNgvyl2IOW0KxBCP-96lMwJtvhaZU17_aRPEW2QPrFU=",
    "https://media.istockphoto.com/id/472367018/photo/teen-girls-facing-the-sunset-with-on-a-summer-evening.jpg?s=1024x1024&w=is&k=20&c=tF4OdMf_ON95Vv_NB6RT5h80Kjr3KR3vE8zd0cvO3D4=",
  ];

  List<String> storyNames = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Frank",
    "Grace",
  ];
  List<String> posts = [
    "https://media.istockphoto.com/id/2072236314/photo/success-is-a-sum-of-small-efforts-repeated-daily-text-on-yellow-notepad-encouragement-concept.jpg?s=1024x1024&w=is&k=20&c=JIAFaPOD_ENuGvq99E5vq9et_CNGbRwmao4rorzDUV8=",
    "https://media.istockphoto.com/id/2157565533/vector/you-can-do-more-than-you-think-hand-drawn-motivation-lettering-phrase-for-poster-logo.jpg?s=1024x1024&w=is&k=20&c=FDKRrjfjvclGP4yAwbP-wDQcQdHwsdrPc4ZCpPyGsGU=",
    "https://media.istockphoto.com/id/1463345481/photo/success-inspirational-quote.jpg?s=1024x1024&w=is&k=20&c=EwIM6upwlq1uaTDEOufJiSbifkTesguJ1CMWqY9dRZo=",
    "https://media.istockphoto.com/id/1824841906/vector/enjoy-the-little-things-text-with-vector-firework-burst.jpg?s=1024x1024&w=is&k=20&c=rWtoJ9MPoRkKS5he4L1hi-EPHK3rmEAOXBwX19g7TA4=",
    "https://media.istockphoto.com/id/2158461813/photo/one-bad-chapter-does-not-mean-your-story-is-over.jpg?s=1024x1024&w=is&k=20&c=qWl3haDVgc74_11KNsbBfSCyoIyNBsuYhmKuRlr0gxQ=",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: "Instagram Sans", color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink),
                          image: DecorationImage(
                            image: NetworkImage(storyImages[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        storyNames[index],
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          // ==============posts SECTION ======================
          Expanded(
            flex: 1,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.pink),
                              image: DecorationImage(
                                image: NetworkImage(storyImages[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            storyNames[index],
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),

                          SizedBox(width: 240),
                          Icon(Icons.more_vert, color: Colors.white),
                        ],
                      ),
                    ),
                    // ===============POST SECTION =================
                    SizedBox(height: 10),
                    Container(
                      height: 300,
                      width: 600,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(posts[index]),

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //======================POST SECTION ENDED===============
                    SizedBox(height: 10),
                    //=====================LIKE,COMMENT ETC SECTION===========================
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.comment_outlined, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.send_rounded, color: Colors.white),
                        SizedBox(width: 220),
                        Icon(Icons.list_alt, color: Colors.white),
                      ],
                    ),
                    //=====================LIKE,COMMENT ETC SECTION ENDED===========================
                    SizedBox(height: 10),
                    //=====================CAPTION SECTION===========================
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Zeeb Butt : Nature captured ....",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    //=====================CAPTION SECTION ENDED===========================

                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottomnavigation(),
    );
  }
}
