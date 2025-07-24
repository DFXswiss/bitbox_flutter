// This is a generated file - do not edit.
//
// Generated from common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PubResponse extends $pb.GeneratedMessage {
  factory PubResponse({
    $core.String? pub,
  }) {
    final result = create();
    if (pub != null) result.pub = pub;
    return result;
  }

  PubResponse._();

  factory PubResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PubResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PubResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pub')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PubResponse clone() => PubResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PubResponse copyWith(void Function(PubResponse) updates) =>
      super.copyWith((message) => updates(message as PubResponse))
          as PubResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PubResponse create() => PubResponse._();
  @$core.override
  PubResponse createEmptyInstance() => create();
  static $pb.PbList<PubResponse> createRepeated() => $pb.PbList<PubResponse>();
  @$core.pragma('dart2js:noInline')
  static PubResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PubResponse>(create);
  static PubResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pub => $_getSZ(0);
  @$pb.TagNumber(1)
  set pub($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPub() => $_has(0);
  @$pb.TagNumber(1)
  void clearPub() => $_clearField(1);
}

class RootFingerprintRequest extends $pb.GeneratedMessage {
  factory RootFingerprintRequest() => create();

  RootFingerprintRequest._();

  factory RootFingerprintRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RootFingerprintRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RootFingerprintRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RootFingerprintRequest clone() =>
      RootFingerprintRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RootFingerprintRequest copyWith(
          void Function(RootFingerprintRequest) updates) =>
      super.copyWith((message) => updates(message as RootFingerprintRequest))
          as RootFingerprintRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RootFingerprintRequest create() => RootFingerprintRequest._();
  @$core.override
  RootFingerprintRequest createEmptyInstance() => create();
  static $pb.PbList<RootFingerprintRequest> createRepeated() =>
      $pb.PbList<RootFingerprintRequest>();
  @$core.pragma('dart2js:noInline')
  static RootFingerprintRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RootFingerprintRequest>(create);
  static RootFingerprintRequest? _defaultInstance;
}

class RootFingerprintResponse extends $pb.GeneratedMessage {
  factory RootFingerprintResponse({
    $core.List<$core.int>? fingerprint,
  }) {
    final result = create();
    if (fingerprint != null) result.fingerprint = fingerprint;
    return result;
  }

  RootFingerprintResponse._();

  factory RootFingerprintResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RootFingerprintResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RootFingerprintResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'fingerprint', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RootFingerprintResponse clone() =>
      RootFingerprintResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RootFingerprintResponse copyWith(
          void Function(RootFingerprintResponse) updates) =>
      super.copyWith((message) => updates(message as RootFingerprintResponse))
          as RootFingerprintResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RootFingerprintResponse create() => RootFingerprintResponse._();
  @$core.override
  RootFingerprintResponse createEmptyInstance() => create();
  static $pb.PbList<RootFingerprintResponse> createRepeated() =>
      $pb.PbList<RootFingerprintResponse>();
  @$core.pragma('dart2js:noInline')
  static RootFingerprintResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RootFingerprintResponse>(create);
  static RootFingerprintResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fingerprint => $_getN(0);
  @$pb.TagNumber(1)
  set fingerprint($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFingerprint() => $_has(0);
  @$pb.TagNumber(1)
  void clearFingerprint() => $_clearField(1);
}

/// See https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki.
/// version field dropped as it will set dynamically based on the context (xpub, ypub, etc.).
class XPub extends $pb.GeneratedMessage {
  factory XPub({
    $core.List<$core.int>? depth,
    $core.List<$core.int>? parentFingerprint,
    $core.int? childNum,
    $core.List<$core.int>? chainCode,
    $core.List<$core.int>? publicKey,
  }) {
    final result = create();
    if (depth != null) result.depth = depth;
    if (parentFingerprint != null) result.parentFingerprint = parentFingerprint;
    if (childNum != null) result.childNum = childNum;
    if (chainCode != null) result.chainCode = chainCode;
    if (publicKey != null) result.publicKey = publicKey;
    return result;
  }

