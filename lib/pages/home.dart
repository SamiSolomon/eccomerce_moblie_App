import "package:flutter/material.dart";
import "package:untitled/widget/widget_support.dart";



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
    "images/TV.png",
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top:10, left: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Samuel",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      "Good Morning",
                      style: AppWidget.lightTextFieldStyle(),

                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/boy.jpg", height: 70, width: 70),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Products',
                  hintStyle: AppWidget.lightTextFieldStyle(),
                  prefixIcon: Icon(Icons.search, color: Colors.black,)
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                // Text
                Text(
                  "see all",
                  style:TextStyle(color: Color(0xFFfd6f3e),fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height:20.0),
            Row(
              children: [
            Container(
              height: 130,
              padding: EdgeInsets.all(20.0),
              margin:  EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFFfd6f3e),
                borderRadius: BorderRadius.circular(10.0)
                  ), // BoxDecoration
        child: Center(child: Text("All",
            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )) ,
        ), // Column
                Expanded(
                  child: Container(
                    height: 130,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryTitle(image: categories[index],);
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Products",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                // Text
                Text(
                  "see all",
                  style:TextStyle(color: Color(0xFFfd6f3e),fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              height: 190,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding:EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Image.asset("images/headphone2.png", height: 100, width: 100,),
                    Text("Headphone", style: AppWidget.semiBoldTextFieldStyle(),),
                    Row(
                      children: [
                        Text("\$100", style: TextStyle(color: Color(0xFFfd6f3e), fontWeight: FontWeight.bold, fontSize: 22.0),),
                        SizedBox(width: 30.0,),
                        Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(10.0)),
                            child: Icon(Icons.add, color: Colors.white,)),],
                    )
                  ],
                ),
              ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding:EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Image.asset("images/watch2.png", height: 100, width: 100,),
                        Text("App Watch", style: AppWidget.semiBoldTextFieldStyle(),),
                        Row(
                          children: [
                            Text("\$100", style: TextStyle(color: Color(0xFFfd6f3e), fontWeight: FontWeight.bold, fontSize: 22.0),),
                            SizedBox(width: 30.0,),
                            Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(10.0)),
                                child: Icon(Icons.add, color: Colors.white,)),],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),

                    padding:EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Image.asset("images/watch2.png", height: 100, width: 100,),
                        Text("App Watch", style: AppWidget.semiBoldTextFieldStyle(),),
                        Row(
                          children: [
                            Text("\$100", style: TextStyle(color: Color(0xFFfd6f3e), fontWeight: FontWeight.bold, fontSize: 22.0),),
                            SizedBox(width: 30.0,),
                            Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(10.0)),
                                child: Icon(Icons.add, color: Colors.white,)),],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),

                    padding:EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Image.asset("images/watch2.png", height: 100, width: 100,),
                        Text("App Watch", style: AppWidget.semiBoldTextFieldStyle(),),
                        Row(
                          children: [
                            Text("\$100", style: TextStyle(color: Color(0xFFfd6f3e), fontWeight: FontWeight.bold, fontSize: 22.0),),
                            SizedBox(width: 30.0,),
                            Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(10.0)),
                                child: Icon(Icons.add, color: Colors.white,)),],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  String image;

  CategoryTitle({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin:EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ), // BoxDecoration
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height:50.0, width: 50.0, fit:BoxFit.cover,),
          SizedBox(height: 10.0,),
          Icon(Icons.arrow_forward)
        ],
      ), // Column
    ); // Container
  }
}

