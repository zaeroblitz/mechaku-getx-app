part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  const CustomButton({
    Key? key,
    this.width = double.infinity,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: blackColor2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: whiteTextStyle1.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
