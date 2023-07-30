
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Weather_Forecast extends StatefulWidget {
  const Weather_Forecast({Key? key}) : super(key: key);

  @override
  State<Weather_Forecast> createState() => _Weather_ForecastState();
}

class _Weather_ForecastState extends State<Weather_Forecast> {

  DateTime date=DateTime.now();
  String dayOfWeek = DateFormat('EEEE').format(DateTime.now());
  String monthAndDate = DateFormat('MMMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('${dayOfWeek}, ${monthAndDate}',style: TextStyle(
          fontSize: 15,color: Colors.grey.shade600
        ),),
        actions: [
          Icon(Icons.more_vert,color: Colors.white,size: 25,)
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 6,right: 6,top: 15),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('BENGALURU',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27,
                color: Colors.white,
                  letterSpacing: 1.5
              ),),
              SizedBox(height: 5,),
              Text('SCATTERED CLOUDS',style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 17,
                  color: Colors.grey.shade400,
                  letterSpacing: 1.8
              ),),
              SizedBox(height: 15,),
              Icon(Icons.cloudy_snowing,size: 69,color: Colors.white,),
              Text('30°',style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 88,
                  color: Colors.white,
                  letterSpacing: 1.8
              ),),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('max',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.grey.shade600,
                        ),),
                        SizedBox(height: 8,),
                        Text('31°',style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            color: Colors.white,
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                      child: VerticalDivider(
                        color: Colors.grey.shade600,
                        thickness: 1,
                        width: 40,
                      ),
                    ),
                    Column(
                      children: [
                        Text('min',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.grey.shade600,
                        ),),
                        SizedBox(height: 8,),
                        Text('29°',style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17,
                          color: Colors.white,
                        ),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
