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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'cardano.pbenum.dart';
import 'common.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'cardano.pbenum.dart';

class CardanoXpubsRequest extends $pb.GeneratedMessage {
  factory CardanoXpubsRequest({
    $core.Iterable<$0.Keypath>? keypaths,
  }) {
    final result = create();
    if (keypaths != null) result.keypaths.addAll(keypaths);
    return result;
  }

  CardanoXpubsRequest._();

  factory CardanoXpubsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoXpubsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoXpubsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..pc<$0.Keypath>(1, _omitFieldNames ? '' : 'keypaths', $pb.PbFieldType.PM,
        subBuilder: $0.Keypath.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoXpubsRequest clone() => CardanoXpubsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoXpubsRequest copyWith(void Function(CardanoXpubsRequest) updates) =>
      super.copyWith((message) => updates(message as CardanoXpubsRequest))
          as CardanoXpubsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoXpubsRequest create() => CardanoXpubsRequest._();
  @$core.override
  CardanoXpubsRequest createEmptyInstance() => create();
  static $pb.PbList<CardanoXpubsRequest> createRepeated() =>
      $pb.PbList<CardanoXpubsRequest>();
  @$core.pragma('dart2js:noInline')
  static CardanoXpubsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoXpubsRequest>(create);
  static CardanoXpubsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Keypath> get keypaths => $_getList(0);
}

class CardanoXpubsResponse extends $pb.GeneratedMessage {
  factory CardanoXpubsResponse({
    $core.Iterable<$core.List<$core.int>>? xpubs,
  }) {
    final result = create();
    if (xpubs != null) result.xpubs.addAll(xpubs);
    return result;
  }

  CardanoXpubsResponse._();

  factory CardanoXpubsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoXpubsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoXpubsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'xpubs', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoXpubsResponse clone() =>
      CardanoXpubsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoXpubsResponse copyWith(void Function(CardanoXpubsResponse) updates) =>
      super.copyWith((message) => updates(message as CardanoXpubsResponse))
          as CardanoXpubsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoXpubsResponse create() => CardanoXpubsResponse._();
  @$core.override
  CardanoXpubsResponse createEmptyInstance() => create();
  static $pb.PbList<CardanoXpubsResponse> createRepeated() =>
      $pb.PbList<CardanoXpubsResponse>();
  @$core.pragma('dart2js:noInline')
  static CardanoXpubsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoXpubsResponse>(create);
  static CardanoXpubsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.List<$core.int>> get xpubs => $_getList(0);
}

class CardanoScriptConfig_PkhSkh extends $pb.GeneratedMessage {
  factory CardanoScriptConfig_PkhSkh({
    $core.Iterable<$core.int>? keypathPayment,
    $core.Iterable<$core.int>? keypathStake,
  }) {
    final result = create();
    if (keypathPayment != null) result.keypathPayment.addAll(keypathPayment);
    if (keypathStake != null) result.keypathStake.addAll(keypathStake);
    return result;
  }

  CardanoScriptConfig_PkhSkh._();

  factory CardanoScriptConfig_PkhSkh.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoScriptConfig_PkhSkh.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoScriptConfig.PkhSkh',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(
        1, _omitFieldNames ? '' : 'keypathPayment', $pb.PbFieldType.KU3)
    ..p<$core.int>(
        2, _omitFieldNames ? '' : 'keypathStake', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoScriptConfig_PkhSkh clone() =>
      CardanoScriptConfig_PkhSkh()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoScriptConfig_PkhSkh copyWith(
          void Function(CardanoScriptConfig_PkhSkh) updates) =>
      super.copyWith(
              (message) => updates(message as CardanoScriptConfig_PkhSkh))
          as CardanoScriptConfig_PkhSkh;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoScriptConfig_PkhSkh create() => CardanoScriptConfig_PkhSkh._();
  @$core.override
  CardanoScriptConfig_PkhSkh createEmptyInstance() => create();
  static $pb.PbList<CardanoScriptConfig_PkhSkh> createRepeated() =>
      $pb.PbList<CardanoScriptConfig_PkhSkh>();
  @$core.pragma('dart2js:noInline')
  static CardanoScriptConfig_PkhSkh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoScriptConfig_PkhSkh>(create);
  static CardanoScriptConfig_PkhSkh? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypathPayment => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypathStake => $_getList(1);
}

enum CardanoScriptConfig_Config { pkhSkh, notSet }

class CardanoScriptConfig extends $pb.GeneratedMessage {
  factory CardanoScriptConfig({
    CardanoScriptConfig_PkhSkh? pkhSkh,
  }) {
    final result = create();
    if (pkhSkh != null) result.pkhSkh = pkhSkh;
    return result;
  }

  CardanoScriptConfig._();

