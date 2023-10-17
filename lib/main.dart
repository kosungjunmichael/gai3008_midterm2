import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MedicalicHome(),
    );
  }
}

class MedicalicHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100, // Set this height

        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Container(
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Medi',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                    TextSpan(
                        text: 'calic',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 28)),
                  ],
                ),
              ),
              const Text(
                'Your Health, Our Priority.',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black12, width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(80),
              color: Colors.transparent,
            ),
            child: const Icon(Icons.search),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        shadowColor: Colors.transparent,
        actions: [
          UnconstrainedBox(
              child: LimitedBox(
            maxWidth: 70,
            maxHeight: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8),
                    child: Center(
                      child: Image.network(
                        'https://www.gstatic.com/android/keyboard/emojikitchen/20201001/u1f920/u1f920_u1f921.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )),
            ),
          )),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIconOption(Icons.people, 'Doctors'),
                  _buildIconOption(Icons.thermostat, 'Therm'),
                  _buildIconOption(Icons.note, 'EHR'),
                ],
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text(
                  'Ruby Melinda Charles',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text('Psychology Specialist'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('3 yrs Experience'),
                    SizedBox(height: 4),
                    Text('4.7'),
                    Text('362 Reviews'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text(
                  'Glucose Level',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text('Empowering You with Healthy Glucose Levels.'),
                trailing: Text('168,93 mg/dL'),
              ),
              const SizedBox(height: 20),
              const ListTile(
                title: Text(
                  'Heart Rate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text('Monitoring Hearts, One Beat at a Time.'),
                trailing: Text('24,32 Bpm'),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.calendar_today),
                  Icon(Icons.message),
                  Icon(Icons.person),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconOption(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            icon,
            color: Colors.white,
            size: 24.0,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
