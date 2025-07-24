// This is a generated file - do not edit.
//
// Generated from cardano.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CardanoNetwork extends $pb.ProtobufEnum {
  static const CardanoNetwork CardanoMainnet =
      CardanoNetwork._(0, _omitEnumNames ? '' : 'CardanoMainnet');
  static const CardanoNetwork CardanoTestnet =
      CardanoNetwork._(1, _omitEnumNames ? '' : 'CardanoTestnet');

  static const $core.List<CardanoNetwork> values = <CardanoNetwork>[
    CardanoMainnet,
    CardanoTestnet,
  ];

  static final $core.List<CardanoNetwork?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static CardanoNetwork? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CardanoNetwork._(super.value, super.name);
}

class CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
    extends $pb.ProtobufEnum {
  static const CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
      KEY_HASH =
      CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
          ._(0, _omitEnumNames ? '' : 'KEY_HASH');
  static const CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
      SCRIPT_HASH =
      CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
          ._(1, _omitEnumNames ? '' : 'SCRIPT_HASH');
  static const CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
      ALWAYS_ABSTAIN =
      CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
          ._(2, _omitEnumNames ? '' : 'ALWAYS_ABSTAIN');
  static const CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
      ALWAYS_NO_CONFIDENCE =
      CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
          ._(3, _omitEnumNames ? '' : 'ALWAYS_NO_CONFIDENCE');

  static const $core.List<
          CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType>
      values =
      <CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType>[
    KEY_HASH,
    SCRIPT_HASH,
    ALWAYS_ABSTAIN,
    ALWAYS_NO_CONFIDENCE,
  ];

  static final $core.List<
          CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType?>
      _byValue = $pb.ProtobufEnum.$_initByValueList(values, 3);
  static CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType?
      valueOf($core.int value) =>
          value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType._(
      super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
