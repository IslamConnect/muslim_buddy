import 'package:go_router/go_router.dart';
import 'package:muslim_buddy/features/asma_ul_husna/name_viewer.dart';
import 'package:muslim_buddy/features/quranic_arabic/quranic_arabic_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const QuranicArabicPage(),
    ),
    // GoRoute(
    //   path: '/page2',
    //   builder: (context, state) => const Page2Screen(),
    // ),
  ],
);
