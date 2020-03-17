import 'dart:io';

double saldo=0.00;

void main(){
  print("Selamat Datang diATM BangBingBung");
  login();
  menu();
}

void login(){
  print("Silahkan Masukan PIN Anda");
  stdout.write("Pin :");
  String pin = stdin.readLineSync();
  stdout.writeln();

  if (pin == "123"){
    print("Selamat Datang Saya");
  }
  else if (pin == "456") {
    print("Selamat Data Aku");
  }
  else{
    stdout.writeln();
    print("Pin Salah, Silahkan Masukan Pin Anda");
    login();
  }
}

void menu(){
  stdout.writeln();
  print("MENU : ");
  print("1. Tarik Tunai");
  print("2. Setor Tunai");
  print("3. Cek Saldo");
  print("4. Exit");
  stdout.write("Silahkan Pilih Menu Yang Anda Inginkan : ");
  String menu = stdin.readLineSync();
  if (menu == "1"){
    tarik();
  }
  else if(menu == "2"){
    setor();
  }
  else if (menu == "3"){
    cek();
  }
  else{
    print("Terimakasih");
  }
  stdout.writeln();
}

void tarik(){
  stdout.writeln();
  stdout.writeln("TARIK TUNAI");
  stdout.write("Silahkan Masukan Nominal : Rp ");
  double tarik = double.parse(stdin.readLineSync());
  saldo = saldo-tarik;
  menu();
}

void setor(){
  stdout.writeln();
  stdout.writeln("SETOR TUNAI");
  stdout.write("Silahkan Masukan Nominal : Rp ");
  double setor = double.parse(stdin.readLineSync());
  saldo = saldo+setor;
  print("Berhasil");
  menu();  
}

void cek(){
    stdout.writeln();
    stdout.writeln("CEK SALDO");
    stdout.write("Saldo anda saat ini Rp $saldo");
    saldo=saldo;
    menu();
    stdout.writeln();
}




  
  



