// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'row_account_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RowAccountBalance {
  String get svgPath => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  int get totalBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RowAccountBalanceCopyWith<RowAccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RowAccountBalanceCopyWith<$Res> {
  factory $RowAccountBalanceCopyWith(
          RowAccountBalance value, $Res Function(RowAccountBalance) then) =
      _$RowAccountBalanceCopyWithImpl<$Res, RowAccountBalance>;
  @useResult
  $Res call({String svgPath, String accountName, int totalBalance});
}

/// @nodoc
class _$RowAccountBalanceCopyWithImpl<$Res, $Val extends RowAccountBalance>
    implements $RowAccountBalanceCopyWith<$Res> {
  _$RowAccountBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svgPath = null,
    Object? accountName = null,
    Object? totalBalance = null,
  }) {
    return _then(_value.copyWith(
      svgPath: null == svgPath
          ? _value.svgPath
          : svgPath // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RowAccountBalanceImplCopyWith<$Res>
    implements $RowAccountBalanceCopyWith<$Res> {
  factory _$$RowAccountBalanceImplCopyWith(_$RowAccountBalanceImpl value,
          $Res Function(_$RowAccountBalanceImpl) then) =
      __$$RowAccountBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String svgPath, String accountName, int totalBalance});
}

/// @nodoc
class __$$RowAccountBalanceImplCopyWithImpl<$Res>
    extends _$RowAccountBalanceCopyWithImpl<$Res, _$RowAccountBalanceImpl>
    implements _$$RowAccountBalanceImplCopyWith<$Res> {
  __$$RowAccountBalanceImplCopyWithImpl(_$RowAccountBalanceImpl _value,
      $Res Function(_$RowAccountBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? svgPath = null,
    Object? accountName = null,
    Object? totalBalance = null,
  }) {
    return _then(_$RowAccountBalanceImpl(
      svgPath: null == svgPath
          ? _value.svgPath
          : svgPath // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RowAccountBalanceImpl implements _RowAccountBalance {
  const _$RowAccountBalanceImpl(
      {required this.svgPath,
      required this.accountName,
      required this.totalBalance});

  @override
  final String svgPath;
  @override
  final String accountName;
  @override
  final int totalBalance;

  @override
  String toString() {
    return 'RowAccountBalance(svgPath: $svgPath, accountName: $accountName, totalBalance: $totalBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RowAccountBalanceImpl &&
            (identical(other.svgPath, svgPath) || other.svgPath == svgPath) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, svgPath, accountName, totalBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RowAccountBalanceImplCopyWith<_$RowAccountBalanceImpl> get copyWith =>
      __$$RowAccountBalanceImplCopyWithImpl<_$RowAccountBalanceImpl>(
          this, _$identity);
}

abstract class _RowAccountBalance implements RowAccountBalance {
  const factory _RowAccountBalance(
      {required final String svgPath,
      required final String accountName,
      required final int totalBalance}) = _$RowAccountBalanceImpl;

  @override
  String get svgPath;
  @override
  String get accountName;
  @override
  int get totalBalance;
  @override
  @JsonKey(ignore: true)
  _$$RowAccountBalanceImplCopyWith<_$RowAccountBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
