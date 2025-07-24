// This is a generated file - do not edit.
//
// Generated from perform_attestation.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Deprecated, last used in v1.0.0
class PerformAttestationRequest extends $pb.GeneratedMessage {
  factory PerformAttestationRequest({
    $core.List<$core.int>? challenge,
  }) {
    final result = create();
    if (challenge != null) result.challenge = challenge;
    return result;
  }

  PerformAttestationRequest._();

  factory PerformAttestationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PerformAttestationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PerformAttestationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PerformAttestationRequest clone() =>
      PerformAttestationRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PerformAttestationRequest copyWith(
          void Function(PerformAttestationRequest) updates) =>
      super.copyWith((message) => updates(message as PerformAttestationRequest))
          as PerformAttestationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PerformAttestationRequest create() => PerformAttestationRequest._();
  @$core.override
  PerformAttestationRequest createEmptyInstance() => create();
  static $pb.PbList<PerformAttestationRequest> createRepeated() =>
      $pb.PbList<PerformAttestationRequest>();
  @$core.pragma('dart2js:noInline')
  static PerformAttestationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PerformAttestationRequest>(create);
  static PerformAttestationRequest? _defaultInstance;

  /// 32 bytes challenge.
  @$pb.TagNumber(1)
  $core.List<$core.int> get challenge => $_getN(0);
  @$pb.TagNumber(1)
  set challenge($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChallenge() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallenge() => $_clearField(1);
}

/// Deprecated, last used in v1.0.0
class PerformAttestationResponse extends $pb.GeneratedMessage {
  factory PerformAttestationResponse({
    $core.List<$core.int>? bootloaderHash,
    $core.List<$core.int>? devicePubkey,
    $core.List<$core.int>? certificate,
    $core.List<$core.int>? rootPubkeyIdentifier,
    $core.List<$core.int>? challengeSignature,
  }) {
    final result = create();
    if (bootloaderHash != null) result.bootloaderHash = bootloaderHash;
    if (devicePubkey != null) result.devicePubkey = devicePubkey;
    if (certificate != null) result.certificate = certificate;
    if (rootPubkeyIdentifier != null)
      result.rootPubkeyIdentifier = rootPubkeyIdentifier;
    if (challengeSignature != null)
      result.challengeSignature = challengeSignature;
    return result;
  }

  PerformAttestationResponse._();

  factory PerformAttestationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PerformAttestationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PerformAttestationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'bootloaderHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'devicePubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'certificate', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'rootPubkeyIdentifier', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'challengeSignature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PerformAttestationResponse clone() =>
      PerformAttestationResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PerformAttestationResponse copyWith(
          void Function(PerformAttestationResponse) updates) =>
      super.copyWith(
              (message) => updates(message as PerformAttestationResponse))
          as PerformAttestationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PerformAttestationResponse create() => PerformAttestationResponse._();
  @$core.override
  PerformAttestationResponse createEmptyInstance() => create();
  static $pb.PbList<PerformAttestationResponse> createRepeated() =>
      $pb.PbList<PerformAttestationResponse>();
  @$core.pragma('dart2js:noInline')
  static PerformAttestationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PerformAttestationResponse>(create);
  static PerformAttestationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bootloaderHash => $_getN(0);
  @$pb.TagNumber(1)
  set bootloaderHash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBootloaderHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearBootloaderHash() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get devicePubkey => $_getN(1);
  @$pb.TagNumber(2)
  set devicePubkey($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDevicePubkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearDevicePubkey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get certificate => $_getN(2);
  @$pb.TagNumber(3)
  set certificate($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCertificate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCertificate() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get rootPubkeyIdentifier => $_getN(3);
  @$pb.TagNumber(4)
  set rootPubkeyIdentifier($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRootPubkeyIdentifier() => $_has(3);
  @$pb.TagNumber(4)
  void clearRootPubkeyIdentifier() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get challengeSignature => $_getN(4);
  @$pb.TagNumber(5)
  set challengeSignature($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasChallengeSignature() => $_has(4);
  @$pb.TagNumber(5)
  void clearChallengeSignature() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
