void testCompareVarWithFinalAndConst() {
  // var book = {'title': '小白的开发之路'};
  // final book = {'title': '小白的开发之路'};
  const book = {
    'title': '小白的开发之路'
  }; //Unsupported operation: Cannot modify unmodifiable map

  book['title'] = '小白兔的开发之路';
  print(book);


  ///
  /// dart类型 var定义的都可以改，final除了List和Map的字段类型可以改，const是任何类型都不可以改
  ///
}

void testConst() {
  const title = "小白的开发之路";
  print(title);
  // title = "小白兔的开发之路";
  // Error: Can't assign to the const variable 'title'.
}

void testFinal() {
  final title = "小白的开发之路";
  print(title);
  // title = "小白兔的开发之路";
  // Error: Can't assign to the final variable 'title'.
  // 声明变量最好使用final修饰，因为在程序内能不变的东西最好不要让他发生改变

  final list = [1, 's', true];
  list[1] = 0;
  print(list);
}

void testVar() {
  var t;
  print(t);

  var title = "小白的开发之路";
  print(title);

  title = "小白兔的开发之路";
  print(title);
}