  XPub._();

  factory XPub.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory XPub.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'XPub',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'depth', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'parentFingerprint', $pb.PbFieldType.OY)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'childNum', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'chainCode', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XPub clone() => XPub()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  XPub copyWith(void Function(XPub) updates) =>
      super.copyWith((message) => updates(message as XPub)) as XPub;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static XPub create() => XPub._();
  @$core.override
  XPub createEmptyInstance() => create();
  static $pb.PbList<XPub> createRepeated() => $pb.PbList<XPub>();
  @$core.pragma('dart2js:noInline')
  static XPub getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<XPub>(create);
  static XPub? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get depth => $_getN(0);
  @$pb.TagNumber(1)
  set depth($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDepth() => $_has(0);
  @$pb.TagNumber(1)
  void clearDepth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get parentFingerprint => $_getN(1);
  @$pb.TagNumber(2)
  set parentFingerprint($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasParentFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentFingerprint() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get childNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set childNum($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChildNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearChildNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get chainCode => $_getN(3);
  @$pb.TagNumber(4)
  set chainCode($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasChainCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearChainCode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get publicKey => $_getN(4);
  @$pb.TagNumber(5)
  set publicKey($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPublicKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublicKey() => $_clearField(5);
}

/// This message exists for use in oneof or repeated fields, where one can't inline `repeated uint32` due to protobuf rules.
class Keypath extends $pb.GeneratedMessage {
  factory Keypath({
    $core.Iterable<$core.int>? keypath,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    return result;
  }

  Keypath._();

  factory Keypath.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Keypath.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Keypath',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Keypath clone() => Keypath()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Keypath copyWith(void Function(Keypath) updates) =>
      super.copyWith((message) => updates(message as Keypath)) as Keypath;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Keypath create() => Keypath._();
  @$core.override
  Keypath createEmptyInstance() => create();
  static $pb.PbList<Keypath> createRepeated() => $pb.PbList<Keypath>();
  @$core.pragma('dart2js:noInline')
  static Keypath getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Keypath>(create);
  static Keypath? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);
}

class KeyOriginInfo extends $pb.GeneratedMessage {
  factory KeyOriginInfo({
    $core.List<$core.int>? rootFingerprint,
    $core.Iterable<$core.int>? keypath,
    XPub? xpub,
  }) {
    final result = create();
    if (rootFingerprint != null) result.rootFingerprint = rootFingerprint;
    if (keypath != null) result.keypath.addAll(keypath);
    if (xpub != null) result.xpub = xpub;
    return result;
  }

  KeyOriginInfo._();

  factory KeyOriginInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeyOriginInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyOriginInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'rootFingerprint', $pb.PbFieldType.OY)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..aOM<XPub>(3, _omitFieldNames ? '' : 'xpub', subBuilder: XPub.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyOriginInfo clone() => KeyOriginInfo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyOriginInfo copyWith(void Function(KeyOriginInfo) updates) =>
      super.copyWith((message) => updates(message as KeyOriginInfo))
          as KeyOriginInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyOriginInfo create() => KeyOriginInfo._();
  @$core.override
  KeyOriginInfo createEmptyInstance() => create();
  static $pb.PbList<KeyOriginInfo> createRepeated() =>
      $pb.PbList<KeyOriginInfo>();
  @$core.pragma('dart2js:noInline')
  static KeyOriginInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeyOriginInfo>(create);
  static KeyOriginInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get rootFingerprint => $_getN(0);
  @$pb.TagNumber(1)
  set rootFingerprint($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRootFingerprint() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootFingerprint() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypath => $_getList(1);

  @$pb.TagNumber(3)
  XPub get xpub => $_getN(2);
  @$pb.TagNumber(3)
  set xpub(XPub value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasXpub() => $_has(2);
  @$pb.TagNumber(3)
  void clearXpub() => $_clearField(3);
  @$pb.TagNumber(3)
  XPub ensureXpub() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
