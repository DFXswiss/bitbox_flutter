// This is a generated file - do not edit.
//
// Generated from system.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RebootRequest_Purpose extends $pb.ProtobufEnum {
  static const RebootRequest_Purpose UPGRADE =
      RebootRequest_Purpose._(0, _omitEnumNames ? '' : 'UPGRADE');
  static const RebootRequest_Purpose SETTINGS =
      RebootRequest_Purpose._(1, _omitEnumNames ? '' : 'SETTINGS');

  static const $core.List<RebootRequest_Purpose> values =
      <RebootRequest_Purpose>[
    UPGRADE,
    SETTINGS,
  ];

  static final $core.List<RebootRequest_Purpose?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RebootRequest_Purpose? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RebootRequest_Purpose._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
