import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/BottomNavigation.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> storyImages = [
    "https://media.istockphoto.com/id/1345020578/photo/cheerful-caucasian-schoolgirl-teenager-pupil-student-smiling-with-toothy-smile-looking-at.jpg?s=1024x1024&w=is&k=20&c=UPSIli8ciTnL8wydHY6hGgaFzXzlzc6yW3BgcW_2LvQ=",
    "https://media.istockphoto.com/id/1392783238/photo/portrait-of-a-teenage-smiling-female-looking-at-the-camera-on-a-blue-background.jpg?s=1024x1024&w=is&k=20&c=cPytjchmnWau9d1sdPlqB3LEZtMAjqRss6MLVpRu6PE=",
    "https://media.istockphoto.com/id/1278975233/photo/high-school-students-doing-exam-in-classroom.jpg?s=1024x1024&w=is&k=20&c=lQ3lAE4GTBE7kLUqDyWhgvKdWx9hFbX-RNMhRzzNBCU=",
    "https://media.istockphoto.com/id/2166429659/photo/young-girl-holding-laptop-and-looking-up.jpg?s=1024x1024&w=is&k=20&c=aBqfxyrI0lQKELDwCs3sCFioDamoZfWoY3mmQP2WiMk=",
    "https://media.istockphoto.com/id/649314674/photo/woman-teacher-and-girl-student-scientists-looking-at-glass-microscope-slide-through-magnifier.jpg?s=1024x1024&w=is&k=20&c=XBBCqDLBzZsT_0hlCbFlx_4JcrXMMpLa5Ut4yYk3OCs=",
    "https://media.istockphoto.com/id/498794388/photo/girl.jpg?s=1024x1024&w=is&k=20&c=lNgvyl2IOW0KxBCP-96lMwJtvhaZU17_aRPEW2QPrFU=",
    "https://media.istockphoto.com/id/472367018/photo/teen-girls-facing-the-sunset-with-on-a-summer-evening.jpg?s=1024x1024&w=is&k=20&c=tF4OdMf_ON95Vv_NB6RT5h80Kjr3KR3vE8zd0cvO3D4=",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink,width: 2),

                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(storyImages[1]),
                        fit: BoxFit.cover,
                      ),

                    ),

                  ),
                  SizedBox(width: 25,),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0),
                    child: Container(
                     child: Column(
                       children: [
                         Text("20",style: TextStyle(color: Colors.white,fontSize: 15),),
                         SizedBox(height: 10,),
                         Text("Posts",style: TextStyle(color: Colors.white,fontSize: 15),),
                       ],
                     ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text("1.6M",style: TextStyle(color: Colors.white,fontSize: 15),),
                          SizedBox(height: 10,),
                          Text("Followers",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Padding(
                    padding: const EdgeInsets.only(top: 17.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text("3",style: TextStyle(color: Colors.white,fontSize: 15),),
                          SizedBox(height: 10,),
                          Text("Following",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ],
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
          //=========== PROFILE INFO ======================
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Zeeb Butt",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 7),
                  Text("Student at UOE 📚",style: TextStyle(color: Colors.white,fontSize: 12),),
                  SizedBox(height: 2),
                  Text("Wish me at 28 Sep 🎂",style: TextStyle(color: Colors.white,fontSize: 12),),

                ],

              ),
            ),
          ),
          // ============PROFILE INFO END =================
          //========= HIGHLIGHTS SECTION ==============
          SizedBox(height: 25,),
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
                        "Highlights",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          //============= HIGHLIGHTS SECTION END =============
          // ==============POSTS SECTION ======================
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 IconButton(
                   onPressed: () {},
                   icon: Icon(Icons.grid_on_sharp),
                   color: Colors.white,
                 ),
                 SizedBox(width: 20,),
                 IconButton(
                   onPressed: () {},
                   icon: Icon(Icons.video_camera_front_sharp),
                   color: Colors.white,
                 ),
                 SizedBox(width: 20,),
                 IconButton(
                   onPressed: () {},
                   icon: Icon(Icons.perm_contact_calendar_rounded),
                   color: Colors.white,
                 ),
               ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(storyImages[1]),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                  Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(storyImages[2]),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                  Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(storyImages[0]),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(storyImages[4]),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                  Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(storyImages[5]),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                  Container(
                    height: 118,
                    width: 118,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(storyImages[1]),
                        fit: BoxFit.cover,
                      ),

                    ),
                  ),
                ],
              )

            ],
          ),
          // ==============POSTS SECTION ENDED ======================


        ],
      ),

      backgroundColor: Colors.black,
      bottomNavigationBar: Bottomnavigation(),
    );
  }
}
