part of 'shared.dart';

class ButtonMart {
  static Widget theme({
    required BuildContext context,
    required String text,
    required Color textColor,
    required Function() onPressed,
    required Color color,
    String? size,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: size != null && size == 'small' ? 44 : 56,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: size != null && size == 'small'
                ? TypographyMart.smallMedium.copyWith(color: textColor)
                : TypographyMart.caption.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
