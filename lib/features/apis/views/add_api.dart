import 'package:devhub/core/constants/constants.dart';
import 'package:devhub/features/apis/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/dropdown.dart';
import '../../../core/common/form_field.dart';
import '../../../core/common/loader.dart';
import '../../../core/common/rounded_button.dart';
import '../../../theme/pallate.dart';
import '../../auth/controller/auth_controller.dart';

class AddApi extends ConsumerStatefulWidget {
  const AddApi({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddApiState();
}

class _AddApiState extends ConsumerState<AddApi> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController speed = TextEditingController();
  final TextEditingController accuracy = TextEditingController();
  final TextEditingController owner = TextEditingController();
  final TextEditingController auth = TextEditingController();
  final TextEditingController link = TextEditingController();
  final TextEditingController duration = TextEditingController();
  final TextEditingController https = TextEditingController();
  final TextEditingController delay = TextEditingController();
  final TextEditingController output = TextEditingController();

  String category = '';
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  late List<String> categoryList;

  @override
  void initState() {
    super.initState();
    categoryList = Constants.categories.keys.toList();
    category = categoryList[0];
    print(categoryList);
  }

  @override
  void dispose() {
    // Dispose of all the TextEditingController instances
    titleController.dispose();
    descriptionController.dispose();
    amountController.dispose();
    speed.dispose();
    accuracy.dispose();
    owner.dispose();
    auth.dispose();
    link.dispose();
    duration.dispose();
    https.dispose();
    delay.dispose();
    output.dispose();
    super.dispose(); // Call the superclass's dispose method if necessary
  }

  Future<void> createCommette(String uid, String imageUrl) async {
    ref.read(apiControllerProvider.notifier).addApi(
          title: titleController.text,
          description: descriptionController.text,
          amount: amountController.text,
          speed: speed.text,
          accuracy: accuracy.text,
          owner: owner.text,
          auth: auth.text,
          link: link.text,
          duration: duration.text,
          https: https.text,
          delay: delay.text,
          output: output.text,
          category: category,
          context: context,
        );
    _formKey.currentState!.reset();
    // resetForm();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider)!;
    final isLoading = ref.watch(apiControllerProvider);
    // Initialize the controllers with initial values
    return isLoading
        ? const Loader()
        : Scaffold(
            appBar: AppBar(
              title: const Text(
                'Add new Api',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 14,
                      ),
                      FormFieldHintToolTip(
                        tipText: 'Api Name *',
                        hintText: 'Enter Name of Api',
                        controller: titleController,
                        maxLines: 1,
                        maxLength: 12,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter name of api';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      FormFieldHintToolTip(
                        tipText: 'Description',
                        hintText: 'Enter Description',
                        controller: descriptionController,
                        maxLines: 3,
                        maxLength: 100,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter description';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      FormFieldHintToolTip(
                        tipText: 'Api Auth *',
                        hintText: 'Enter Api Auth',
                        controller: auth,
                        maxLines: 1,
                        maxLength: 30,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter auth';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 14,
                      ),
                      FormFieldHintToolTip(
                        tipText: 'Https? *',
                        hintText: 'Is is Http',
                        controller: https,
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                        maxLength: 5,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter http';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      /////////////////////////////////////////////        Planting  Start   //////////////////////////////////////////////////
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: FormFieldHintToolTip(
                              tipText: 'Accuracy *',
                              hintText: 'Accuracy of api',
                              controller: accuracy,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                decimal: true,
                                signed: false,
                              ),
                              maxLines: 1,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter api\'s accuracy';
                                }

                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: FormFieldHintToolTip(
                              tipText: 'api\'s duration *',
                              hintText: 'Api delay duration',
                              controller: delay,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                decimal: true,
                                signed: false,
                              ),
                              maxLines: 1,
                              maxLength: 10,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter member\' planting';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 14,
                      ),
                      //////////////////////////////////////////  Amount /////////////////////////////////////////////

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: FormFieldHintToolTip(
                              tipText: 'Amount *',
                              hintText: 'Enter Amount of api',
                              controller: amountController,
                              maxLines: 1,
                              maxLength: 12,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                signed: false,
                                decimal: false,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter the amount';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: FormFieldHintToolTip(
                              tipText: 'Output Size *',
                              hintText: 'Output size of api',
                              controller: output,
                              maxLines: 1,
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'invalid number';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      ///////////////////////////////////////    No of Members ///////////////////////////////////
                      Row(
                        children: [
                          Expanded(
                            child: ReusableDropdown<String>(
                              value: category,
                              items: categoryList,
                              onChanged: (newValue) {
                                setState(() {
                                  category = newValue!;
                                });
                              },
                              itemBuilder: (item) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 11,
                                  ),
                                  child: Text(
                                    item.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(221, 182, 182, 182),
                                    ),
                                  ),
                                );
                              },
                              hint: 'Select category of api',
                              labelText: 'api category *',
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ), // Add some spacing between the dropdowns
                        ],
                      ),

                      /////////////////////////////////////////       Duration of Commette /////////////////////////////////////////////////

                      const SizedBox(
                        height: 14,
                      ),
                      RoundedButton(
                        label: 'Submit and Create',
                        linearGradient: AppColors.blueGradient,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            createCommette(user.uid, user.profilePic);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
