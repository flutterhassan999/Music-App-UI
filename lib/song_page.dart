import 'package:flutter/material.dart';
import 'package:flutter_application_12/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[
                  SizedBox(
                    height: 65,
                    width: 65,
                    child: NeuBox(
                      child: Icon(Icons.arrow_back_ios,size:20),
                    ),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 65,
                    width: 65,
                    child: NeuBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset('assets/cover_art.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Billlie Eilish',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                'Lovely',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0.00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('3.20'),
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.4,
                  progressColor: Colors.greenAccent,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                height: 75,
                child: Row(
                  children:const[
                    Expanded(
                      child: NeuBox(
                        child: Icon(Icons.skip_previous,size: 30,),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:18.0),
                        child: NeuBox(
                          child: Icon(Icons.play_arrow,size: 30,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                        child: Icon(Icons.skip_next,size: 30,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
