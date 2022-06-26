void main(List<String> args) {
  // greet();

  /**
   * 函数返回值（声明｜不声明）
   */
  greet(String name) {
    return "你好!" + name;
  }

  final greeting = greet("flutter");
  print(greeting);

  /**
   * 有顺序的参数 & 参数默认值
   * 
   * []包裹参数，表示包裹在内的参数必须按顺序传参
   * 可以直接给参数设置默认值，在参数名后=参数值
   */
  log(String message, [String prefix = "LOG::"]) {
    print('$prefix $message');
  }

  log("🦕");
  log("🐳");

/**
 * 有名字的参数
 * 
 * {}包裹参数，表示包裹在内的参数必须给名 
 * required 表示这个参数必传
 * 类型后跟一个? 表示这个参数可以为null
 */
  // log({required String message, String? prefix = 'LOG::'}) {
  //   print('$prefix $message');
  // }

// log(message: "🦕");process_control
  // log(message: "🐳", prefix: "LOG::");
}

void greet() {
  print('你好~');
}
