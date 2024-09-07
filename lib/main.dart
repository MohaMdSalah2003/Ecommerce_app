import 'dart:developer';

import 'package:ecommerce_app/core/utils/bloc_observ.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/utils/themes.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/auth_repo_imp.dart';
import 'package:ecommerce_app/features/Auth/Data/repo/user_repo_imp.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:ecommerce_app/features/Auth/presentation/manager/userCubit/cubit/user_cubit.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repoimp.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/theme_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/getcategoriescubit/cubit/all_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/home_view.dart';
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
  runApp(Ecommerce());
}

class Ecommerce extends StatefulWidget {
  Ecommerce({super.key});
  ThemeMode themeMode = ThemeMode.light;
  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
<<<<<<< HEAD
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
=======
        providers: [
          BlocProvider(
            create: (context) => AuthCubitCubit(AuthRepoImp()),
          ),
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
        ],
        child: BlocConsumer<ThemeCubit, ThemeState>(listener: (context, state) {
          if (state is ThemeDark) {
            setState(() {
              widget.themeMode = ThemeMode.dark;
              print(BlocProvider.of<ThemeCubit>(context).isdark);
            });
          }
          if (state is ThemeLight) {
            setState(() {
              widget.themeMode = ThemeMode.light;
              log("name");
            });
          }
        }, builder: (context, state) {
          return GetMaterialApp(
            theme: themes.lighttheme,
            debugShowCheckedModeBanner: false,
            darkTheme: themes.darktheme,
            themeMode: ThemeMode.light,
            home: const SplashView(),
          );
        }));
>>>>>>> ec440b666026c616eada600ff4c716eb33445304
  }
}