  factory CardanoScriptConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoScriptConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CardanoScriptConfig_Config>
      _CardanoScriptConfig_ConfigByTag = {
    1: CardanoScriptConfig_Config.pkhSkh,
    0: CardanoScriptConfig_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoScriptConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<CardanoScriptConfig_PkhSkh>(1, _omitFieldNames ? '' : 'pkhSkh',
        subBuilder: CardanoScriptConfig_PkhSkh.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoScriptConfig clone() => CardanoScriptConfig()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoScriptConfig copyWith(void Function(CardanoScriptConfig) updates) =>
      super.copyWith((message) => updates(message as CardanoScriptConfig))
          as CardanoScriptConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoScriptConfig create() => CardanoScriptConfig._();
  @$core.override
  CardanoScriptConfig createEmptyInstance() => create();
  static $pb.PbList<CardanoScriptConfig> createRepeated() =>
      $pb.PbList<CardanoScriptConfig>();
  @$core.pragma('dart2js:noInline')
  static CardanoScriptConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoScriptConfig>(create);
  static CardanoScriptConfig? _defaultInstance;

  CardanoScriptConfig_Config whichConfig() =>
      _CardanoScriptConfig_ConfigByTag[$_whichOneof(0)]!;
  void clearConfig() => $_clearField($_whichOneof(0));

  /// Shelley PaymentKeyHash & StakeKeyHash
  @$pb.TagNumber(1)
  CardanoScriptConfig_PkhSkh get pkhSkh => $_getN(0);
  @$pb.TagNumber(1)
  set pkhSkh(CardanoScriptConfig_PkhSkh value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPkhSkh() => $_has(0);
  @$pb.TagNumber(1)
  void clearPkhSkh() => $_clearField(1);
  @$pb.TagNumber(1)
  CardanoScriptConfig_PkhSkh ensurePkhSkh() => $_ensure(0);
}

class CardanoAddressRequest extends $pb.GeneratedMessage {
  factory CardanoAddressRequest({
    CardanoNetwork? network,
    $core.bool? display,
    CardanoScriptConfig? scriptConfig,
  }) {
    final result = create();
    if (network != null) result.network = network;
    if (display != null) result.display = display;
    if (scriptConfig != null) result.scriptConfig = scriptConfig;
    return result;
  }

  CardanoAddressRequest._();

  factory CardanoAddressRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoAddressRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoAddressRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<CardanoNetwork>(1, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE,
        defaultOrMaker: CardanoNetwork.CardanoMainnet,
        valueOf: CardanoNetwork.valueOf,
        enumValues: CardanoNetwork.values)
    ..aOB(2, _omitFieldNames ? '' : 'display')
    ..aOM<CardanoScriptConfig>(3, _omitFieldNames ? '' : 'scriptConfig',
        subBuilder: CardanoScriptConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoAddressRequest clone() =>
      CardanoAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoAddressRequest copyWith(
          void Function(CardanoAddressRequest) updates) =>
      super.copyWith((message) => updates(message as CardanoAddressRequest))
          as CardanoAddressRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoAddressRequest create() => CardanoAddressRequest._();
  @$core.override
  CardanoAddressRequest createEmptyInstance() => create();
  static $pb.PbList<CardanoAddressRequest> createRepeated() =>
      $pb.PbList<CardanoAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static CardanoAddressRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoAddressRequest>(create);
  static CardanoAddressRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CardanoNetwork get network => $_getN(0);
  @$pb.TagNumber(1)
  set network(CardanoNetwork value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetwork() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get display => $_getBF(1);
  @$pb.TagNumber(2)
  set display($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplay() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplay() => $_clearField(2);

  @$pb.TagNumber(3)
  CardanoScriptConfig get scriptConfig => $_getN(2);
  @$pb.TagNumber(3)
  set scriptConfig(CardanoScriptConfig value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasScriptConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearScriptConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  CardanoScriptConfig ensureScriptConfig() => $_ensure(2);
}

class CardanoSignTransactionRequest_Input extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_Input({
    $core.Iterable<$core.int>? keypath,
    $core.List<$core.int>? prevOutHash,
    $core.int? prevOutIndex,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    if (prevOutHash != null) result.prevOutHash = prevOutHash;
    if (prevOutIndex != null) result.prevOutIndex = prevOutIndex;
    return result;
  }

  CardanoSignTransactionRequest_Input._();

  factory CardanoSignTransactionRequest_Input.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_Input.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest.Input',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'prevOutHash', $pb.PbFieldType.OY)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'prevOutIndex', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Input clone() =>
      CardanoSignTransactionRequest_Input()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Input copyWith(
          void Function(CardanoSignTransactionRequest_Input) updates) =>
      super.copyWith((message) =>
              updates(message as CardanoSignTransactionRequest_Input))
          as CardanoSignTransactionRequest_Input;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Input create() =>
      CardanoSignTransactionRequest_Input._();
  @$core.override
  CardanoSignTransactionRequest_Input createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_Input> createRepeated() =>
      $pb.PbList<CardanoSignTransactionRequest_Input>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Input getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_Input>(create);
  static CardanoSignTransactionRequest_Input? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get prevOutHash => $_getN(1);
  @$pb.TagNumber(2)
  set prevOutHash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPrevOutHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevOutHash() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get prevOutIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set prevOutIndex($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPrevOutIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevOutIndex() => $_clearField(3);
}

class CardanoSignTransactionRequest_AssetGroup_Token
    extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_AssetGroup_Token({
    $core.List<$core.int>? assetName,
    $fixnum.Int64? value,
  }) {
    final result = create();
    if (assetName != null) result.assetName = assetName;
    if (value != null) result.value = value;
    return result;
  }

  CardanoSignTransactionRequest_AssetGroup_Token._();

  factory CardanoSignTransactionRequest_AssetGroup_Token.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_AssetGroup_Token.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest.AssetGroup.Token',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'assetName', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_AssetGroup_Token clone() =>
      CardanoSignTransactionRequest_AssetGroup_Token()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_AssetGroup_Token copyWith(
          void Function(CardanoSignTransactionRequest_AssetGroup_Token)
              updates) =>
      super.copyWith((message) => updates(
              message as CardanoSignTransactionRequest_AssetGroup_Token))
          as CardanoSignTransactionRequest_AssetGroup_Token;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_AssetGroup_Token create() =>
      CardanoSignTransactionRequest_AssetGroup_Token._();
  @$core.override
  CardanoSignTransactionRequest_AssetGroup_Token createEmptyInstance() =>
      create();
  static $pb.PbList<CardanoSignTransactionRequest_AssetGroup_Token>
      createRepeated() =>
          $pb.PbList<CardanoSignTransactionRequest_AssetGroup_Token>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_AssetGroup_Token getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_AssetGroup_Token>(create);
  static CardanoSignTransactionRequest_AssetGroup_Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get assetName => $_getN(0);
  @$pb.TagNumber(1)
  set assetName($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAssetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssetName() => $_clearField(1);

  /// Number of tokens transacted of this asset.
  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

/// https://github.com/input-output-hk/cardano-ledger/blob/d0aa86ded0b973b09b629e5aa62aa1e71364d088/eras/alonzo/test-suite/cddl-files/alonzo.cddl#L358
class CardanoSignTransactionRequest_AssetGroup extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_AssetGroup({
    $core.List<$core.int>? policyId,
    $core.Iterable<CardanoSignTransactionRequest_AssetGroup_Token>? tokens,
  }) {
    final result = create();
    if (policyId != null) result.policyId = policyId;
    if (tokens != null) result.tokens.addAll(tokens);
    return result;
  }

  CardanoSignTransactionRequest_AssetGroup._();

  factory CardanoSignTransactionRequest_AssetGroup.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_AssetGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest.AssetGroup',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'policyId', $pb.PbFieldType.OY)
    ..pc<CardanoSignTransactionRequest_AssetGroup_Token>(
        2, _omitFieldNames ? '' : 'tokens', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionRequest_AssetGroup_Token.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_AssetGroup clone() =>
      CardanoSignTransactionRequest_AssetGroup()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_AssetGroup copyWith(
          void Function(CardanoSignTransactionRequest_AssetGroup) updates) =>
      super.copyWith((message) =>
              updates(message as CardanoSignTransactionRequest_AssetGroup))
          as CardanoSignTransactionRequest_AssetGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_AssetGroup create() =>
      CardanoSignTransactionRequest_AssetGroup._();
  @$core.override
  CardanoSignTransactionRequest_AssetGroup createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_AssetGroup>
      createRepeated() =>
          $pb.PbList<CardanoSignTransactionRequest_AssetGroup>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_AssetGroup getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_AssetGroup>(create);
  static CardanoSignTransactionRequest_AssetGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get policyId => $_getN(0);
  @$pb.TagNumber(1)
  set policyId($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPolicyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<CardanoSignTransactionRequest_AssetGroup_Token> get tokens =>
      $_getList(1);
}

class CardanoSignTransactionRequest_Output extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_Output({
    $core.String? encodedAddress,
    $fixnum.Int64? value,
    CardanoScriptConfig? scriptConfig,
    $core.Iterable<CardanoSignTransactionRequest_AssetGroup>? assetGroups,
  }) {
    final result = create();
    if (encodedAddress != null) result.encodedAddress = encodedAddress;
    if (value != null) result.value = value;
    if (scriptConfig != null) result.scriptConfig = scriptConfig;
    if (assetGroups != null) result.assetGroups.addAll(assetGroups);
    return result;
  }

  CardanoSignTransactionRequest_Output._();

  factory CardanoSignTransactionRequest_Output.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_Output.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest.Output',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'encodedAddress')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<CardanoScriptConfig>(3, _omitFieldNames ? '' : 'scriptConfig',
        subBuilder: CardanoScriptConfig.create)
    ..pc<CardanoSignTransactionRequest_AssetGroup>(
        4, _omitFieldNames ? '' : 'assetGroups', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionRequest_AssetGroup.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Output clone() =>
      CardanoSignTransactionRequest_Output()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Output copyWith(
          void Function(CardanoSignTransactionRequest_Output) updates) =>
      super.copyWith((message) =>
              updates(message as CardanoSignTransactionRequest_Output))
          as CardanoSignTransactionRequest_Output;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Output create() =>
      CardanoSignTransactionRequest_Output._();
  @$core.override
  CardanoSignTransactionRequest_Output createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_Output> createRepeated() =>
      $pb.PbList<CardanoSignTransactionRequest_Output>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Output getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_Output>(create);
  static CardanoSignTransactionRequest_Output? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get encodedAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set encodedAddress($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEncodedAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncodedAddress() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  /// Optional. If provided, this is validated as a change output.
  @$pb.TagNumber(3)
  CardanoScriptConfig get scriptConfig => $_getN(2);
  @$pb.TagNumber(3)
  set scriptConfig(CardanoScriptConfig value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasScriptConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearScriptConfig() => $_clearField(3);
  @$pb.TagNumber(3)
  CardanoScriptConfig ensureScriptConfig() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<CardanoSignTransactionRequest_AssetGroup> get assetGroups =>
      $_getList(3);
}

class CardanoSignTransactionRequest_Certificate_StakeDelegation
    extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_Certificate_StakeDelegation({
    $core.Iterable<$core.int>? keypath,
    $core.List<$core.int>? poolKeyhash,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    if (poolKeyhash != null) result.poolKeyhash = poolKeyhash;
    return result;
  }

  CardanoSignTransactionRequest_Certificate_StakeDelegation._();

  factory CardanoSignTransactionRequest_Certificate_StakeDelegation.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_Certificate_StakeDelegation.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'CardanoSignTransactionRequest.Certificate.StakeDelegation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'poolKeyhash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Certificate_StakeDelegation clone() =>
      CardanoSignTransactionRequest_Certificate_StakeDelegation()
        ..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Certificate_StakeDelegation copyWith(
          void Function(
                  CardanoSignTransactionRequest_Certificate_StakeDelegation)
              updates) =>
      super.copyWith((message) => updates(message
              as CardanoSignTransactionRequest_Certificate_StakeDelegation))
          as CardanoSignTransactionRequest_Certificate_StakeDelegation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Certificate_StakeDelegation create() =>
      CardanoSignTransactionRequest_Certificate_StakeDelegation._();
  @$core.override
  CardanoSignTransactionRequest_Certificate_StakeDelegation
      createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_Certificate_StakeDelegation>
      createRepeated() => $pb.PbList<
          CardanoSignTransactionRequest_Certificate_StakeDelegation>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Certificate_StakeDelegation
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_Certificate_StakeDelegation>(create);
  static CardanoSignTransactionRequest_Certificate_StakeDelegation?
      _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get poolKeyhash => $_getN(1);
  @$pb.TagNumber(2)
  set poolKeyhash($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPoolKeyhash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoolKeyhash() => $_clearField(2);
}

class CardanoSignTransactionRequest_Certificate_VoteDelegation
    extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_Certificate_VoteDelegation({
    $core.Iterable<$core.int>? keypath,
    CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType?
        type,
    $core.List<$core.int>? drepCredhash,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    if (type != null) result.type = type;
    if (drepCredhash != null) result.drepCredhash = drepCredhash;
    return result;
  }

  CardanoSignTransactionRequest_Certificate_VoteDelegation._();

  factory CardanoSignTransactionRequest_Certificate_VoteDelegation.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_Certificate_VoteDelegation.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames
          ? ''
          : 'CardanoSignTransactionRequest.Certificate.VoteDelegation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..e<CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType>(
        2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker:
            CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
                .KEY_HASH,
        valueOf:
            CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
                .valueOf,
        enumValues:
            CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
                .values)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'drepCredhash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Certificate_VoteDelegation clone() =>
      CardanoSignTransactionRequest_Certificate_VoteDelegation()
        ..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Certificate_VoteDelegation copyWith(
          void Function(
                  CardanoSignTransactionRequest_Certificate_VoteDelegation)
              updates) =>
      super.copyWith((message) => updates(message
              as CardanoSignTransactionRequest_Certificate_VoteDelegation))
          as CardanoSignTransactionRequest_Certificate_VoteDelegation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Certificate_VoteDelegation create() =>
      CardanoSignTransactionRequest_Certificate_VoteDelegation._();
  @$core.override
  CardanoSignTransactionRequest_Certificate_VoteDelegation
      createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_Certificate_VoteDelegation>
      createRepeated() => $pb.PbList<
          CardanoSignTransactionRequest_Certificate_VoteDelegation>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Certificate_VoteDelegation
      getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_Certificate_VoteDelegation>(create);
  static CardanoSignTransactionRequest_Certificate_VoteDelegation?
      _defaultInstance;

  /// keypath in this instance refers to stake credential
  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);

  @$pb.TagNumber(2)
  CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
      get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(
          CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType
              value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get drepCredhash => $_getN(2);
  @$pb.TagNumber(3)
  set drepCredhash($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDrepCredhash() => $_has(2);
  @$pb.TagNumber(3)
  void clearDrepCredhash() => $_clearField(3);
}

enum CardanoSignTransactionRequest_Certificate_Cert {
  stakeRegistration,
  stakeDeregistration,
  stakeDelegation,
  voteDelegation,
  notSet
}

/// See https://github.com/IntersectMBO/cardano-ledger/blob/cardano-ledger-conway-1.12.0.0/eras/conway/impl/cddl-files/conway.cddl#L273
class CardanoSignTransactionRequest_Certificate extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_Certificate({
    $0.Keypath? stakeRegistration,
    $0.Keypath? stakeDeregistration,
    CardanoSignTransactionRequest_Certificate_StakeDelegation? stakeDelegation,
    CardanoSignTransactionRequest_Certificate_VoteDelegation? voteDelegation,
  }) {
    final result = create();
    if (stakeRegistration != null) result.stakeRegistration = stakeRegistration;
    if (stakeDeregistration != null)
      result.stakeDeregistration = stakeDeregistration;
    if (stakeDelegation != null) result.stakeDelegation = stakeDelegation;
    if (voteDelegation != null) result.voteDelegation = voteDelegation;
    return result;
  }

  CardanoSignTransactionRequest_Certificate._();

  factory CardanoSignTransactionRequest_Certificate.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_Certificate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, CardanoSignTransactionRequest_Certificate_Cert>
      _CardanoSignTransactionRequest_Certificate_CertByTag = {
    1: CardanoSignTransactionRequest_Certificate_Cert.stakeRegistration,
    2: CardanoSignTransactionRequest_Certificate_Cert.stakeDeregistration,
    3: CardanoSignTransactionRequest_Certificate_Cert.stakeDelegation,
    10: CardanoSignTransactionRequest_Certificate_Cert.voteDelegation,
    0: CardanoSignTransactionRequest_Certificate_Cert.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest.Certificate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 10])
    ..aOM<$0.Keypath>(1, _omitFieldNames ? '' : 'stakeRegistration',
        subBuilder: $0.Keypath.create)
    ..aOM<$0.Keypath>(2, _omitFieldNames ? '' : 'stakeDeregistration',
        subBuilder: $0.Keypath.create)
    ..aOM<CardanoSignTransactionRequest_Certificate_StakeDelegation>(
        3, _omitFieldNames ? '' : 'stakeDelegation',
        subBuilder:
            CardanoSignTransactionRequest_Certificate_StakeDelegation.create)
    ..aOM<CardanoSignTransactionRequest_Certificate_VoteDelegation>(
        10, _omitFieldNames ? '' : 'voteDelegation',
        subBuilder:
            CardanoSignTransactionRequest_Certificate_VoteDelegation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Certificate clone() =>
      CardanoSignTransactionRequest_Certificate()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Certificate copyWith(
          void Function(CardanoSignTransactionRequest_Certificate) updates) =>
      super.copyWith((message) =>
              updates(message as CardanoSignTransactionRequest_Certificate))
          as CardanoSignTransactionRequest_Certificate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Certificate create() =>
      CardanoSignTransactionRequest_Certificate._();
  @$core.override
  CardanoSignTransactionRequest_Certificate createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_Certificate>
      createRepeated() =>
          $pb.PbList<CardanoSignTransactionRequest_Certificate>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Certificate getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_Certificate>(create);
  static CardanoSignTransactionRequest_Certificate? _defaultInstance;

  CardanoSignTransactionRequest_Certificate_Cert whichCert() =>
      _CardanoSignTransactionRequest_Certificate_CertByTag[$_whichOneof(0)]!;
  void clearCert() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Keypath get stakeRegistration => $_getN(0);
  @$pb.TagNumber(1)
  set stakeRegistration($0.Keypath value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStakeRegistration() => $_has(0);
  @$pb.TagNumber(1)
  void clearStakeRegistration() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Keypath ensureStakeRegistration() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Keypath get stakeDeregistration => $_getN(1);
  @$pb.TagNumber(2)
  set stakeDeregistration($0.Keypath value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStakeDeregistration() => $_has(1);
  @$pb.TagNumber(2)
  void clearStakeDeregistration() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Keypath ensureStakeDeregistration() => $_ensure(1);

  @$pb.TagNumber(3)
  CardanoSignTransactionRequest_Certificate_StakeDelegation
      get stakeDelegation => $_getN(2);
  @$pb.TagNumber(3)
  set stakeDelegation(
          CardanoSignTransactionRequest_Certificate_StakeDelegation value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStakeDelegation() => $_has(2);
  @$pb.TagNumber(3)
  void clearStakeDelegation() => $_clearField(3);
  @$pb.TagNumber(3)
  CardanoSignTransactionRequest_Certificate_StakeDelegation
      ensureStakeDelegation() => $_ensure(2);

  @$pb.TagNumber(10)
  CardanoSignTransactionRequest_Certificate_VoteDelegation get voteDelegation =>
      $_getN(3);
  @$pb.TagNumber(10)
  set voteDelegation(
          CardanoSignTransactionRequest_Certificate_VoteDelegation value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasVoteDelegation() => $_has(3);
  @$pb.TagNumber(10)
  void clearVoteDelegation() => $_clearField(10);
  @$pb.TagNumber(10)
  CardanoSignTransactionRequest_Certificate_VoteDelegation
      ensureVoteDelegation() => $_ensure(3);
}

class CardanoSignTransactionRequest_Withdrawal extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest_Withdrawal({
    $core.Iterable<$core.int>? keypath,
    $fixnum.Int64? value,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    if (value != null) result.value = value;
    return result;
  }

  CardanoSignTransactionRequest_Withdrawal._();

  factory CardanoSignTransactionRequest_Withdrawal.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest_Withdrawal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest.Withdrawal',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Withdrawal clone() =>
      CardanoSignTransactionRequest_Withdrawal()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest_Withdrawal copyWith(
          void Function(CardanoSignTransactionRequest_Withdrawal) updates) =>
      super.copyWith((message) =>
              updates(message as CardanoSignTransactionRequest_Withdrawal))
          as CardanoSignTransactionRequest_Withdrawal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Withdrawal create() =>
      CardanoSignTransactionRequest_Withdrawal._();
  @$core.override
  CardanoSignTransactionRequest_Withdrawal createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest_Withdrawal>
      createRepeated() =>
          $pb.PbList<CardanoSignTransactionRequest_Withdrawal>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest_Withdrawal getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionRequest_Withdrawal>(create);
  static CardanoSignTransactionRequest_Withdrawal? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

/// Max allowed transaction size is 16384 bytes according to
/// https://github.com/cardano-foundation/CIPs/blob/master/CIP-0009/CIP-0009.md. Unlike with BTC, we
/// can fit the whole request in RAM and don't need to stream.
///
/// See also: https://github.com/input-output-hk/cardano-ledger-specs/blob/d0aa86ded0b973b09b629e5aa62aa1e71364d088/eras/alonzo/test-suite/cddl-files/alonzo.cddl#L50
class CardanoSignTransactionRequest extends $pb.GeneratedMessage {
  factory CardanoSignTransactionRequest({
    CardanoNetwork? network,
    $core.Iterable<CardanoSignTransactionRequest_Input>? inputs,
    $core.Iterable<CardanoSignTransactionRequest_Output>? outputs,
    $fixnum.Int64? fee,
    $fixnum.Int64? ttl,
    $core.Iterable<CardanoSignTransactionRequest_Certificate>? certificates,
    $core.Iterable<CardanoSignTransactionRequest_Withdrawal>? withdrawals,
    $fixnum.Int64? validityIntervalStart,
    $core.bool? allowZeroTtl,
    $core.bool? tagCborSets,
  }) {
    final result = create();
    if (network != null) result.network = network;
    if (inputs != null) result.inputs.addAll(inputs);
    if (outputs != null) result.outputs.addAll(outputs);
    if (fee != null) result.fee = fee;
    if (ttl != null) result.ttl = ttl;
    if (certificates != null) result.certificates.addAll(certificates);
    if (withdrawals != null) result.withdrawals.addAll(withdrawals);
    if (validityIntervalStart != null)
      result.validityIntervalStart = validityIntervalStart;
    if (allowZeroTtl != null) result.allowZeroTtl = allowZeroTtl;
    if (tagCborSets != null) result.tagCborSets = tagCborSets;
    return result;
  }

  CardanoSignTransactionRequest._();

  factory CardanoSignTransactionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<CardanoNetwork>(1, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE,
        defaultOrMaker: CardanoNetwork.CardanoMainnet,
        valueOf: CardanoNetwork.valueOf,
        enumValues: CardanoNetwork.values)
    ..pc<CardanoSignTransactionRequest_Input>(
        2, _omitFieldNames ? '' : 'inputs', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionRequest_Input.create)
    ..pc<CardanoSignTransactionRequest_Output>(
        3, _omitFieldNames ? '' : 'outputs', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionRequest_Output.create)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'ttl', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<CardanoSignTransactionRequest_Certificate>(
        6, _omitFieldNames ? '' : 'certificates', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionRequest_Certificate.create)
    ..pc<CardanoSignTransactionRequest_Withdrawal>(
        7, _omitFieldNames ? '' : 'withdrawals', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionRequest_Withdrawal.create)
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'validityIntervalStart', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(9, _omitFieldNames ? '' : 'allowZeroTtl')
    ..aOB(10, _omitFieldNames ? '' : 'tagCborSets')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest clone() =>
      CardanoSignTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionRequest copyWith(
          void Function(CardanoSignTransactionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CardanoSignTransactionRequest))
          as CardanoSignTransactionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest create() =>
      CardanoSignTransactionRequest._();
  @$core.override
  CardanoSignTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionRequest> createRepeated() =>
      $pb.PbList<CardanoSignTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoSignTransactionRequest>(create);
  static CardanoSignTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  CardanoNetwork get network => $_getN(0);
  @$pb.TagNumber(1)
  set network(CardanoNetwork value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetwork() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<CardanoSignTransactionRequest_Input> get inputs => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<CardanoSignTransactionRequest_Output> get outputs => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fee => $_getI64(3);
  @$pb.TagNumber(4)
  set fee($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFee() => $_has(3);
  @$pb.TagNumber(4)
  void clearFee() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get ttl => $_getI64(4);
  @$pb.TagNumber(5)
  set ttl($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTtl() => $_has(4);
  @$pb.TagNumber(5)
  void clearTtl() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<CardanoSignTransactionRequest_Certificate> get certificates =>
      $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<CardanoSignTransactionRequest_Withdrawal> get withdrawals =>
      $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get validityIntervalStart => $_getI64(7);
  @$pb.TagNumber(8)
  set validityIntervalStart($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasValidityIntervalStart() => $_has(7);
  @$pb.TagNumber(8)
  void clearValidityIntervalStart() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get allowZeroTtl => $_getBF(8);
  @$pb.TagNumber(9)
  set allowZeroTtl($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAllowZeroTtl() => $_has(8);
  @$pb.TagNumber(9)
  void clearAllowZeroTtl() => $_clearField(9);

  /// Tag arrays in the transaction serialization with the 258 tag.
  /// See https://github.com/IntersectMBO/cardano-ledger/blob/6e2d37cc0f47bd02e89b4ce9f78b59c35c958e96/eras/conway/impl/cddl-files/extra.cddl#L5
  @$pb.TagNumber(10)
  $core.bool get tagCborSets => $_getBF(9);
  @$pb.TagNumber(10)
  set tagCborSets($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTagCborSets() => $_has(9);
  @$pb.TagNumber(10)
  void clearTagCborSets() => $_clearField(10);
}

class CardanoSignTransactionResponse_ShelleyWitness
    extends $pb.GeneratedMessage {
  factory CardanoSignTransactionResponse_ShelleyWitness({
    $core.List<$core.int>? publicKey,
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (publicKey != null) result.publicKey = publicKey;
    if (signature != null) result.signature = signature;
    return result;
  }

  CardanoSignTransactionResponse_ShelleyWitness._();

  factory CardanoSignTransactionResponse_ShelleyWitness.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionResponse_ShelleyWitness.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionResponse.ShelleyWitness',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionResponse_ShelleyWitness clone() =>
      CardanoSignTransactionResponse_ShelleyWitness()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionResponse_ShelleyWitness copyWith(
          void Function(CardanoSignTransactionResponse_ShelleyWitness)
              updates) =>
      super.copyWith((message) =>
              updates(message as CardanoSignTransactionResponse_ShelleyWitness))
          as CardanoSignTransactionResponse_ShelleyWitness;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionResponse_ShelleyWitness create() =>
      CardanoSignTransactionResponse_ShelleyWitness._();
  @$core.override
  CardanoSignTransactionResponse_ShelleyWitness createEmptyInstance() =>
      create();
  static $pb.PbList<CardanoSignTransactionResponse_ShelleyWitness>
      createRepeated() =>
          $pb.PbList<CardanoSignTransactionResponse_ShelleyWitness>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionResponse_ShelleyWitness getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          CardanoSignTransactionResponse_ShelleyWitness>(create);
  static CardanoSignTransactionResponse_ShelleyWitness? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => $_clearField(2);
}

class CardanoSignTransactionResponse extends $pb.GeneratedMessage {
  factory CardanoSignTransactionResponse({
    $core.Iterable<CardanoSignTransactionResponse_ShelleyWitness>?
        shelleyWitnesses,
  }) {
    final result = create();
    if (shelleyWitnesses != null)
      result.shelleyWitnesses.addAll(shelleyWitnesses);
    return result;
  }

  CardanoSignTransactionResponse._();

  factory CardanoSignTransactionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoSignTransactionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoSignTransactionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..pc<CardanoSignTransactionResponse_ShelleyWitness>(
        1, _omitFieldNames ? '' : 'shelleyWitnesses', $pb.PbFieldType.PM,
        subBuilder: CardanoSignTransactionResponse_ShelleyWitness.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionResponse clone() =>
      CardanoSignTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoSignTransactionResponse copyWith(
          void Function(CardanoSignTransactionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CardanoSignTransactionResponse))
          as CardanoSignTransactionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionResponse create() =>
      CardanoSignTransactionResponse._();
  @$core.override
  CardanoSignTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<CardanoSignTransactionResponse> createRepeated() =>
      $pb.PbList<CardanoSignTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static CardanoSignTransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoSignTransactionResponse>(create);
  static CardanoSignTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CardanoSignTransactionResponse_ShelleyWitness>
      get shelleyWitnesses => $_getList(0);
}

enum CardanoRequest_Request { xpubs, address, signTransaction, notSet }

class CardanoRequest extends $pb.GeneratedMessage {
  factory CardanoRequest({
    CardanoXpubsRequest? xpubs,
    CardanoAddressRequest? address,
    CardanoSignTransactionRequest? signTransaction,
  }) {
    final result = create();
    if (xpubs != null) result.xpubs = xpubs;
    if (address != null) result.address = address;
    if (signTransaction != null) result.signTransaction = signTransaction;
    return result;
  }

  CardanoRequest._();

  factory CardanoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CardanoRequest_Request>
      _CardanoRequest_RequestByTag = {
    1: CardanoRequest_Request.xpubs,
    2: CardanoRequest_Request.address,
    3: CardanoRequest_Request.signTransaction,
    0: CardanoRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CardanoXpubsRequest>(1, _omitFieldNames ? '' : 'xpubs',
        subBuilder: CardanoXpubsRequest.create)
    ..aOM<CardanoAddressRequest>(2, _omitFieldNames ? '' : 'address',
        subBuilder: CardanoAddressRequest.create)
    ..aOM<CardanoSignTransactionRequest>(
        3, _omitFieldNames ? '' : 'signTransaction',
        subBuilder: CardanoSignTransactionRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoRequest clone() => CardanoRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoRequest copyWith(void Function(CardanoRequest) updates) =>
      super.copyWith((message) => updates(message as CardanoRequest))
          as CardanoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoRequest create() => CardanoRequest._();
  @$core.override
  CardanoRequest createEmptyInstance() => create();
  static $pb.PbList<CardanoRequest> createRepeated() =>
      $pb.PbList<CardanoRequest>();
  @$core.pragma('dart2js:noInline')
  static CardanoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoRequest>(create);
  static CardanoRequest? _defaultInstance;

  CardanoRequest_Request whichRequest() =>
      _CardanoRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CardanoXpubsRequest get xpubs => $_getN(0);
  @$pb.TagNumber(1)
  set xpubs(CardanoXpubsRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasXpubs() => $_has(0);
  @$pb.TagNumber(1)
  void clearXpubs() => $_clearField(1);
  @$pb.TagNumber(1)
  CardanoXpubsRequest ensureXpubs() => $_ensure(0);

  @$pb.TagNumber(2)
  CardanoAddressRequest get address => $_getN(1);
  @$pb.TagNumber(2)
  set address(CardanoAddressRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => $_clearField(2);
  @$pb.TagNumber(2)
  CardanoAddressRequest ensureAddress() => $_ensure(1);

  @$pb.TagNumber(3)
  CardanoSignTransactionRequest get signTransaction => $_getN(2);
  @$pb.TagNumber(3)
  set signTransaction(CardanoSignTransactionRequest value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSignTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignTransaction() => $_clearField(3);
  @$pb.TagNumber(3)
  CardanoSignTransactionRequest ensureSignTransaction() => $_ensure(2);
}

enum CardanoResponse_Response { xpubs, pub, signTransaction, notSet }

class CardanoResponse extends $pb.GeneratedMessage {
  factory CardanoResponse({
    CardanoXpubsResponse? xpubs,
    $0.PubResponse? pub,
    CardanoSignTransactionResponse? signTransaction,
  }) {
    final result = create();
    if (xpubs != null) result.xpubs = xpubs;
    if (pub != null) result.pub = pub;
    if (signTransaction != null) result.signTransaction = signTransaction;
    return result;
  }

  CardanoResponse._();

  factory CardanoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CardanoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, CardanoResponse_Response>
      _CardanoResponse_ResponseByTag = {
    1: CardanoResponse_Response.xpubs,
    2: CardanoResponse_Response.pub,
    3: CardanoResponse_Response.signTransaction,
    0: CardanoResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CardanoResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CardanoXpubsResponse>(1, _omitFieldNames ? '' : 'xpubs',
        subBuilder: CardanoXpubsResponse.create)
    ..aOM<$0.PubResponse>(2, _omitFieldNames ? '' : 'pub',
        subBuilder: $0.PubResponse.create)
    ..aOM<CardanoSignTransactionResponse>(
        3, _omitFieldNames ? '' : 'signTransaction',
        subBuilder: CardanoSignTransactionResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoResponse clone() => CardanoResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardanoResponse copyWith(void Function(CardanoResponse) updates) =>
      super.copyWith((message) => updates(message as CardanoResponse))
          as CardanoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardanoResponse create() => CardanoResponse._();
  @$core.override
  CardanoResponse createEmptyInstance() => create();
  static $pb.PbList<CardanoResponse> createRepeated() =>
      $pb.PbList<CardanoResponse>();
  @$core.pragma('dart2js:noInline')
  static CardanoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CardanoResponse>(create);
  static CardanoResponse? _defaultInstance;

  CardanoResponse_Response whichResponse() =>
      _CardanoResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CardanoXpubsResponse get xpubs => $_getN(0);
  @$pb.TagNumber(1)
  set xpubs(CardanoXpubsResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasXpubs() => $_has(0);
  @$pb.TagNumber(1)
  void clearXpubs() => $_clearField(1);
  @$pb.TagNumber(1)
  CardanoXpubsResponse ensureXpubs() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.PubResponse get pub => $_getN(1);
  @$pb.TagNumber(2)
  set pub($0.PubResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPub() => $_has(1);
  @$pb.TagNumber(2)
  void clearPub() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.PubResponse ensurePub() => $_ensure(1);

  @$pb.TagNumber(3)
  CardanoSignTransactionResponse get signTransaction => $_getN(2);
  @$pb.TagNumber(3)
  set signTransaction(CardanoSignTransactionResponse value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSignTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignTransaction() => $_clearField(3);
  @$pb.TagNumber(3)
  CardanoSignTransactionResponse ensureSignTransaction() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
