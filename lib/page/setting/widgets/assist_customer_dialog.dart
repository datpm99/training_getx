import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_getx/const/import_const.dart';

class AssistCustomerDialog extends StatelessWidget {
  const AssistCustomerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: Styles.borderDialog(),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: Styles.black2,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Exit icon
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.close,
                    size: 24,
                    color: Styles.grey10,
                  ),
                  onTap: Get.back,
                ),
              ],
            ),
            //Title.
            Text('assist_customer'.tr, style: Styles.normalTextW700())
                .pOnly(bottom: 20.h),
            //Button call for customer service
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Styles.blue7,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_assist_cus_call.png',
                      width: 28,
                      height: 28,
                    ),
                    const Spacer(),
                    AutoSizeText(
                      'call_customer_service'.tr.toUpperCase(),
                      style: Styles.normalTextW700(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ).pOnly(top: 20),
            const SizedBox(height: 20),
            //Button mail for customer service
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Styles.blue7,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_assist_cus_mail.png',
                      width: 28,
                      height: 28,
                    ),
                    const Spacer(),
                    AutoSizeText(
                      'mail_customer_service'.tr.toUpperCase(),
                      style: Styles.normalTextW700(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ).pOnly(bottom: 30.h),
          ],
        ).p(5),
      ),
    );
  }
}