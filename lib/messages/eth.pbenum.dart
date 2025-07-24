// This is a generated file - do not edit.
//
// Generated from eth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Kept for backwards compatibility. Use chain_id instead, introduced in v9.10.0.
class ETHCoin extends $pb.ProtobufEnum {
  static const ETHCoin ETH = ETHCoin._(0, _omitEnumNames ? '' : 'ETH');

  /// Removed in v9.14.0 - deprecated
  static const ETHCoin RopstenETH =
      ETHCoin._(1, _omitEnumNames ? '' : 'RopstenETH');

  /// Removed in v9.14.0 - deprecated
  static const ETHCoin RinkebyETH =
      ETHCoin._(2, _omitEnumNames ? '' : 'RinkebyETH');

  static const $core.List<ETHCoin> values = <ETHCoin>[
    ETH,
    RopstenETH,
    RinkebyETH,
  ];

  static final $core.List<ETHCoin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ETHCoin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ETHCoin._(super.value, super.name);
}

class ETHAddressCase extends $pb.ProtobufEnum {
  static const ETHAddressCase ETH_ADDRESS_CASE_MIXED =
      ETHAddressCase._(0, _omitEnumNames ? '' : 'ETH_ADDRESS_CASE_MIXED');
  static const ETHAddressCase ETH_ADDRESS_CASE_UPPER =
      ETHAddressCase._(1, _omitEnumNames ? '' : 'ETH_ADDRESS_CASE_UPPER');
  static const ETHAddressCase ETH_ADDRESS_CASE_LOWER =
      ETHAddressCase._(2, _omitEnumNames ? '' : 'ETH_ADDRESS_CASE_LOWER');

  static const $core.List<ETHAddressCase> values = <ETHAddressCase>[
    ETH_ADDRESS_CASE_MIXED,
    ETH_ADDRESS_CASE_UPPER,
    ETH_ADDRESS_CASE_LOWER,
  ];

  static final $core.List<ETHAddressCase?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ETHAddressCase? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ETHAddressCase._(super.value, super.name);
}

class ETHPubRequest_OutputType extends $pb.ProtobufEnum {
  static const ETHPubRequest_OutputType ADDRESS =
      ETHPubRequest_OutputType._(0, _omitEnumNames ? '' : 'ADDRESS');
  static const ETHPubRequest_OutputType XPUB =
      ETHPubRequest_OutputType._(1, _omitEnumNames ? '' : 'XPUB');

  static const $core.List<ETHPubRequest_OutputType> values =
      <ETHPubRequest_OutputType>[
    ADDRESS,
    XPUB,
  ];

  static final $core.List<ETHPubRequest_OutputType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ETHPubRequest_OutputType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ETHPubRequest_OutputType._(super.value, super.name);
}

class ETHSignTypedMessageRequest_DataType extends $pb.ProtobufEnum {
  static const ETHSignTypedMessageRequest_DataType UNKNOWN =
      ETHSignTypedMessageRequest_DataType._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ETHSignTypedMessageRequest_DataType BYTES =
      ETHSignTypedMessageRequest_DataType._(1, _omitEnumNames ? '' : 'BYTES');
  static const ETHSignTypedMessageRequest_DataType UINT =
      ETHSignTypedMessageRequest_DataType._(2, _omitEnumNames ? '' : 'UINT');
  static const ETHSignTypedMessageRequest_DataType INT =
      ETHSignTypedMessageRequest_DataType._(3, _omitEnumNames ? '' : 'INT');
  static const ETHSignTypedMessageRequest_DataType BOOL =
      ETHSignTypedMessageRequest_DataType._(4, _omitEnumNames ? '' : 'BOOL');
  static const ETHSignTypedMessageRequest_DataType ADDRESS =
      ETHSignTypedMessageRequest_DataType._(5, _omitEnumNames ? '' : 'ADDRESS');
  static const ETHSignTypedMessageRequest_DataType STRING =
      ETHSignTypedMessageRequest_DataType._(6, _omitEnumNames ? '' : 'STRING');
  static const ETHSignTypedMessageRequest_DataType ARRAY =
      ETHSignTypedMessageRequest_DataType._(7, _omitEnumNames ? '' : 'ARRAY');
  static const ETHSignTypedMessageRequest_DataType STRUCT =
      ETHSignTypedMessageRequest_DataType._(8, _omitEnumNames ? '' : 'STRUCT');

  static const $core.List<ETHSignTypedMessageRequest_DataType> values =
      <ETHSignTypedMessageRequest_DataType>[
    UNKNOWN,
    BYTES,
    UINT,
    INT,
    BOOL,
    ADDRESS,
    STRING,
    ARRAY,
    STRUCT,
  ];

  static final $core.List<ETHSignTypedMessageRequest_DataType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static ETHSignTypedMessageRequest_DataType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ETHSignTypedMessageRequest_DataType._(super.value, super.name);
}

class ETHTypedMessageValueResponse_RootObject extends $pb.ProtobufEnum {
  static const ETHTypedMessageValueResponse_RootObject UNKNOWN =
      ETHTypedMessageValueResponse_RootObject._(
          0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ETHTypedMessageValueResponse_RootObject DOMAIN =
      ETHTypedMessageValueResponse_RootObject._(
          1, _omitEnumNames ? '' : 'DOMAIN');
  static const ETHTypedMessageValueResponse_RootObject MESSAGE =
      ETHTypedMessageValueResponse_RootObject._(
          2, _omitEnumNames ? '' : 'MESSAGE');

  static const $core.List<ETHTypedMessageValueResponse_RootObject> values =
      <ETHTypedMessageValueResponse_RootObject>[
    UNKNOWN,
    DOMAIN,
    MESSAGE,
  ];

  static final $core.List<ETHTypedMessageValueResponse_RootObject?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ETHTypedMessageValueResponse_RootObject? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ETHTypedMessageValueResponse_RootObject._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
