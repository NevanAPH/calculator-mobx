import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool loading;
  final Widget child;

  Color? background;
  double? radius;

  PrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.loading = false,
    this.background,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: background ?? Colors.blue,
        foregroundColor: Colors.white,
        disabledBackgroundColor: Colors.blue.withOpacity(0.6),
        disabledForegroundColor: Colors.white.withOpacity(0.6),
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 100),
        ),
        // Remove minimumSize to avoid infinite width issues
      ),
      child: loading
          ? const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 3,
        ),
      )
          : child,
    );
  }
}
