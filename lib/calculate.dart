String cal(var pricea, var sizea, var priceb, var sizeb) {
  var isCorrect = false;
  var text = "";
  var text1 = "";
  var weight = 0.0;
  var percent = 0.0;
  // var l = ll;
  // var g = gg;
  var priceA = pricea;
  var priceB = priceb;
  var sizeA = sizea;
  var sizeB = sizeb;
  var price1 = double.tryParse(pricea!);
  var price2 = double.tryParse(priceb!);
  var size1 = double.tryParse(sizea!);
  var size2 = double.tryParse(sizeb!);
  if (price1 == null || price2 == null || size1 == null || size2 == null) {
    text = 'กรอกข้อมูลไม่ครบหรือไม่ถูกต้อง ให้กรอกเฉพาะตัวเลขเท่านั้น';
    return text;
  } else {
    if (price1 / size1 < price2 / size2) {
      text1 = 'สินค้า A ถูกกว่า ';
      percent =
          (((price2 / size2) - (price1 / size1)) / (price2 / size2) * 100);
    }
    if (price1 / size1 == price2 / size2) {
      text1 = 'สิ้นค้าทั้ง 2 ราคาเท่ากัน';
    }
    if (price1 / size1 > price2 / size2) {
      text1 = 'สินค้า B ถูกกว่า ';
      percent =
          (((price1.round() / size1) - (price2 / size2)) / (price1 / size1) * 100);

    }
  }
  // text = '$weight ชิ้น A $text1';
  if (price1 / size1 == price2 / size2) {
    text = '$text1';
  } else {
    text = '$text1 $percent%';
  }

  return text;
}
