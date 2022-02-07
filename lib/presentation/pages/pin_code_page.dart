import 'package:pin_code/utils/template.dart';
import 'package:pin_code/utils/theme_text_style.dart';

class PinCodePage extends StatelessWidget {
  PinCodePage({Key? key}) : super(key: key);
  int pinCodeLength = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.bg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: _appBar(),
      ),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      shadowColor: ThemeColors.transparent,
      backgroundColor: ThemeColors.bg,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/help_outline.png'),
          color: ThemeColors.black87,
        ),
      ],
    );
  }

  Widget _body() {
    return BlocBuilder<PinCodeBloc, PinCodeState>(
      builder: (context, state) {
        if (state is PinCodeChanged) {
          pinCodeLength = state.pinCodeLength;
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //todo style
            Column(
              children: [
                SizedBox(height: 48.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const Text(
                    'Please enter PIN code',
                    style: ThemeTextRegular.size24,
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                circlesRow(pinCodeLength),
              ],
            ),
            Column(
              children: [
                // BlocBuilder<PinCodeBloc, PinCodeState>(
                //   builder: (context, state) {
                CustomKeybord(
                  pinCodeLength: pinCodeLength,
                ),
                //   },
                // ),
                SizedBox(height: 14.h),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 4.h),
                  child: Container(
                    height: 2,
                    width: 64,
                    color: ThemeColors.black87,
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget circlesRow(int listLength) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 88.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 4; i++)
              if (i < listLength && listLength != 0)
                _circleWidget(true)
              else
                _circleWidget(false)
          ],
        ),
      );

  Widget _circleWidget(bool tapped) => Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: tapped ? ThemeColors.green : ThemeColors.transparent,
          border: Border.all(color: ThemeColors.black12),
          shape: BoxShape.circle,
        ),
      );
}
