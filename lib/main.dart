import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// style for summary,founder,co founder,ceo...
TextStyle title_style = const TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

// skills shaaape
Container skillsBar(String text, Color c) {
  return Container(
    decoration:
        BoxDecoration(color: c, borderRadius: BorderRadius.circular(14)),
    margin: const EdgeInsets.only(top: 8, bottom: 8),
    height: 30,
    alignment: Alignment.center,
    child: Text(text,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Nikola Tesla's Resume",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://th-thumbnailer.cdn-si-edu.com/P4m_grktJHfjvDJ-TG4EdHKIu2I=/fit-in/1072x0/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/58/20/5820175a-acdf-4bf0-bf4b-2ddd425d9107/file-20180102-26163-d9wlms.jpg"),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text(
                        "Nikola Tesla",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        "Engineer, Inventor, Genius",
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.email),
                          Text("NikolaTesla@chad.com")
                        ],
                      ),
                      Row(
                        children: const [Icon(Icons.phone), Text("314369963")],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Summary", style: title_style),
                      const Text(
                          "Serbian-American engineer and physicist Nikola Tesla (1856-1943) made dozens of breakthroughs in the production, transmission and application of electric power. He invented the first alternating current (AC) motor and developed AC generation and transmission technology"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Founder: ",
                            style: title_style,
                          ),
                          const Text("Tesla inventions 1876")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "CEO: ",
                            style: title_style,
                          ),
                          const Text("Whatever")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Father of: ",
                            style: title_style,
                          ),
                          const Text("Einstein")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Skills",
                        style: title_style,
                      ),
                      skillsBar("High Level IQ", Colors.purple),
                      skillsBar("Forward thinking", Colors.cyan),
                      skillsBar("Sleeps 3 hours a day bruv", Colors.orange),
                      skillsBar("Owns Edison", Color.fromARGB(255, 0, 0, 0)),
                      skillsBar("Energie explorer", Colors.green),
                      skillsBar("Has a lot more but cba", Colors.brown),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                              onPressed: () {}, child: const Text("Get")),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text("Tesla's library")),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
