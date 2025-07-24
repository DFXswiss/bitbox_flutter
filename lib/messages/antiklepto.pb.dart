// This is a generated file - do not edit.
//
// Generated from antiklepto.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AntiKleptoHostNonceCommitment extends $pb.GeneratedMessage {
  factory AntiKleptoHostNonceCommitment({
    $core.List<$core.int>? commitment,
  }) {
    final result = create();
    if (commitment != null) result.commitment = commitment;
    return result;
  }

  AntiKleptoHostNonceCommitment._();

  factory AntiKleptoHostNonceCommitment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AntiKleptoHostNonceCommitment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AntiKleptoHostNonceCommitment',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'commitment', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AntiKleptoHostNonceCommitment clone() =>
      AntiKleptoHostNonceCommitment()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AntiKleptoHostNonceCommitment copyWith(
          void Function(AntiKleptoHostNonceCommitment) updates) =>
      super.copyWith(
              (message) => updates(message as AntiKleptoHostNonceCommitment))
          as AntiKleptoHostNonceCommitment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AntiKleptoHostNonceCommitment create() =>
      AntiKleptoHostNonceCommitment._();
  @$core.override
  AntiKleptoHostNonceCommitment createEmptyInstance() => create();
  static $pb.PbList<AntiKleptoHostNonceCommitment> createRepeated() =>
      $pb.PbList<AntiKleptoHostNonceCommitment>();
  @$core.pragma('dart2js:noInline')
  static AntiKleptoHostNonceCommitment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AntiKleptoHostNonceCommitment>(create);
  static AntiKleptoHostNonceCommitment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get commitment => $_getN(0);
  @$pb.TagNumber(1)
  set commitment($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommitment() => $_clearField(1);
}

class AntiKleptoSignerCommitment extends $pb.GeneratedMessage {
  factory AntiKleptoSignerCommitment({
    $core.List<$core.int>? commitment,
  }) {
    final result = create();
    if (commitment != null) result.commitment = commitment;
    return result;
  }

  AntiKleptoSignerCommitment._();

  factory AntiKleptoSignerCommitment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AntiKleptoSignerCommitment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AntiKleptoSignerCommitment',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'commitment', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AntiKleptoSignerCommitment clone() =>
      AntiKleptoSignerCommitment()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AntiKleptoSignerCommitment copyWith(
          void Function(AntiKleptoSignerCommitment) updates) =>
      super.copyWith(
              (message) => updates(message as AntiKleptoSignerCommitment))
          as AntiKleptoSignerCommitment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AntiKleptoSignerCommitment create() => AntiKleptoSignerCommitment._();
  @$core.override
  AntiKleptoSignerCommitment createEmptyInstance() => create();
  static $pb.PbList<AntiKleptoSignerCommitment> createRepeated() =>
      $pb.PbList<AntiKleptoSignerCommitment>();
  @$core.pragma('dart2js:noInline')
  static AntiKleptoSignerCommitment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AntiKleptoSignerCommitment>(create);
  static AntiKleptoSignerCommitment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get commitment => $_getN(0);
  @$pb.TagNumber(1)
  set commitment($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommitment() => $_clearField(1);
}

class AntiKleptoSignatureRequest extends $pb.GeneratedMessage {
  factory AntiKleptoSignatureRequest({
    $core.List<$core.int>? hostNonce,
  }) {
    final result = create();
    if (hostNonce != null) result.hostNonce = hostNonce;
    return result;
  }

  AntiKleptoSignatureRequest._();

  factory AntiKleptoSignatureRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AntiKleptoSignatureRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AntiKleptoSignatureRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hostNonce', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AntiKleptoSignatureRequest clone() =>
      AntiKleptoSignatureRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AntiKleptoSignatureRequest copyWith(
          void Function(AntiKleptoSignatureRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AntiKleptoSignatureRequest))
          as AntiKleptoSignatureRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AntiKleptoSignatureRequest create() => AntiKleptoSignatureRequest._();
  @$core.override
  AntiKleptoSignatureRequest createEmptyInstance() => create();
  static $pb.PbList<AntiKleptoSignatureRequest> createRepeated() =>
      $pb.PbList<AntiKleptoSignatureRequest>();
  @$core.pragma('dart2js:noInline')
  static AntiKleptoSignatureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AntiKleptoSignatureRequest>(create);
  static AntiKleptoSignatureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hostNonce => $_getN(0);
  @$pb.TagNumber(1)
  set hostNonce($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostNonce() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
