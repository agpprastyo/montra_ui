import 'package:freezed_annotation/freezed_annotation.dart';

part 'row_account_balance.freezed.dart';

/// A class representing the account balance for a row.
///
/// This class is immutable and is typically created using the Freezed package.
@freezed
class RowAccountBalance with _$RowAccountBalance {
  /// Creates a [RowAccountBalance] instance.
  ///
  /// The [id] is a unique identifier for the row.
  /// The [svgPath] is the path to the SVG file associated with the row.
  /// The [accountName] is the name of the account.
  /// The [totalBalance] is the total balance for the account.
  const factory RowAccountBalance({
    required int id,
    required String svgPath,
    required String accountName,
    required int totalBalance,
  }) = _RowAccountBalance;
}

final List<RowAccountBalance> accountList = [
  const RowAccountBalance(
    id: 1,
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    id: 2,
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 3,
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 4,
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    id: 5,
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 6,
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 7,
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    id: 8,
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 9,
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 10,
    svgPath: 'assets/Magicons/Glyph/Finance/wallet-3.svg',
    accountName: 'Wallet',
    totalBalance: 400,
  ),
  const RowAccountBalance(
    id: 11,
    svgPath: 'assets/payment_logo/bank/jago.svg',
    accountName: 'Bang Jago',
    totalBalance: 20,
  ),
  const RowAccountBalance(
    id: 12,
    svgPath: 'assets/payment_logo/bank/mega.svg',
    accountName: 'Bang Mega',
    totalBalance: 20,
  ),
];
