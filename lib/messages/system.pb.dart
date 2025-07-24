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

import 'system.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'system.pbenum.dart';

class RebootRequest extends $pb.GeneratedMessage {
  factory RebootRequest({
    RebootRequest_Purpose? purpose,
  }) {
    final result = create();
    if (purpose != null) result.purpose = purpose;
    return result;
  }

  RebootRequest._();

  factory RebootRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RebootRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RebootRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<RebootRequest_Purpose>(
        1, _omitFieldNames ? '' : 'purpose', $pb.PbFieldType.OE,
        defaultOrMaker: RebootRequest_Purpose.UPGRADE,
        valueOf: RebootRequest_Purpose.valueOf,
        enumValues: RebootRequest_Purpose.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RebootRequest clone() => RebootRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RebootRequest copyWith(void Function(RebootRequest) updates) =>
      super.copyWith((message) => updates(message as RebootRequest))
          as RebootRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RebootRequest create() => RebootRequest._();
  @$core.override
  RebootRequest createEmptyInstance() => create();
  static $pb.PbList<RebootRequest> createRepeated() =>
      $pb.PbList<RebootRequest>();
  @$core.pragma('dart2js:noInline')
  static RebootRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RebootRequest>(create);
  static RebootRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RebootRequest_Purpose get purpose => $_getN(0);
  @$pb.TagNumber(1)
  set purpose(RebootRequest_Purpose value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPurpose() => $_has(0);
  @$pb.TagNumber(1)
  void clearPurpose() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
