// This is a generated file - do not edit.
//
// Generated from mnemonic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ShowMnemonicRequest extends $pb.GeneratedMessage {
  factory ShowMnemonicRequest() => create();

  ShowMnemonicRequest._();

  factory ShowMnemonicRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShowMnemonicRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShowMnemonicRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowMnemonicRequest clone() => ShowMnemonicRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShowMnemonicRequest copyWith(void Function(ShowMnemonicRequest) updates) =>
      super.copyWith((message) => updates(message as ShowMnemonicRequest))
          as ShowMnemonicRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShowMnemonicRequest create() => ShowMnemonicRequest._();
  @$core.override
  ShowMnemonicRequest createEmptyInstance() => create();
  static $pb.PbList<ShowMnemonicRequest> createRepeated() =>
      $pb.PbList<ShowMnemonicRequest>();
  @$core.pragma('dart2js:noInline')
  static ShowMnemonicRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShowMnemonicRequest>(create);
  static ShowMnemonicRequest? _defaultInstance;
}

class RestoreFromMnemonicRequest extends $pb.GeneratedMessage {
  factory RestoreFromMnemonicRequest({
    $core.int? timestamp,
    $core.int? timezoneOffset,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (timezoneOffset != null) result.timezoneOffset = timezoneOffset;
    return result;
  }

  RestoreFromMnemonicRequest._();

  factory RestoreFromMnemonicRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RestoreFromMnemonicRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RestoreFromMnemonicRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'timezoneOffset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RestoreFromMnemonicRequest clone() =>
      RestoreFromMnemonicRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RestoreFromMnemonicRequest copyWith(
          void Function(RestoreFromMnemonicRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RestoreFromMnemonicRequest))
          as RestoreFromMnemonicRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RestoreFromMnemonicRequest create() => RestoreFromMnemonicRequest._();
  @$core.override
  RestoreFromMnemonicRequest createEmptyInstance() => create();
  static $pb.PbList<RestoreFromMnemonicRequest> createRepeated() =>
      $pb.PbList<RestoreFromMnemonicRequest>();
  @$core.pragma('dart2js:noInline')
  static RestoreFromMnemonicRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RestoreFromMnemonicRequest>(create);
  static RestoreFromMnemonicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get timezoneOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set timezoneOffset($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimezoneOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimezoneOffset() => $_clearField(2);
}

class SetMnemonicPassphraseEnabledRequest extends $pb.GeneratedMessage {
  factory SetMnemonicPassphraseEnabledRequest({
    $core.bool? enabled,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    return result;
  }

  SetMnemonicPassphraseEnabledRequest._();

  factory SetMnemonicPassphraseEnabledRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetMnemonicPassphraseEnabledRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetMnemonicPassphraseEnabledRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetMnemonicPassphraseEnabledRequest clone() =>
      SetMnemonicPassphraseEnabledRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetMnemonicPassphraseEnabledRequest copyWith(
          void Function(SetMnemonicPassphraseEnabledRequest) updates) =>
      super.copyWith((message) =>
              updates(message as SetMnemonicPassphraseEnabledRequest))
          as SetMnemonicPassphraseEnabledRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetMnemonicPassphraseEnabledRequest create() =>
      SetMnemonicPassphraseEnabledRequest._();
  @$core.override
  SetMnemonicPassphraseEnabledRequest createEmptyInstance() => create();
  static $pb.PbList<SetMnemonicPassphraseEnabledRequest> createRepeated() =>
      $pb.PbList<SetMnemonicPassphraseEnabledRequest>();
  @$core.pragma('dart2js:noInline')
  static SetMnemonicPassphraseEnabledRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          SetMnemonicPassphraseEnabledRequest>(create);
  static SetMnemonicPassphraseEnabledRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
