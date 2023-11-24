import 'package:freezed_annotation/freezed_annotation.dart';

part 'row_account_balance.freezed.dart';

@freezed
class RowAccountBalance with _$RowAccountBalance {
  const factory RowAccountBalance({
    required String svgPath,
    required String accountName,
    required int totalBalance,
  }) = _RowAccountBalance;
}

final List<RowAccountBalance> accountList = [
  const RowAccountBalance(
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
];
