
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

void initfirebase() async {
  print("initfirebase");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
