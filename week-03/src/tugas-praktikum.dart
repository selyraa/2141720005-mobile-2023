void main(){
  String nama = "Sely Ruli Amanda", nim = "2141720005", output;
  int bil;
  for (bil  = 0; bil <= 201; bil++){
    if (bilPrima(bil)){
      output = "$bil, $nama, $nim";
      print(output);
    } else {
      print(bil);
    }
  }
}

bool bilPrima(int bil) {
  if (bil < 2) {
    return false;
  }

  for (int i = 2; i <= bil/2; i++) {
    if (bil % i == 0) {
      return false;
    }
  }

  return true;
}