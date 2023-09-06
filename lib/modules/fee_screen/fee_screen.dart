import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_template/constants/constants.dart';
import 'package:flutter_getx_mvvm_template/modules/fee_screen/fee_screen_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';

class FeeScreen extends GetView<FeeScreenController> {
  const FeeScreen({super.key});

  // final _feeController = Get.put(FeeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: Text(
          'Fee',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: AppColors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
        ),
        child: ListView.builder(
          itemCount: dummyFeeDetailsList.length,
          itemBuilder: (BuildContext context, int index) {
            Map<String, dynamic> singleFee = dummyFeeDetailsList[index];
            return Card(
              key: ValueKey(singleFee['id']),
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Receipt Number'),
                            Text(
                              singleFee['receipt_id'].toString(),
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Fee Month'),
                            Text(
                              singleFee['fee_month'],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Payment Date'),
                            Text(
                              singleFee['payment_date'] != null
                                  ? DateFormat('yMMMMd')
                                      .format(singleFee['payment_date'])
                                  : '-',
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Status'),
                            Text(
                              singleFee['status'].toUpperCase(),
                              style: Theme.of(context).textTheme.labelLarge,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Total Amount'),
                            Text(
                              '${singleFee['fee_amount']} \$',
                              style: Theme.of(context).textTheme.labelLarge,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: singleFee['status'] == 'paid'
                        ? LabelIconButtonWidget(
                            label: 'DOWNLOAD ',
                            icon: CupertinoIcons.arrow_down_doc,
                            onTap: () {},
                          )
                        : LabelIconButtonWidget(
                            label: 'PAY NOW ',
                            icon: Icons.arrow_circle_right_outlined,
                            onTap: () {},
                          ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class LabelIconButtonWidget extends StatelessWidget {
  const LabelIconButtonWidget({
    super.key,
    this.label = 'Label',
    this.icon = Icons.add,
    this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(13),
            bottomRight: Radius.circular(13),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.white,
                  ),
            ),
            Icon(
              icon,
              color: AppColors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
