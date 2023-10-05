import 'package:devhub/features/apis/repository/apis_repository.dart';
import 'package:devhub/model/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/utils.dart';

final getAllApisProvider = StreamProvider((ref) {
  final apiController = ref.watch(apiControllerProvider.notifier);
  return apiController.getAllApis();
});
final getTopPickApisProvider = StreamProvider((ref) {
  final apiController = ref.watch(apiControllerProvider.notifier);
  return apiController.getTopPicks();
});

final apiControllerProvider = StateNotifierProvider<ApiController, bool>((ref) {
  return ApiController(
      apiRepository: ref.watch(apiRepositoryProvider), ref: ref);
});

class ApiController extends StateNotifier<bool> {
  final ApiRepository _apiRepository;
  final Ref _ref;
  ApiController({
    required ApiRepository apiRepository,
    required Ref ref,
  })  : _apiRepository = apiRepository,
        _ref = ref,
        super(false);

  void addApi(
      {required String title,
      required String description,
      required String amount,
      required String speed,
      required String accuracy,
      required String owner,
      required String auth,
      required String link,
      required String duration,
      required String https,
      required String delay,
      required String output,
      required String category,
      required BuildContext context}) async {
    final apiModel = ApiModel(
      api: title,
      description: description,
      auth: auth,
      https: true,
      cors: 'Unknown',
      link: link,
      category: category,
      reviews: {},
      accuracy: accuracy,
      outputSize: output,
      duration: duration,
      stars: 0,
    );
    state = true;

    final res = await _apiRepository.addApi(
      apiModel: apiModel,
    );
    res.fold((l) {
      state = false;
      return;
    }, (r) {
      state = false;

      showSnackBar(context, 'Api Added');
      Navigator.of(context).pop();
    });
  }

  Stream<List<ApiModel>> getAllApis() {
    return _apiRepository.getAllApis();
  }
  Stream<List<ApiModel>> getTopPicks() {
    return _apiRepository.getTopPicks();
  }
}
