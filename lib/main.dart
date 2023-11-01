import 'package:flutter/material.dart';

class ImageDisplayPage extends StatelessWidget {
  final String imagePath;

  ImageDisplayPage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Pinterest'),
      ),
      body: Center(
        child: Image.asset(imagePath), // Display the image from assets
      ),
    );
  }
}

class ImageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Gallery'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Your existing content here
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Handle gallery icon click by navigating to a new page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewPage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.image_outlined, // Add your desired icon here
                    size: 40.0, // Adjust the icon size as needed
                    color: Colors.blue, // Adjust the icon color as needed
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle camera icon click by navigating to a new page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraPage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.camera_alt_outlined, // Add your desired second icon here
                    size: 40.0, // Adjust the icon size as needed
                    color: Colors.blue, // Adjust the icon color as needed
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Albums'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 16.0), // Add spacing between images
              itemCount: 8, // Number of images
              itemBuilder: (context, index) {
                return Image.asset('images/cat${index + 1}.jpg');
              },
            ),
          ),
          Container(
            color: Colors.pinkAccent, // Change the background color here
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '+ Add Your Content Here',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Photos'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0), // Add padding for spacing
        children: <Widget>[
          Text(
            '>Today',
            style: TextStyle(fontSize: 20.0),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/79/83/40/7983403ae09266f3cbef329f4fc4ea5f.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/2f/61/cc/2f61cc9dfd65a6ebc354c06ce41ac72b.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            '>Yesterday',
            style: TextStyle(fontSize: 20.0),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/80/44/d8/8044d811cfc9fccb5b95eaa4902b014a.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/ce/7d/3a/ce7d3aaaf761f45e9bc610c98657fef6.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/f7/52/d8/f752d80abe5c885a7614e0e014f3a9de.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              // Add more images as needed
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/18/dd/47/18dd478c6e64a57411f0d5ad85fbfea2.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/08/8a/a5/088aa5bb3cf0ef4ee23e98be160fd5f0.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Center(
                  child: Image.network(
                    'https://i.pinimg.com/564x/71/a0/3a/71a03af566e22136b4c468982ea940e0.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              // Add more images as needed
            ],
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioApp(),
    );
  }
}

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioApp> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text('My Portfolio'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          HomeTab(),
          ProjectsTab(),
          ContactTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue[50],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.pinkAccent.withOpacity(0.8),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_sharp),
            label: 'Data Diri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_history),
            label: 'Riwayat Pekerjaan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assured_workload),
            label: 'Data Pendidikan',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageSelectionPage()),
              );
            },
            child: CircleAvatar(
              radius: 130,
              backgroundImage: AssetImage('images/Cat.jpg'),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Muhamad Irfan Aldiansyah',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('Teknik Informatika'),
          SizedBox(height: 15),
          _buildDataRow('Age', '22'),
          _buildDataRow('Location', 'Tangerang, Banten'),
          _buildDataRow('Email', 'fanaldian07@gmail.com'),
          _buildDataRow('Contact', '+6282111729907'),
        ],
      ),
    );
  }
}


Widget _buildDataRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 9.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label + ': ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    ),
  );
}


class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text('Riwayat Pekerjaan',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          _buildDataRow('Nama ', 'Muhamad Irfan Aldiansyah'),
          _buildDataRow('~ Tempat Tanggal Lahit', 'Tangerang, 10-07-2001'),
          _buildDataRow('~ Jabatan', 'Dokumen KUR'),
          _buildDataRow('~ Pendidikan', '- SD Berijazah 2013'),
          _buildDataRow('', '- SMP Berijazah 2016'),
          _buildDataRow('', '- SMA Berijazah 2019'),
        ],
      ),
    );
  }
}

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text('Data Pendidikan',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          _buildDataRow('Formal ', ''),
          _buildDataRow('~ 2006 - 2009', 'TK Nurhidayah, Kab.Tangerang'),
          _buildDataRow('~ 2009 - 2013', 'SDN Balaraja, Kab.Tangerang'),
          _buildDataRow('~ 2013 - 2016', 'SMPN 1 Balaraja, Kab.Tangerang'),
          _buildDataRow('~ 2016 - 2019', 'SMA Mandiri Balaraja, Kab.Tangerang'),
          SizedBox(height: 20),
          _buildDataRow('Non-Formal ', ''),
          _buildDataRow('2018 - 2019 ', 'Menjadi Sekretaris OSIS'),
        ],
      ),
    );
  }
}