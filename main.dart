/// Phương thức main trong Dart
void main() {
// Dùng vòng lặp để in ra nhiều lời chào
  List<String> names = [
    'Dart',
    'Ngọc',
    'Bảo',
    'Nam',
    'Lan',
    ];
  
//vòng lặp for
 for (var name in names) {
  helloName(name);
  }
  
// Dùng vòng lặp forEach
names.forEach((name) => helloName(name));
  
// các biến
  var tinh = total(3,7);
  print(tinh);

//	Sử dụng lọc với từ khóa
 var keyword = 'n';
  names
      .where((name) => name.toLowerCase().contains(keyword.toLowerCase()))
     .forEach((name) => helloName(name));
//	Sử dụng	Lọc tất cả những tên có vần ‘n’
 var keyword = 'n';
  names
     .where((name) => name.contains(keyword)).forEach((name) => helloName(name));

  var myVar = {'Dart': 3, 'Ngọc': 20, 'Bảo': 21, 'Nam': 22, 'Lan': '22'};
  
  var coord = {'latitude' : 21.5, 'longitude': 105.7};
  
  print('Tuổi của Nam ${myVar['Nam']}');
}

/// Hàm tính tổng 2 số nguyên
int total(int x,int y) {
  return x+y;
}

/// Phương thức in ra màn hình lời chào
void hello() {
  print('Xin chào, Dart');
  print('Xin chào, Ngọc');
  print('Xin chào, Bảo');
  print('Xin chào, Nam');
  print('Xin chào, Lan');
}

/// Phương thức có đối số
void helloName(String name) {
  print('Xin chào, $name');
}


// thực hành chương 3( tiếp)

// nạp thư viện toán trong dart bằng lệnh import
import 'dart:math';

void main() {
  // class và objects trong Dart
  var p = Point(2, 2);
  p.y = 3;
  // p.describe();
  // tính khoảng cách giữa 2 điểm p, p1
  var p1 = Point(6, 5);
  double distance =
      sqrt((p1.x - p.x) * (p1.x - p.x) + (p1.x - p.y) * (p1.x - p.y));
  // cách khác: thu gọn biểu thức toán bình phương bằng cách dùng pow
  distance = sqrt(pow((p1.x - p.x), 2) + pow((p1.y - p.y), 2));
  print(distance);
  distance = p.distanceTo(p1);
  print(distance);
  distance = p1.distanceTo(Point(20, 20));
  print(distance);
  distance = p1.distanceTo(Point(5, 5));
  print(distance);
  // kiểu dynamic toJson
  p.toJson();
  print(p.toJson());
  Map<String, int> json = {'a': 10, 'b': 20};
  print(json);
  var newP = Point.fromJson({'x': 2, 'y': 10});
  newP.describe();
}

class Point {
  // sử dụng fromJson
  static Point fromJson(Map<String, int> json) {
    return Point(json['x'], json['y']);
  }

  // phương thức toJson
  toJson() {
    return {'x': this.x, 'y': this.y};
  }

  var x;
  var y;
  Point(this.x, this.y) {
    //hàm tạo Point
  }
  void describe() {
    // phương thức describe
    print('x=${this.x}, y=${this.y}');
  }

// tạo 1 phương thức tính khoảng cách từ chính nó đến 1 điểm
  double distanceTo(Point p) {
    return sqrt(
        (this.x - p.x) * (this.x - p.x) + (this.y - p.y) * (this.y - p.y));
  }

// khoản cách từ 1 điểm đến 1 điểm bất kì

// xử lý ngoại lệ
  var c='10.0'; // chuỗi kí tự số thực
  try{
  int num = int.parse(c);
  print(num);
  }
  catch(e){
    print('Lỗi ${e.toString()}');
  }

  print('--- ++var ---');
  var a = 22;
  print(++a);
  print(a);
  print('--- var++ ---');
  var b = 22;
  print(b++);
  print(b);

  print(sqrt(9));// hàm tính căn bậc hai

  // khai báo kiểu final và const
  const c ='Lương Thị Ngọc';
  print(c);
  final f = 'Lương Thị Ngọc ';
  f = 'Lương Thị Ngọc ';// báo lỗi là không thể gán tiếp
  print(f);

  var a = "22 tuổi"; //biến var a được gán kiểu String
  a = " học khoa CNTT"; // a vẫn có thể được gán tiếp trong 1 chuỗi String khác
  // const c='Lương Thị Ngọc'; // chỗ này báo lỗi vì const chỉ chấp nhận một giá trị không đổi(giá trị phải được khởi tạo)
  final f = 'Lương Thị Ngọc $a'; // trong khi đối với final lại được
  print(f);
  a = 'sinh viên trường ĐH Mỏ - Địa chất'; //lúc này a có gán thêm 1 chuỗi nữa cũng không ảnh hưởng gì đến biến f nữa
  print(f); // vẫn in ra màn hình dòng Lương Thị Ngọc  học khoa CNTT

var myVar = 'Ngoc'; // kiểu của biến myVar là String
  var num = 20; // kiểu của biến num là int
  // khai báo kiểu dynamicS
  dynamic myVar = 'Ngoc'; // kiểu của biến myVar là String
  myVar = 20; // kiểu của biến num là int
}
