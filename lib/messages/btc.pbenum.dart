// This is a generated file - do not edit.
//
// Generated from btc.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BTCCoin extends $pb.ProtobufEnum {
  static const BTCCoin BTC = BTCCoin._(0, _omitEnumNames ? '' : 'BTC');
  static const BTCCoin TBTC = BTCCoin._(1, _omitEnumNames ? '' : 'TBTC');
  static const BTCCoin LTC = BTCCoin._(2, _omitEnumNames ? '' : 'LTC');
  static const BTCCoin TLTC = BTCCoin._(3, _omitEnumNames ? '' : 'TLTC');

  /// Regtest
  static const BTCCoin RBTC = BTCCoin._(4, _omitEnumNames ? '' : 'RBTC');

  static const $core.List<BTCCoin> values = <BTCCoin>[
    BTC,
    TBTC,
    LTC,
    TLTC,
    RBTC,
  ];

  static final $core.List<BTCCoin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static BTCCoin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCCoin._(super.value, super.name);
}

class BTCOutputType extends $pb.ProtobufEnum {
  static const BTCOutputType UNKNOWN =
      BTCOutputType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const BTCOutputType P2PKH =
      BTCOutputType._(1, _omitEnumNames ? '' : 'P2PKH');
  static const BTCOutputType P2SH =
      BTCOutputType._(2, _omitEnumNames ? '' : 'P2SH');
  static const BTCOutputType P2WPKH =
      BTCOutputType._(3, _omitEnumNames ? '' : 'P2WPKH');
  static const BTCOutputType P2WSH =
      BTCOutputType._(4, _omitEnumNames ? '' : 'P2WSH');
  static const BTCOutputType P2TR =
      BTCOutputType._(5, _omitEnumNames ? '' : 'P2TR');

  static const $core.List<BTCOutputType> values = <BTCOutputType>[
    UNKNOWN,
    P2PKH,
    P2SH,
    P2WPKH,
    P2WSH,
    P2TR,
  ];

  static final $core.List<BTCOutputType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static BTCOutputType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCOutputType._(super.value, super.name);
}

/// SimpleType is a "simple" script: one public key, no additional inputs.
class BTCScriptConfig_SimpleType extends $pb.ProtobufEnum {
  static const BTCScriptConfig_SimpleType P2WPKH_P2SH =
      BTCScriptConfig_SimpleType._(0, _omitEnumNames ? '' : 'P2WPKH_P2SH');
  static const BTCScriptConfig_SimpleType P2WPKH =
      BTCScriptConfig_SimpleType._(1, _omitEnumNames ? '' : 'P2WPKH');
  static const BTCScriptConfig_SimpleType P2TR =
      BTCScriptConfig_SimpleType._(2, _omitEnumNames ? '' : 'P2TR');

  static const $core.List<BTCScriptConfig_SimpleType> values =
      <BTCScriptConfig_SimpleType>[
    P2WPKH_P2SH,
    P2WPKH,
    P2TR,
  ];

  static final $core.List<BTCScriptConfig_SimpleType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static BTCScriptConfig_SimpleType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCScriptConfig_SimpleType._(super.value, super.name);
}

class BTCScriptConfig_Multisig_ScriptType extends $pb.ProtobufEnum {
  static const BTCScriptConfig_Multisig_ScriptType P2WSH =
      BTCScriptConfig_Multisig_ScriptType._(0, _omitEnumNames ? '' : 'P2WSH');
  static const BTCScriptConfig_Multisig_ScriptType P2WSH_P2SH =
      BTCScriptConfig_Multisig_ScriptType._(
          1, _omitEnumNames ? '' : 'P2WSH_P2SH');

  static const $core.List<BTCScriptConfig_Multisig_ScriptType> values =
      <BTCScriptConfig_Multisig_ScriptType>[
    P2WSH,
    P2WSH_P2SH,
  ];

  static final $core.List<BTCScriptConfig_Multisig_ScriptType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static BTCScriptConfig_Multisig_ScriptType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCScriptConfig_Multisig_ScriptType._(super.value, super.name);
}

class BTCPubRequest_XPubType extends $pb.ProtobufEnum {
  static const BTCPubRequest_XPubType TPUB =
      BTCPubRequest_XPubType._(0, _omitEnumNames ? '' : 'TPUB');
  static const BTCPubRequest_XPubType XPUB =
      BTCPubRequest_XPubType._(1, _omitEnumNames ? '' : 'XPUB');
  static const BTCPubRequest_XPubType YPUB =
      BTCPubRequest_XPubType._(2, _omitEnumNames ? '' : 'YPUB');
  static const BTCPubRequest_XPubType ZPUB =
      BTCPubRequest_XPubType._(3, _omitEnumNames ? '' : 'ZPUB');
  static const BTCPubRequest_XPubType VPUB =
      BTCPubRequest_XPubType._(4, _omitEnumNames ? '' : 'VPUB');
  static const BTCPubRequest_XPubType UPUB =
      BTCPubRequest_XPubType._(5, _omitEnumNames ? '' : 'UPUB');
  static const BTCPubRequest_XPubType CAPITAL_VPUB =
      BTCPubRequest_XPubType._(6, _omitEnumNames ? '' : 'CAPITAL_VPUB');
  static const BTCPubRequest_XPubType CAPITAL_ZPUB =
      BTCPubRequest_XPubType._(7, _omitEnumNames ? '' : 'CAPITAL_ZPUB');
  static const BTCPubRequest_XPubType CAPITAL_UPUB =
      BTCPubRequest_XPubType._(8, _omitEnumNames ? '' : 'CAPITAL_UPUB');
  static const BTCPubRequest_XPubType CAPITAL_YPUB =
      BTCPubRequest_XPubType._(9, _omitEnumNames ? '' : 'CAPITAL_YPUB');

