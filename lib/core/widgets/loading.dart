import 'dart:async' show StreamController;

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// LoadingScreen
class Loading {
  /// instance
  factory Loading.instance() => _shared;
  Loading._sharedInstance();
  static final Loading _shared = Loading._sharedInstance();

  /// controller
  LoadingScreenController? controller;

  /// show
  void show({
    required BuildContext context,
    String? text,
  }) {
    if (controller?.update(text) ?? false) {
      return;
    } else {
      controller = showOverlay(
        context: context,
        text: text,
      );
    }
  }

  /// hide
  void hide() {
    controller?.close();
    controller = null;
  }

  /// showOverlay
  LoadingScreenController showOverlay({
    required BuildContext context,
    String? text,
  }) {
    final text0 = StreamController<String>();
    if (text != null) {
      text0.add(text);
    }

    final state = Overlay.of(context);

    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  // Lottie.asset(
                  //   // Assets.genLottieLoadingAmber,
                  //   width: 20.h,
                  //   height: 20.h,
                  // ),
                  SizedBox(
                    height: 10.h,
                  ),
                  if (text != null)
                    StreamBuilder(
                      stream: text0.stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );

    state.insert(overlay);

    return LoadingScreenController(
      close: () {
        text0.close();
        overlay.remove();
        return true;
      },
      update: (text) {
        if (text != null) {
          text0.add(text);
        }
        return true;
      },
    );
  }
}

/// CloseLoadingScreen
typedef CloseLoadingScreen = bool Function();

/// UpdateLoadingScreen
typedef UpdateLoadingScreen = bool Function(String? text);

/// Loading screen controller
@immutable
class LoadingScreenController {
  /// LoadingScreenController
  const LoadingScreenController({
    required this.close,
    required this.update,
  });

  /// close loading screen
  final CloseLoadingScreen close;

  /// update loading screen
  final UpdateLoadingScreen update;
}
