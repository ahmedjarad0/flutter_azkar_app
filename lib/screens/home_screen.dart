import 'package:azkar_app/screens/faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content = 'سبحان الله';

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(),
        ),
        actions: [
          PopupMenuButton<String>(onSelected: (String value) {
            setState(() {
              if (_content != value) {
                _content = value;
                _counter = 0;
              }
            });
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 'سبحان الله',
                height: 25,
                child: Text(
                  'سبحان الله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'استغفر الله',
                height: 25,
                child: Text(
                  'استغفر الله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'الحمد لله',
                height: 25,
                child: Text(
                  'الحمد لله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
            ];
          }),
          IconButton(
              onPressed: () {
                Navigator.pushNamed((context), '/info_screen',
                    arguments: {
                      'message': 'info screen',
                    }
                );
              },
              icon: Icon(Icons.info)),
          IconButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FaqsScreen(message: 'ads')));
          }, icon: Icon(Icons.question_answer))
        ],
        // automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  Color(0xFF42855B),
                  Color(0xFF90B77D),
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  color: Color(0xffD2D79F),
                  shape: BoxShape.circle,
                  // borderRadius: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(15),
                  // ) ,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.salla.sa/Dzoob/UOvy7RMAWGJBEt8ScHHUR4EAfPwbNZ08MPQJ0o9T.jpg'),
                  )),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rakkas(
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    alignment: AlignmentDirectional.center,
                    color: const Color(0xFFD2D79F),
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffD2D79F),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(10)),
                          )),
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(10),
                              ))),
                      child: Text(
                        'إعادة',
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
             ++_counter ;
           });
         },
         child: Icon(Icons.add),

      ),
    );
  }
}
