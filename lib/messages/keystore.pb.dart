// This is a generated file - do not edit.
//
// Generated from keystore.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'empty.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ElectrumEncryptionKeyRequest extends $pb.GeneratedMessage {
  factory ElectrumEncryptionKeyRequest({
    $core.Iterable<$core.int>? keypath,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    return result;
  }

  ElectrumEncryptionKeyRequest._();

  factory ElectrumEncryptionKeyRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ElectrumEncryptionKeyRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ElectrumEncryptionKeyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElectrumEncryptionKeyRequest clone() =>
      ElectrumEncryptionKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElectrumEncryptionKeyRequest copyWith(
          void Function(ElectrumEncryptionKeyRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ElectrumEncryptionKeyRequest))
          as ElectrumEncryptionKeyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ElectrumEncryptionKeyRequest create() =>
      ElectrumEncryptionKeyRequest._();
  @$core.override
  ElectrumEncryptionKeyRequest createEmptyInstance() => create();
  static $pb.PbList<ElectrumEncryptionKeyRequest> createRepeated() =>
      $pb.PbList<ElectrumEncryptionKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static ElectrumEncryptionKeyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ElectrumEncryptionKeyRequest>(create);
  static ElectrumEncryptionKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);
}

class ElectrumEncryptionKeyResponse extends $pb.GeneratedMessage {
  factory ElectrumEncryptionKeyResponse({
    $core.String? key,
  }) {
    final result = create();
    if (key != null) result.key = key;
    return result;
  }

  ElectrumEncryptionKeyResponse._();

  factory ElectrumEncryptionKeyResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ElectrumEncryptionKeyResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ElectrumEncryptionKeyResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElectrumEncryptionKeyResponse clone() =>
      ElectrumEncryptionKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ElectrumEncryptionKeyResponse copyWith(
          void Function(ElectrumEncryptionKeyResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ElectrumEncryptionKeyResponse))
          as ElectrumEncryptionKeyResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ElectrumEncryptionKeyResponse create() =>
      ElectrumEncryptionKeyResponse._();
  @$core.override
  ElectrumEncryptionKeyResponse createEmptyInstance() => create();
  static $pb.PbList<ElectrumEncryptionKeyResponse> createRepeated() =>
      $pb.PbList<ElectrumEncryptionKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static ElectrumEncryptionKeyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ElectrumEncryptionKeyResponse>(create);
  static ElectrumEncryptionKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
}

class BIP85Request_AppLn extends $pb.GeneratedMessage {
  factory BIP85Request_AppLn({
    $core.int? accountNumber,
  }) {
    final result = create();
    if (accountNumber != null) result.accountNumber = accountNumber;
    return result;
  }

  BIP85Request_AppLn._();

  factory BIP85Request_AppLn.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BIP85Request_AppLn.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BIP85Request.AppLn',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'accountNumber', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BIP85Request_AppLn clone() => BIP85Request_AppLn()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BIP85Request_AppLn copyWith(void Function(BIP85Request_AppLn) updates) =>
      super.copyWith((message) => updates(message as BIP85Request_AppLn))
          as BIP85Request_AppLn;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BIP85Request_AppLn create() => BIP85Request_AppLn._();
  @$core.override
  BIP85Request_AppLn createEmptyInstance() => create();
  static $pb.PbList<BIP85Request_AppLn> createRepeated() =>
      $pb.PbList<BIP85Request_AppLn>();
  @$core.pragma('dart2js:noInline')
  static BIP85Request_AppLn getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BIP85Request_AppLn>(create);
  static BIP85Request_AppLn? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set accountNumber($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNumber() => $_clearField(1);
}

enum BIP85Request_App { bip39, ln, notSet }

class BIP85Request extends $pb.GeneratedMessage {
  factory BIP85Request({
    $0.Empty? bip39,
    BIP85Request_AppLn? ln,
  }) {
    final result = create();
    if (bip39 != null) result.bip39 = bip39;
    if (ln != null) result.ln = ln;
    return result;
  }

  BIP85Request._();

  factory BIP85Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BIP85Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BIP85Request_App> _BIP85Request_AppByTag = {
    1: BIP85Request_App.bip39,
    2: BIP85Request_App.ln,
    0: BIP85Request_App.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BIP85Request',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.Empty>(1, _omitFieldNames ? '' : 'bip39',
        subBuilder: $0.Empty.create)
    ..aOM<BIP85Request_AppLn>(2, _omitFieldNames ? '' : 'ln',
        subBuilder: BIP85Request_AppLn.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BIP85Request clone() => BIP85Request()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BIP85Request copyWith(void Function(BIP85Request) updates) =>
      super.copyWith((message) => updates(message as BIP85Request))
          as BIP85Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BIP85Request create() => BIP85Request._();
  @$core.override
  BIP85Request createEmptyInstance() => create();
  static $pb.PbList<BIP85Request> createRepeated() =>
      $pb.PbList<BIP85Request>();
  @$core.pragma('dart2js:noInline')
  static BIP85Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BIP85Request>(create);
  static BIP85Request? _defaultInstance;

  BIP85Request_App whichApp() => _BIP85Request_AppByTag[$_whichOneof(0)]!;
  void clearApp() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Empty get bip39 => $_getN(0);
  @$pb.TagNumber(1)
  set bip39($0.Empty value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBip39() => $_has(0);
  @$pb.TagNumber(1)
  void clearBip39() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Empty ensureBip39() => $_ensure(0);

  @$pb.TagNumber(2)
  BIP85Request_AppLn get ln => $_getN(1);
  @$pb.TagNumber(2)
  set ln(BIP85Request_AppLn value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLn() => $_has(1);
  @$pb.TagNumber(2)
  void clearLn() => $_clearField(2);
  @$pb.TagNumber(2)
  BIP85Request_AppLn ensureLn() => $_ensure(1);
}

enum BIP85Response_App { bip39, ln, notSet }

class BIP85Response extends $pb.GeneratedMessage {
  factory BIP85Response({
    $0.Empty? bip39,
    $core.List<$core.int>? ln,
  }) {
    final result = create();
    if (bip39 != null) result.bip39 = bip39;
    if (ln != null) result.ln = ln;
    return result;
  }

  BIP85Response._();

  factory BIP85Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BIP85Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BIP85Response_App> _BIP85Response_AppByTag =
      {
    1: BIP85Response_App.bip39,
    2: BIP85Response_App.ln,
    0: BIP85Response_App.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BIP85Response',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.Empty>(1, _omitFieldNames ? '' : 'bip39',
        subBuilder: $0.Empty.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'ln', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BIP85Response clone() => BIP85Response()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BIP85Response copyWith(void Function(BIP85Response) updates) =>
      super.copyWith((message) => updates(message as BIP85Response))
          as BIP85Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BIP85Response create() => BIP85Response._();
  @$core.override
  BIP85Response createEmptyInstance() => create();
  static $pb.PbList<BIP85Response> createRepeated() =>
      $pb.PbList<BIP85Response>();
  @$core.pragma('dart2js:noInline')
  static BIP85Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BIP85Response>(create);
  static BIP85Response? _defaultInstance;

  BIP85Response_App whichApp() => _BIP85Response_AppByTag[$_whichOneof(0)]!;
  void clearApp() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Empty get bip39 => $_getN(0);
  @$pb.TagNumber(1)
  set bip39($0.Empty value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBip39() => $_has(0);
  @$pb.TagNumber(1)
  void clearBip39() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Empty ensureBip39() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get ln => $_getN(1);
  @$pb.TagNumber(2)
  set ln($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLn() => $_has(1);
  @$pb.TagNumber(2)
  void clearLn() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
