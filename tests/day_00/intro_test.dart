@Timeout(Duration(seconds: 5))

import 'package:test/test.dart';
import 'package:test_process/test_process.dart';

void main() {
  test('intro', () async {
    var process = await TestProcess.start("dart", ["/jail/student/intro.dart"]);

    await expectLater(process.stdout, emits("Hello, World!"));
  });
}
