import 'package:pin_code/utils/template.dart';
import 'package:pin_code/utils/theme_text_style.dart';

class CustomKeybord extends StatelessWidget {
  int pinCodeLength;
  CustomKeybord({
    Key? key,
    required this.pinCodeLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _numberContainer(context, 1),
            _numberContainer(context, 2),
            _numberContainer(context, 3),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _numberContainer(context, 4),
            _numberContainer(context, 5),
            _numberContainer(context, 6),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _numberContainer(context, 7),
            _numberContainer(context, 8),
            _numberContainer(context, 9),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _iconButtonContainer(context,
                icon: Image.asset('assets/icons/fingerprint.png')),
            _numberContainer(context, 0),
            _iconButtonContainer(context,
                icon: Image.asset(
                  'assets/icons/backspace-outlined.png',
                ),
                active: true),
          ],
        ),
      ],
    );
  }

  Widget _numberContainer(BuildContext context, int number) {
    return InkWell(
      onTap: () {
        if (pinCodeLength < 4) {
          BlocProvider.of<PinCodeBloc>(context)
              .add(PinCodeAdd(pinCodeLength: pinCodeLength));
        }
      },
      child: Container(
          alignment: Alignment.center,
          width: 120.w,
          height: 60.h,
          child: Text(number.toString(), style: ThemeTextLight.size34)),
    );
  }

  Widget _iconButtonContainer(BuildContext context,
      {required Widget icon, bool? active = false}) {
    return Container(
        alignment: Alignment.center,
        width: 120.w,
        height: 60.h,
        child: IconButton(
          onPressed: () {
            if (active!) {
              if (pinCodeLength != 0) {
                BlocProvider.of<PinCodeBloc>(context)
                    .add(PinCodeRemove(pinCodeLength: pinCodeLength));
              }
            }
          },
          icon: icon,
          iconSize: 32,
          color: ThemeColors.black87,
        ));
  }
}
