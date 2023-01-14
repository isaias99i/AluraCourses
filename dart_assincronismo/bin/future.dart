void main() {
  Future myFuture = Future(() {
    print('Going back to the future');
    return 21;
  }).then((value) => print('The value is $value'));

  Future<int> myFutureFunc() async {
    print('a function in the future');
    await Future.delayed(Duration(seconds: 3));
    //throw Exception();
    return 12;
  }

  // myFutureFunc()
  //     .then((value) => print('My function value is ${value}'))
  //     .onError((error, stackTrace) => print('An error occurred'))
  //     .whenComplete(() => print('The future is now! '));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print('I have a function functional');
      await Future.delayed(Duration(seconds: 3));
      return 42;
    } catch (e){
      print('An error occurred: $e');
      return 42;
    } finally {
      print('The print is finally');
    }

  }

  myFutureErrorFunc(3, 2).then((value) => print('Value is $value'));
  print('Done with main');
}
