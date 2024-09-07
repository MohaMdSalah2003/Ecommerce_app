import 'package:ecommerce_app/core/utils/bloc_observ.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/utils/themes.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/auth_repo_imp.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/user_repo_imp.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/userCubit/cubit/user_cubit.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repoimp.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/getcategoriescubit/cubit/all_categories_cubit.dart';
import 'package:ecommerce_app/features/Splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleObserv();
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubitCubit(AuthRepoImp()),
        ),
        BlocProvider(
          create: (context) => UserCubit(UserRepoImp()),
        ),
      ],
      child: GetMaterialApp(
        theme: themes.lighttheme,
        debugShowCheckedModeBanner: false,
        darkTheme: themes.darktheme,
        themeMode: ThemeMode.light,
        home: const SplashView(),
      ),
    );
  }
}