  static const $core.List<BTCPubRequest_XPubType> values =
      <BTCPubRequest_XPubType>[
    TPUB,
    XPUB,
    YPUB,
    ZPUB,
    VPUB,
    UPUB,
    CAPITAL_VPUB,
    CAPITAL_ZPUB,
    CAPITAL_UPUB,
    CAPITAL_YPUB,
  ];

  static final $core.List<BTCPubRequest_XPubType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static BTCPubRequest_XPubType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCPubRequest_XPubType._(super.value, super.name);
}

class BTCSignInitRequest_FormatUnit extends $pb.ProtobufEnum {
  /// According to `coin` (BTC, LTC, etc.).
  static const BTCSignInitRequest_FormatUnit DEFAULT =
      BTCSignInitRequest_FormatUnit._(0, _omitEnumNames ? '' : 'DEFAULT');

  /// Only valid for BTC/TBTC, formats as "sat"/"tsat".
  static const BTCSignInitRequest_FormatUnit SAT =
      BTCSignInitRequest_FormatUnit._(1, _omitEnumNames ? '' : 'SAT');

  static const $core.List<BTCSignInitRequest_FormatUnit> values =
      <BTCSignInitRequest_FormatUnit>[
    DEFAULT,
    SAT,
  ];

  static final $core.List<BTCSignInitRequest_FormatUnit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static BTCSignInitRequest_FormatUnit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCSignInitRequest_FormatUnit._(super.value, super.name);
}

class BTCSignNextResponse_Type extends $pb.ProtobufEnum {
  static const BTCSignNextResponse_Type INPUT =
      BTCSignNextResponse_Type._(0, _omitEnumNames ? '' : 'INPUT');
  static const BTCSignNextResponse_Type OUTPUT =
      BTCSignNextResponse_Type._(1, _omitEnumNames ? '' : 'OUTPUT');
  static const BTCSignNextResponse_Type DONE =
      BTCSignNextResponse_Type._(2, _omitEnumNames ? '' : 'DONE');

  /// For the previous transaction at input `index`.
  static const BTCSignNextResponse_Type PREVTX_INIT =
      BTCSignNextResponse_Type._(3, _omitEnumNames ? '' : 'PREVTX_INIT');
  static const BTCSignNextResponse_Type PREVTX_INPUT =
      BTCSignNextResponse_Type._(4, _omitEnumNames ? '' : 'PREVTX_INPUT');
  static const BTCSignNextResponse_Type PREVTX_OUTPUT =
      BTCSignNextResponse_Type._(5, _omitEnumNames ? '' : 'PREVTX_OUTPUT');
  static const BTCSignNextResponse_Type HOST_NONCE =
      BTCSignNextResponse_Type._(6, _omitEnumNames ? '' : 'HOST_NONCE');
  static const BTCSignNextResponse_Type PAYMENT_REQUEST =
      BTCSignNextResponse_Type._(7, _omitEnumNames ? '' : 'PAYMENT_REQUEST');

  static const $core.List<BTCSignNextResponse_Type> values =
      <BTCSignNextResponse_Type>[
    INPUT,
    OUTPUT,
    DONE,
    PREVTX_INIT,
    PREVTX_INPUT,
    PREVTX_OUTPUT,
    HOST_NONCE,
    PAYMENT_REQUEST,
  ];

  static final $core.List<BTCSignNextResponse_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static BTCSignNextResponse_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCSignNextResponse_Type._(super.value, super.name);
}

class BTCRegisterScriptConfigRequest_XPubType extends $pb.ProtobufEnum {
  /// Automatically choose to match Electrum's xpub format (e.g. Zpub/Vpub for p2wsh multisig mainnet/testnet).
  static const BTCRegisterScriptConfigRequest_XPubType AUTO_ELECTRUM =
      BTCRegisterScriptConfigRequest_XPubType._(
          0, _omitEnumNames ? '' : 'AUTO_ELECTRUM');

  /// Always xpub for mainnets, tpub for testnets.
  static const BTCRegisterScriptConfigRequest_XPubType AUTO_XPUB_TPUB =
      BTCRegisterScriptConfigRequest_XPubType._(
          1, _omitEnumNames ? '' : 'AUTO_XPUB_TPUB');

  static const $core.List<BTCRegisterScriptConfigRequest_XPubType> values =
      <BTCRegisterScriptConfigRequest_XPubType>[
    AUTO_ELECTRUM,
    AUTO_XPUB_TPUB,
  ];

  static final $core.List<BTCRegisterScriptConfigRequest_XPubType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static BTCRegisterScriptConfigRequest_XPubType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BTCRegisterScriptConfigRequest_XPubType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
