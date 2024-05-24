import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ageLOC TRME',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ageLOC TRME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final List<List<String>> gridData = [ // danh sách gridview
    ['assets/images/icon_0.png', '00.0', 'kg', '-5 kg'],
    ['assets/images/icon_1.png', '105', 'kg/m2', '103'],
    ['assets/images/icon_2.png', '00.0', '%', '00.0'],
    ['assets/images/icon_3.png', '00.0', '', '00.0'],
    ['assets/images/icon_4.png', '00.0', '%', '00.0'],
    ['assets/images/icon_5.png', '00', 'cm', '00'],
    // Thêm các hàng khác nếu cần
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.deepOrange, // Đặt màu của đường gạch ngang
                width: 2.8, // Đặt độ dày của đường gạch ngang
              ),
            ),
          ),
          child: AppBar(
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'age',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: 'LOC',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TR',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'ME',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(width: 4),
                  ],
                ),
              ],
            ),
            actions: [ // IconButton
              IconButton(
                icon: Image.asset('assets/images/plus.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/bell.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/comment-dots.png'),
                onPressed: () {},
              ),
            ],
            foregroundColor: Colors.deepOrange,
          ),
        ),
      ),
      drawer: Drawer( //thanh meunu
        backgroundColor: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Ngôn ngữ'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Hồ sơ'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Trang chủ'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Cộng đồng'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Khám phá'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Khám phá'),
              onTap: () {},
            ),
            ListTile(
              title: Text('ageLOC TRME'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Invite & Refer'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Ứng dụng Tư vấn'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Đăng xuất'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Xóa tài khoản'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container( //avatar
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/unsplash_RDcEWH5hSDE.png'),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'User Name',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Column( // Button
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/Group 1325.png'),
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: Image.asset('assets/images/Group 1326.png'),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('0/90 Ngày'),
                        SizedBox(width: 8),
                      ],
                    ),
                    IconButton( // Button share
                      icon: Image.asset(
                        'assets/images/share.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Chỉ số cơ thể'),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/filter.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/gk60uK.tif.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    Container( // ngày hiện tại
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        '23/05/2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/note.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/plus.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(8),
              height: 600,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: widget.gridData.length * 4,
                itemBuilder: (context, index) {
                  int rowIndex = index ~/ 4;
                  int columnIndex = index % 4;

                  if (columnIndex == 0) {
                    // Icon column
                    return Center(
                      child: Image.asset(
                        widget.gridData[rowIndex][columnIndex],
                        width: 24,
                      ),
                    );
                  } else if (columnIndex == 2) {
                    return Center(
                      child: Text(
                        widget.gridData[rowIndex][columnIndex],
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    );
                  } else {
                    String value = widget.gridData[rowIndex][columnIndex];
                    return Center(
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),

            Center( // Button Save
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10), // Bo tròn các góc
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Center( // Chú thích
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Chú thích: '),
                  SizedBox(width: 10),
                  Indicator(
                    color: Colors.green,
                    text: 'Thực hiện tốt',
                  ),
                  SizedBox(width: 10),
                  Indicator(
                    color: Colors.blue,
                    text: 'Không đổi',
                  ),
                  SizedBox(width: 10),
                  Indicator(
                    color: Colors.red,
                    text: 'Cần trợ giúp',
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            Text(
              '90 Ngày chuyển đổi vóc dáng',
              style: TextStyle(
                fontSize: 24, // Kích thước chữ tùy chỉnh
                fontWeight: FontWeight.bold, // Độ đậm của chữ
                color: Colors.orange
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Bấm vào đây để xem hướng dẫn cho người dùng . Hình ảnh của bạn có thể hiển thị cho người tư vấn trực tiếp. Nếu bạn không muốn , có thể vào phần cài đặt để điều chỉnh lại',
              style: TextStyle(
                  fontSize: 12, // Kích thước chữ tùy chỉnh
                  fontWeight: FontWeight.bold, // Độ đậm của chữ
                  color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Ngày 1'),
                    SizedBox(height: 10),
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt trước'),
                  ],
                ),
                Column(
                  children: [
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt bên'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/share.png', width: 30),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Ngày 7'),
                    SizedBox(height: 10),
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt trước'),
                  ],
                ),
                Column(
                  children: [
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt bên'),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Ngày 15'),
                    SizedBox(height: 10),
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt trước'),
                  ],
                ),
                Column(
                  children: [
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt bên'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/share.png', width: 30),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Ngày 30'),
                    SizedBox(height: 10),
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt trước'),
                  ],
                ),
                Column(
                  children: [
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt bên'),
                  ],
                ),
              ],
            ),

            // Row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Ngày 60'),
                    SizedBox(height: 10),
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt trước'),
                  ],
                ),
                Column(
                  children: [
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt bên'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/share.png', width: 30),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Ngày 90'),
                    SizedBox(height: 10),
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt trước'),
                  ],
                ),
                Column(
                  children: [
                    buildImageContainer(),
                    SizedBox(height: 10),
                    Text('Mặt bên'),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)), // Bo tròn cả 4 góc
              child: Container(
                color: Color(0xFFFC6C0F), // Màu nền
                height: 70, // Chiều cao của thanh điều hướng
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/images/home.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/Consultant.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/Y99dDJ.tif.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/laban.png',
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildImageContainer() { // widget của container
  return Container(
    width: 60,
    height: 100,
    color: Colors.grey[200],
    child: Center(
      child: Icon(Icons.add, color: Colors.teal, size: 40),
    ),
  );
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;

  Indicator({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}