// This is a generated file - do not edit.
//
// Generated from btc.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'antiklepto.pb.dart' as $1;
import 'btc.pbenum.dart';
import 'common.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'btc.pbenum.dart';

class BTCScriptConfig_Multisig extends $pb.GeneratedMessage {
  factory BTCScriptConfig_Multisig({
    $core.int? threshold,
    $core.Iterable<$0.XPub>? xpubs,
    $core.int? ourXpubIndex,
    BTCScriptConfig_Multisig_ScriptType? scriptType,
  }) {
    final result = create();
    if (threshold != null) result.threshold = threshold;
    if (xpubs != null) result.xpubs.addAll(xpubs);
    if (ourXpubIndex != null) result.ourXpubIndex = ourXpubIndex;
    if (scriptType != null) result.scriptType = scriptType;
    return result;
  }

  BTCScriptConfig_Multisig._();

  factory BTCScriptConfig_Multisig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCScriptConfig_Multisig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCScriptConfig.Multisig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU3)
    ..pc<$0.XPub>(2, _omitFieldNames ? '' : 'xpubs', $pb.PbFieldType.PM,
        subBuilder: $0.XPub.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'ourXpubIndex', $pb.PbFieldType.OU3)
    ..e<BTCScriptConfig_Multisig_ScriptType>(
        4, _omitFieldNames ? '' : 'scriptType', $pb.PbFieldType.OE,
        defaultOrMaker: BTCScriptConfig_Multisig_ScriptType.P2WSH,
        valueOf: BTCScriptConfig_Multisig_ScriptType.valueOf,
        enumValues: BTCScriptConfig_Multisig_ScriptType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfig_Multisig clone() =>
      BTCScriptConfig_Multisig()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfig_Multisig copyWith(
          void Function(BTCScriptConfig_Multisig) updates) =>
      super.copyWith((message) => updates(message as BTCScriptConfig_Multisig))
          as BTCScriptConfig_Multisig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCScriptConfig_Multisig create() => BTCScriptConfig_Multisig._();
  @$core.override
  BTCScriptConfig_Multisig createEmptyInstance() => create();
  static $pb.PbList<BTCScriptConfig_Multisig> createRepeated() =>
      $pb.PbList<BTCScriptConfig_Multisig>();
  @$core.pragma('dart2js:noInline')
  static BTCScriptConfig_Multisig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCScriptConfig_Multisig>(create);
  static BTCScriptConfig_Multisig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get threshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set threshold($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreshold() => $_clearField(1);

  /// xpubs are acount-level xpubs. Addresses are going to be derived from it using: `m/<change>/<receive>`.
  /// The number of xpubs defines the number of cosigners.
  @$pb.TagNumber(2)
  $pb.PbList<$0.XPub> get xpubs => $_getList(1);

  /// Index to the xpub of our keystore in xpubs. The keypath to it is provided via
  /// BTCPubRequest/BTCSignInit.
  @$pb.TagNumber(3)
  $core.int get ourXpubIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set ourXpubIndex($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOurXpubIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearOurXpubIndex() => $_clearField(3);

  @$pb.TagNumber(4)
  BTCScriptConfig_Multisig_ScriptType get scriptType => $_getN(3);
  @$pb.TagNumber(4)
  set scriptType(BTCScriptConfig_Multisig_ScriptType value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasScriptType() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptType() => $_clearField(4);
}

/// A policy as specified by 'Wallet policies':
/// https://github.com/bitcoin/bips/pull/1389
class BTCScriptConfig_Policy extends $pb.GeneratedMessage {
  factory BTCScriptConfig_Policy({
    $core.String? policy,
    $core.Iterable<$0.KeyOriginInfo>? keys,
  }) {
    final result = create();
    if (policy != null) result.policy = policy;
    if (keys != null) result.keys.addAll(keys);
    return result;
  }

  BTCScriptConfig_Policy._();

  factory BTCScriptConfig_Policy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCScriptConfig_Policy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCScriptConfig.Policy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policy')
    ..pc<$0.KeyOriginInfo>(2, _omitFieldNames ? '' : 'keys', $pb.PbFieldType.PM,
        subBuilder: $0.KeyOriginInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfig_Policy clone() =>
      BTCScriptConfig_Policy()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfig_Policy copyWith(
          void Function(BTCScriptConfig_Policy) updates) =>
      super.copyWith((message) => updates(message as BTCScriptConfig_Policy))
          as BTCScriptConfig_Policy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCScriptConfig_Policy create() => BTCScriptConfig_Policy._();
  @$core.override
  BTCScriptConfig_Policy createEmptyInstance() => create();
  static $pb.PbList<BTCScriptConfig_Policy> createRepeated() =>
      $pb.PbList<BTCScriptConfig_Policy>();
  @$core.pragma('dart2js:noInline')
  static BTCScriptConfig_Policy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCScriptConfig_Policy>(create);
  static BTCScriptConfig_Policy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policy => $_getSZ(0);
  @$pb.TagNumber(1)
  set policy($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPolicy() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicy() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.KeyOriginInfo> get keys => $_getList(1);
}

enum BTCScriptConfig_Config { simpleType, multisig, policy, notSet }

class BTCScriptConfig extends $pb.GeneratedMessage {
  factory BTCScriptConfig({
    BTCScriptConfig_SimpleType? simpleType,
    BTCScriptConfig_Multisig? multisig,
    BTCScriptConfig_Policy? policy,
  }) {
    final result = create();
    if (simpleType != null) result.simpleType = simpleType;
    if (multisig != null) result.multisig = multisig;
    if (policy != null) result.policy = policy;
    return result;
  }

  BTCScriptConfig._();

  factory BTCScriptConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCScriptConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BTCScriptConfig_Config>
      _BTCScriptConfig_ConfigByTag = {
    1: BTCScriptConfig_Config.simpleType,
    2: BTCScriptConfig_Config.multisig,
    3: BTCScriptConfig_Config.policy,
    0: BTCScriptConfig_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCScriptConfig',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..e<BTCScriptConfig_SimpleType>(
        1, _omitFieldNames ? '' : 'simpleType', $pb.PbFieldType.OE,
        defaultOrMaker: BTCScriptConfig_SimpleType.P2WPKH_P2SH,
        valueOf: BTCScriptConfig_SimpleType.valueOf,
        enumValues: BTCScriptConfig_SimpleType.values)
    ..aOM<BTCScriptConfig_Multisig>(2, _omitFieldNames ? '' : 'multisig',
        subBuilder: BTCScriptConfig_Multisig.create)
    ..aOM<BTCScriptConfig_Policy>(3, _omitFieldNames ? '' : 'policy',
        subBuilder: BTCScriptConfig_Policy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfig clone() => BTCScriptConfig()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfig copyWith(void Function(BTCScriptConfig) updates) =>
      super.copyWith((message) => updates(message as BTCScriptConfig))
          as BTCScriptConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCScriptConfig create() => BTCScriptConfig._();
  @$core.override
  BTCScriptConfig createEmptyInstance() => create();
  static $pb.PbList<BTCScriptConfig> createRepeated() =>
      $pb.PbList<BTCScriptConfig>();
  @$core.pragma('dart2js:noInline')
  static BTCScriptConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCScriptConfig>(create);
  static BTCScriptConfig? _defaultInstance;

  BTCScriptConfig_Config whichConfig() =>
      _BTCScriptConfig_ConfigByTag[$_whichOneof(0)]!;
  void clearConfig() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BTCScriptConfig_SimpleType get simpleType => $_getN(0);
  @$pb.TagNumber(1)
  set simpleType(BTCScriptConfig_SimpleType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSimpleType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSimpleType() => $_clearField(1);

  @$pb.TagNumber(2)
  BTCScriptConfig_Multisig get multisig => $_getN(1);
  @$pb.TagNumber(2)
  set multisig(BTCScriptConfig_Multisig value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMultisig() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultisig() => $_clearField(2);
  @$pb.TagNumber(2)
  BTCScriptConfig_Multisig ensureMultisig() => $_ensure(1);

  @$pb.TagNumber(3)
  BTCScriptConfig_Policy get policy => $_getN(2);
  @$pb.TagNumber(3)
  set policy(BTCScriptConfig_Policy value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPolicy() => $_has(2);
  @$pb.TagNumber(3)
  void clearPolicy() => $_clearField(3);
  @$pb.TagNumber(3)
  BTCScriptConfig_Policy ensurePolicy() => $_ensure(2);
}

enum BTCPubRequest_Output { xpubType, scriptConfig, notSet }

class BTCPubRequest extends $pb.GeneratedMessage {
  factory BTCPubRequest({
    BTCCoin? coin,
    $core.Iterable<$core.int>? keypath,
    BTCPubRequest_XPubType? xpubType,
    BTCScriptConfig? scriptConfig,
    $core.bool? display,
  }) {
    final result = create();
    if (coin != null) result.coin = coin;
    if (keypath != null) result.keypath.addAll(keypath);
    if (xpubType != null) result.xpubType = xpubType;
    if (scriptConfig != null) result.scriptConfig = scriptConfig;
    if (display != null) result.display = display;
    return result;
  }

  BTCPubRequest._();

  factory BTCPubRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPubRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BTCPubRequest_Output>
      _BTCPubRequest_OutputByTag = {
    3: BTCPubRequest_Output.xpubType,
    4: BTCPubRequest_Output.scriptConfig,
    0: BTCPubRequest_Output.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPubRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..e<BTCCoin>(1, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: BTCCoin.BTC,
        valueOf: BTCCoin.valueOf,
        enumValues: BTCCoin.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..e<BTCPubRequest_XPubType>(
        3, _omitFieldNames ? '' : 'xpubType', $pb.PbFieldType.OE,
        defaultOrMaker: BTCPubRequest_XPubType.TPUB,
        valueOf: BTCPubRequest_XPubType.valueOf,
        enumValues: BTCPubRequest_XPubType.values)
    ..aOM<BTCScriptConfig>(4, _omitFieldNames ? '' : 'scriptConfig',
        subBuilder: BTCScriptConfig.create)
    ..aOB(5, _omitFieldNames ? '' : 'display')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPubRequest clone() => BTCPubRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPubRequest copyWith(void Function(BTCPubRequest) updates) =>
      super.copyWith((message) => updates(message as BTCPubRequest))
          as BTCPubRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPubRequest create() => BTCPubRequest._();
  @$core.override
  BTCPubRequest createEmptyInstance() => create();
  static $pb.PbList<BTCPubRequest> createRepeated() =>
      $pb.PbList<BTCPubRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCPubRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCPubRequest>(create);
  static BTCPubRequest? _defaultInstance;

  BTCPubRequest_Output whichOutput() =>
      _BTCPubRequest_OutputByTag[$_whichOneof(0)]!;
  void clearOutput() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BTCCoin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin(BTCCoin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypath => $_getList(1);

  @$pb.TagNumber(3)
  BTCPubRequest_XPubType get xpubType => $_getN(2);
  @$pb.TagNumber(3)
  set xpubType(BTCPubRequest_XPubType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasXpubType() => $_has(2);
  @$pb.TagNumber(3)
  void clearXpubType() => $_clearField(3);

  @$pb.TagNumber(4)
  BTCScriptConfig get scriptConfig => $_getN(3);
  @$pb.TagNumber(4)
  set scriptConfig(BTCScriptConfig value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasScriptConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearScriptConfig() => $_clearField(4);
  @$pb.TagNumber(4)
  BTCScriptConfig ensureScriptConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get display => $_getBF(4);
  @$pb.TagNumber(5)
  set display($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDisplay() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisplay() => $_clearField(5);
}

class BTCScriptConfigWithKeypath extends $pb.GeneratedMessage {
  factory BTCScriptConfigWithKeypath({
    BTCScriptConfig? scriptConfig,
    $core.Iterable<$core.int>? keypath,
  }) {
    final result = create();
    if (scriptConfig != null) result.scriptConfig = scriptConfig;
    if (keypath != null) result.keypath.addAll(keypath);
    return result;
  }

  BTCScriptConfigWithKeypath._();

  factory BTCScriptConfigWithKeypath.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCScriptConfigWithKeypath.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCScriptConfigWithKeypath',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOM<BTCScriptConfig>(2, _omitFieldNames ? '' : 'scriptConfig',
        subBuilder: BTCScriptConfig.create)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfigWithKeypath clone() =>
      BTCScriptConfigWithKeypath()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfigWithKeypath copyWith(
          void Function(BTCScriptConfigWithKeypath) updates) =>
      super.copyWith(
              (message) => updates(message as BTCScriptConfigWithKeypath))
          as BTCScriptConfigWithKeypath;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCScriptConfigWithKeypath create() => BTCScriptConfigWithKeypath._();
  @$core.override
  BTCScriptConfigWithKeypath createEmptyInstance() => create();
  static $pb.PbList<BTCScriptConfigWithKeypath> createRepeated() =>
      $pb.PbList<BTCScriptConfigWithKeypath>();
  @$core.pragma('dart2js:noInline')
  static BTCScriptConfigWithKeypath getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCScriptConfigWithKeypath>(create);
  static BTCScriptConfigWithKeypath? _defaultInstance;

  @$pb.TagNumber(2)
  BTCScriptConfig get scriptConfig => $_getN(0);
  @$pb.TagNumber(2)
  set scriptConfig(BTCScriptConfig value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScriptConfig() => $_has(0);
  @$pb.TagNumber(2)
  void clearScriptConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  BTCScriptConfig ensureScriptConfig() => $_ensure(0);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get keypath => $_getList(1);
}

class BTCSignInitRequest extends $pb.GeneratedMessage {
  factory BTCSignInitRequest({
    BTCCoin? coin,
    $core.Iterable<BTCScriptConfigWithKeypath>? scriptConfigs,
    $core.int? version,
    $core.int? numInputs,
    $core.int? numOutputs,
    $core.int? locktime,
    BTCSignInitRequest_FormatUnit? formatUnit,
    $core.bool? containsSilentPaymentOutputs,
    $core.Iterable<BTCScriptConfigWithKeypath>? outputScriptConfigs,
  }) {
    final result = create();
    if (coin != null) result.coin = coin;
    if (scriptConfigs != null) result.scriptConfigs.addAll(scriptConfigs);
    if (version != null) result.version = version;
    if (numInputs != null) result.numInputs = numInputs;
    if (numOutputs != null) result.numOutputs = numOutputs;
    if (locktime != null) result.locktime = locktime;
    if (formatUnit != null) result.formatUnit = formatUnit;
    if (containsSilentPaymentOutputs != null)
      result.containsSilentPaymentOutputs = containsSilentPaymentOutputs;
    if (outputScriptConfigs != null)
      result.outputScriptConfigs.addAll(outputScriptConfigs);
    return result;
  }

  BTCSignInitRequest._();

  factory BTCSignInitRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignInitRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignInitRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<BTCCoin>(1, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: BTCCoin.BTC,
        valueOf: BTCCoin.valueOf,
        enumValues: BTCCoin.values)
    ..pc<BTCScriptConfigWithKeypath>(
        2, _omitFieldNames ? '' : 'scriptConfigs', $pb.PbFieldType.PM,
        subBuilder: BTCScriptConfigWithKeypath.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'numInputs', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'numOutputs', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'locktime', $pb.PbFieldType.OU3)
    ..e<BTCSignInitRequest_FormatUnit>(
        8, _omitFieldNames ? '' : 'formatUnit', $pb.PbFieldType.OE,
        defaultOrMaker: BTCSignInitRequest_FormatUnit.DEFAULT,
        valueOf: BTCSignInitRequest_FormatUnit.valueOf,
        enumValues: BTCSignInitRequest_FormatUnit.values)
    ..aOB(9, _omitFieldNames ? '' : 'containsSilentPaymentOutputs')
    ..pc<BTCScriptConfigWithKeypath>(
        10, _omitFieldNames ? '' : 'outputScriptConfigs', $pb.PbFieldType.PM,
        subBuilder: BTCScriptConfigWithKeypath.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignInitRequest clone() => BTCSignInitRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignInitRequest copyWith(void Function(BTCSignInitRequest) updates) =>
      super.copyWith((message) => updates(message as BTCSignInitRequest))
          as BTCSignInitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignInitRequest create() => BTCSignInitRequest._();
  @$core.override
  BTCSignInitRequest createEmptyInstance() => create();
  static $pb.PbList<BTCSignInitRequest> createRepeated() =>
      $pb.PbList<BTCSignInitRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCSignInitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignInitRequest>(create);
  static BTCSignInitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BTCCoin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin(BTCCoin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => $_clearField(1);

  /// used script configs in inputs and changes
  @$pb.TagNumber(2)
  $pb.PbList<BTCScriptConfigWithKeypath> get scriptConfigs => $_getList(1);

  @$pb.TagNumber(4)
  $core.int get version => $_getIZ(2);
  @$pb.TagNumber(4)
  set version($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get numInputs => $_getIZ(3);
  @$pb.TagNumber(5)
  set numInputs($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(5)
  $core.bool hasNumInputs() => $_has(3);
  @$pb.TagNumber(5)
  void clearNumInputs() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get numOutputs => $_getIZ(4);
  @$pb.TagNumber(6)
  set numOutputs($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(6)
  $core.bool hasNumOutputs() => $_has(4);
  @$pb.TagNumber(6)
  void clearNumOutputs() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get locktime => $_getIZ(5);
  @$pb.TagNumber(7)
  set locktime($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasLocktime() => $_has(5);
  @$pb.TagNumber(7)
  void clearLocktime() => $_clearField(7);

  @$pb.TagNumber(8)
  BTCSignInitRequest_FormatUnit get formatUnit => $_getN(6);
  @$pb.TagNumber(8)
  set formatUnit(BTCSignInitRequest_FormatUnit value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasFormatUnit() => $_has(6);
  @$pb.TagNumber(8)
  void clearFormatUnit() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get containsSilentPaymentOutputs => $_getBF(7);
  @$pb.TagNumber(9)
  set containsSilentPaymentOutputs($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(9)
  $core.bool hasContainsSilentPaymentOutputs() => $_has(7);
  @$pb.TagNumber(9)
  void clearContainsSilentPaymentOutputs() => $_clearField(9);

  /// used script configs for outputs that send to an address of the same keystore, but not
  /// necessarily the same account (as defined by `script_configs` above).
  @$pb.TagNumber(10)
  $pb.PbList<BTCScriptConfigWithKeypath> get outputScriptConfigs =>
      $_getList(8);
}

class BTCSignNextResponse extends $pb.GeneratedMessage {
  factory BTCSignNextResponse({
    BTCSignNextResponse_Type? type,
    $core.int? index,
    $core.bool? hasSignature,
    $core.List<$core.int>? signature_4,
    $core.int? prevIndex,
    $1.AntiKleptoSignerCommitment? antiKleptoSignerCommitment,
    $core.List<$core.int>? generatedOutputPkscript,
    $core.List<$core.int>? silentPaymentDleqProof,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (index != null) result.index = index;
    if (hasSignature != null) result.hasSignature = hasSignature;
    if (signature_4 != null) result.signature_4 = signature_4;
    if (prevIndex != null) result.prevIndex = prevIndex;
    if (antiKleptoSignerCommitment != null)
      result.antiKleptoSignerCommitment = antiKleptoSignerCommitment;
    if (generatedOutputPkscript != null)
      result.generatedOutputPkscript = generatedOutputPkscript;
    if (silentPaymentDleqProof != null)
      result.silentPaymentDleqProof = silentPaymentDleqProof;
    return result;
  }

  BTCSignNextResponse._();

  factory BTCSignNextResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignNextResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignNextResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<BTCSignNextResponse_Type>(
        1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: BTCSignNextResponse_Type.INPUT,
        valueOf: BTCSignNextResponse_Type.valueOf,
        enumValues: BTCSignNextResponse_Type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'hasSignature')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'prevIndex', $pb.PbFieldType.OU3)
    ..aOM<$1.AntiKleptoSignerCommitment>(
        6, _omitFieldNames ? '' : 'antiKleptoSignerCommitment',
        subBuilder: $1.AntiKleptoSignerCommitment.create)
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'generatedOutputPkscript', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'silentPaymentDleqProof', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignNextResponse clone() => BTCSignNextResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignNextResponse copyWith(void Function(BTCSignNextResponse) updates) =>
      super.copyWith((message) => updates(message as BTCSignNextResponse))
          as BTCSignNextResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignNextResponse create() => BTCSignNextResponse._();
  @$core.override
  BTCSignNextResponse createEmptyInstance() => create();
  static $pb.PbList<BTCSignNextResponse> createRepeated() =>
      $pb.PbList<BTCSignNextResponse>();
  @$core.pragma('dart2js:noInline')
  static BTCSignNextResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignNextResponse>(create);
  static BTCSignNextResponse? _defaultInstance;

  @$pb.TagNumber(1)
  BTCSignNextResponse_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(BTCSignNextResponse_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// index of the current input or output
  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get hasSignature => $_getBF(2);
  @$pb.TagNumber(3)
  set hasSignature($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHasSignature() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasSignature() => $_clearField(3);

  /// 64 bytes (32 bytes big endian R, 32 bytes big endian S). Only if has_signature is true.
  @$pb.TagNumber(4)
  $core.List<$core.int> get signature_4 => $_getN(3);
  @$pb.TagNumber(4)
  set signature_4($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSignature_4() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignature_4() => $_clearField(4);

  /// Previous tx's input/output index in case of PREV_INPUT or PREV_OUTPUT, for the input at `index`.
  @$pb.TagNumber(5)
  $core.int get prevIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set prevIndex($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPrevIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrevIndex() => $_clearField(5);

  @$pb.TagNumber(6)
  $1.AntiKleptoSignerCommitment get antiKleptoSignerCommitment => $_getN(5);
  @$pb.TagNumber(6)
  set antiKleptoSignerCommitment($1.AntiKleptoSignerCommitment value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAntiKleptoSignerCommitment() => $_has(5);
  @$pb.TagNumber(6)
  void clearAntiKleptoSignerCommitment() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.AntiKleptoSignerCommitment ensureAntiKleptoSignerCommitment() =>
      $_ensure(5);

  /// Generated output. The host *must* verify its correctness using `silent_payment_dleq_proof`.
  @$pb.TagNumber(7)
  $core.List<$core.int> get generatedOutputPkscript => $_getN(6);
  @$pb.TagNumber(7)
  set generatedOutputPkscript($core.List<$core.int> value) =>
      $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGeneratedOutputPkscript() => $_has(6);
  @$pb.TagNumber(7)
  void clearGeneratedOutputPkscript() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get silentPaymentDleqProof => $_getN(7);
  @$pb.TagNumber(8)
  set silentPaymentDleqProof($core.List<$core.int> value) =>
      $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSilentPaymentDleqProof() => $_has(7);
  @$pb.TagNumber(8)
  void clearSilentPaymentDleqProof() => $_clearField(8);
}

class BTCSignInputRequest extends $pb.GeneratedMessage {
  factory BTCSignInputRequest({
    $core.List<$core.int>? prevOutHash,
    $core.int? prevOutIndex,
    $fixnum.Int64? prevOutValue,
    $core.int? sequence,
    $core.Iterable<$core.int>? keypath,
    $core.int? scriptConfigIndex,
    $1.AntiKleptoHostNonceCommitment? hostNonceCommitment,
  }) {
    final result = create();
    if (prevOutHash != null) result.prevOutHash = prevOutHash;
    if (prevOutIndex != null) result.prevOutIndex = prevOutIndex;
    if (prevOutValue != null) result.prevOutValue = prevOutValue;
    if (sequence != null) result.sequence = sequence;
    if (keypath != null) result.keypath.addAll(keypath);
    if (scriptConfigIndex != null) result.scriptConfigIndex = scriptConfigIndex;
    if (hostNonceCommitment != null)
      result.hostNonceCommitment = hostNonceCommitment;
    return result;
  }

  BTCSignInputRequest._();

  factory BTCSignInputRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignInputRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignInputRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'prevOutHash', $pb.PbFieldType.OY,
        protoName: 'prevOutHash')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'prevOutIndex', $pb.PbFieldType.OU3,
        protoName: 'prevOutIndex')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'prevOutValue', $pb.PbFieldType.OU6,
        protoName: 'prevOutValue', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sequence', $pb.PbFieldType.OU3)
    ..p<$core.int>(6, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'scriptConfigIndex', $pb.PbFieldType.OU3)
    ..aOM<$1.AntiKleptoHostNonceCommitment>(
        8, _omitFieldNames ? '' : 'hostNonceCommitment',
        subBuilder: $1.AntiKleptoHostNonceCommitment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignInputRequest clone() => BTCSignInputRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignInputRequest copyWith(void Function(BTCSignInputRequest) updates) =>
      super.copyWith((message) => updates(message as BTCSignInputRequest))
          as BTCSignInputRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignInputRequest create() => BTCSignInputRequest._();
  @$core.override
  BTCSignInputRequest createEmptyInstance() => create();
  static $pb.PbList<BTCSignInputRequest> createRepeated() =>
      $pb.PbList<BTCSignInputRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCSignInputRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignInputRequest>(create);
  static BTCSignInputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get prevOutHash => $_getN(0);
  @$pb.TagNumber(1)
  set prevOutHash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrevOutHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrevOutHash() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get prevOutIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set prevOutIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPrevOutIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevOutIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get prevOutValue => $_getI64(2);
  @$pb.TagNumber(3)
  set prevOutValue($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPrevOutValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevOutValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sequence => $_getIZ(3);
  @$pb.TagNumber(4)
  set sequence($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequence() => $_clearField(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get keypath => $_getList(4);

  /// References a script config from BTCSignInitRequest
  @$pb.TagNumber(7)
  $core.int get scriptConfigIndex => $_getIZ(5);
  @$pb.TagNumber(7)
  set scriptConfigIndex($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasScriptConfigIndex() => $_has(5);
  @$pb.TagNumber(7)
  void clearScriptConfigIndex() => $_clearField(7);

  @$pb.TagNumber(8)
  $1.AntiKleptoHostNonceCommitment get hostNonceCommitment => $_getN(6);
  @$pb.TagNumber(8)
  set hostNonceCommitment($1.AntiKleptoHostNonceCommitment value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHostNonceCommitment() => $_has(6);
  @$pb.TagNumber(8)
  void clearHostNonceCommitment() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.AntiKleptoHostNonceCommitment ensureHostNonceCommitment() => $_ensure(6);
}

/// https://github.com/bitcoin/bips/blob/master/bip-0352.mediawiki
class BTCSignOutputRequest_SilentPayment extends $pb.GeneratedMessage {
  factory BTCSignOutputRequest_SilentPayment({
    $core.String? address,
  }) {
    final result = create();
    if (address != null) result.address = address;
    return result;
  }

  BTCSignOutputRequest_SilentPayment._();

  factory BTCSignOutputRequest_SilentPayment.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignOutputRequest_SilentPayment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignOutputRequest.SilentPayment',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignOutputRequest_SilentPayment clone() =>
      BTCSignOutputRequest_SilentPayment()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignOutputRequest_SilentPayment copyWith(
          void Function(BTCSignOutputRequest_SilentPayment) updates) =>
      super.copyWith((message) =>
              updates(message as BTCSignOutputRequest_SilentPayment))
          as BTCSignOutputRequest_SilentPayment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignOutputRequest_SilentPayment create() =>
      BTCSignOutputRequest_SilentPayment._();
  @$core.override
  BTCSignOutputRequest_SilentPayment createEmptyInstance() => create();
  static $pb.PbList<BTCSignOutputRequest_SilentPayment> createRepeated() =>
      $pb.PbList<BTCSignOutputRequest_SilentPayment>();
  @$core.pragma('dart2js:noInline')
  static BTCSignOutputRequest_SilentPayment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignOutputRequest_SilentPayment>(
          create);
  static BTCSignOutputRequest_SilentPayment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => $_clearField(1);
}

class BTCSignOutputRequest extends $pb.GeneratedMessage {
  factory BTCSignOutputRequest({
    $core.bool? ours,
    BTCOutputType? type,
    $fixnum.Int64? value,
    $core.List<$core.int>? payload,
    $core.Iterable<$core.int>? keypath,
    $core.int? scriptConfigIndex,
    $core.int? paymentRequestIndex,
    BTCSignOutputRequest_SilentPayment? silentPayment,
    $core.int? outputScriptConfigIndex,
  }) {
    final result = create();
    if (ours != null) result.ours = ours;
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    if (payload != null) result.payload = payload;
    if (keypath != null) result.keypath.addAll(keypath);
    if (scriptConfigIndex != null) result.scriptConfigIndex = scriptConfigIndex;
    if (paymentRequestIndex != null)
      result.paymentRequestIndex = paymentRequestIndex;
    if (silentPayment != null) result.silentPayment = silentPayment;
    if (outputScriptConfigIndex != null)
      result.outputScriptConfigIndex = outputScriptConfigIndex;
    return result;
  }

  BTCSignOutputRequest._();

  factory BTCSignOutputRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignOutputRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignOutputRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ours')
    ..e<BTCOutputType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: BTCOutputType.UNKNOWN,
        valueOf: BTCOutputType.valueOf,
        enumValues: BTCOutputType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'payload', $pb.PbFieldType.OY)
    ..p<$core.int>(5, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'scriptConfigIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'paymentRequestIndex', $pb.PbFieldType.OU3)
    ..aOM<BTCSignOutputRequest_SilentPayment>(
        8, _omitFieldNames ? '' : 'silentPayment',
        subBuilder: BTCSignOutputRequest_SilentPayment.create)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'outputScriptConfigIndex',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignOutputRequest clone() =>
      BTCSignOutputRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignOutputRequest copyWith(void Function(BTCSignOutputRequest) updates) =>
      super.copyWith((message) => updates(message as BTCSignOutputRequest))
          as BTCSignOutputRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignOutputRequest create() => BTCSignOutputRequest._();
  @$core.override
  BTCSignOutputRequest createEmptyInstance() => create();
  static $pb.PbList<BTCSignOutputRequest> createRepeated() =>
      $pb.PbList<BTCSignOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCSignOutputRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignOutputRequest>(create);
  static BTCSignOutputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ours => $_getBF(0);
  @$pb.TagNumber(1)
  set ours($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOurs() => $_has(0);
  @$pb.TagNumber(1)
  void clearOurs() => $_clearField(1);

  @$pb.TagNumber(2)
  BTCOutputType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(BTCOutputType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  /// 20 bytes for p2pkh, p2sh, pw2wpkh. 32 bytes for p2wsh.
  @$pb.TagNumber(3)
  $fixnum.Int64 get value => $_getI64(2);
  @$pb.TagNumber(3)
  set value($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get payload => $_getN(3);
  @$pb.TagNumber(4)
  set payload($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayload() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get keypath => $_getList(4);

  /// If ours is true and `output_script_config_index` is absent. References a script config from
  /// BTCSignInitRequest. This allows change output identification and allows us to identify
  /// non-change outputs to the same account, so we can display this info to the user.
  @$pb.TagNumber(6)
  $core.int get scriptConfigIndex => $_getIZ(5);
  @$pb.TagNumber(6)
  set scriptConfigIndex($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScriptConfigIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearScriptConfigIndex() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get paymentRequestIndex => $_getIZ(6);
  @$pb.TagNumber(7)
  set paymentRequestIndex($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPaymentRequestIndex() => $_has(6);
  @$pb.TagNumber(7)
  void clearPaymentRequestIndex() => $_clearField(7);

  /// If provided, `type` and `payload` is ignored. The generated output pkScript is returned in
  /// BTCSignNextResponse. `contains_silent_payment_outputs` in the init request must be true.
  @$pb.TagNumber(8)
  BTCSignOutputRequest_SilentPayment get silentPayment => $_getN(7);
  @$pb.TagNumber(8)
  set silentPayment(BTCSignOutputRequest_SilentPayment value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSilentPayment() => $_has(7);
  @$pb.TagNumber(8)
  void clearSilentPayment() => $_clearField(8);
  @$pb.TagNumber(8)
  BTCSignOutputRequest_SilentPayment ensureSilentPayment() => $_ensure(7);

  /// If ours is true. If set, `script_config_index` is ignored. References an output script config
  /// from BTCSignInitRequest. This enables verification that an output belongs to the same keystore,
  /// even if it is from a different account than we spend from, allowing us to display this info to
  /// the user.
  @$pb.TagNumber(9)
  $core.int get outputScriptConfigIndex => $_getIZ(8);
  @$pb.TagNumber(9)
  set outputScriptConfigIndex($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasOutputScriptConfigIndex() => $_has(8);
  @$pb.TagNumber(9)
  void clearOutputScriptConfigIndex() => $_clearField(9);
}

class BTCScriptConfigRegistration extends $pb.GeneratedMessage {
  factory BTCScriptConfigRegistration({
    BTCCoin? coin,
    BTCScriptConfig? scriptConfig,
    $core.Iterable<$core.int>? keypath,
  }) {
    final result = create();
    if (coin != null) result.coin = coin;
    if (scriptConfig != null) result.scriptConfig = scriptConfig;
    if (keypath != null) result.keypath.addAll(keypath);
    return result;
  }

  BTCScriptConfigRegistration._();

  factory BTCScriptConfigRegistration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCScriptConfigRegistration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCScriptConfigRegistration',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<BTCCoin>(1, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: BTCCoin.BTC,
        valueOf: BTCCoin.valueOf,
        enumValues: BTCCoin.values)
    ..aOM<BTCScriptConfig>(2, _omitFieldNames ? '' : 'scriptConfig',
        subBuilder: BTCScriptConfig.create)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfigRegistration clone() =>
      BTCScriptConfigRegistration()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCScriptConfigRegistration copyWith(
          void Function(BTCScriptConfigRegistration) updates) =>
      super.copyWith(
              (message) => updates(message as BTCScriptConfigRegistration))
          as BTCScriptConfigRegistration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCScriptConfigRegistration create() =>
      BTCScriptConfigRegistration._();
  @$core.override
  BTCScriptConfigRegistration createEmptyInstance() => create();
  static $pb.PbList<BTCScriptConfigRegistration> createRepeated() =>
      $pb.PbList<BTCScriptConfigRegistration>();
  @$core.pragma('dart2js:noInline')
  static BTCScriptConfigRegistration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCScriptConfigRegistration>(create);
  static BTCScriptConfigRegistration? _defaultInstance;

  @$pb.TagNumber(1)
  BTCCoin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin(BTCCoin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => $_clearField(1);

  @$pb.TagNumber(2)
  BTCScriptConfig get scriptConfig => $_getN(1);
  @$pb.TagNumber(2)
  set scriptConfig(BTCScriptConfig value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScriptConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  BTCScriptConfig ensureScriptConfig() => $_ensure(1);

  /// Unused for policy registrations.
  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get keypath => $_getList(2);
}

class BTCSuccess extends $pb.GeneratedMessage {
  factory BTCSuccess() => create();

  BTCSuccess._();

  factory BTCSuccess.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSuccess.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSuccess',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSuccess clone() => BTCSuccess()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSuccess copyWith(void Function(BTCSuccess) updates) =>
      super.copyWith((message) => updates(message as BTCSuccess)) as BTCSuccess;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSuccess create() => BTCSuccess._();
  @$core.override
  BTCSuccess createEmptyInstance() => create();
  static $pb.PbList<BTCSuccess> createRepeated() => $pb.PbList<BTCSuccess>();
  @$core.pragma('dart2js:noInline')
  static BTCSuccess getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSuccess>(create);
  static BTCSuccess? _defaultInstance;
}

class BTCIsScriptConfigRegisteredRequest extends $pb.GeneratedMessage {
  factory BTCIsScriptConfigRegisteredRequest({
    BTCScriptConfigRegistration? registration,
  }) {
    final result = create();
    if (registration != null) result.registration = registration;
    return result;
  }

  BTCIsScriptConfigRegisteredRequest._();

  factory BTCIsScriptConfigRegisteredRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCIsScriptConfigRegisteredRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCIsScriptConfigRegisteredRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOM<BTCScriptConfigRegistration>(1, _omitFieldNames ? '' : 'registration',
        subBuilder: BTCScriptConfigRegistration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCIsScriptConfigRegisteredRequest clone() =>
      BTCIsScriptConfigRegisteredRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCIsScriptConfigRegisteredRequest copyWith(
          void Function(BTCIsScriptConfigRegisteredRequest) updates) =>
      super.copyWith((message) =>
              updates(message as BTCIsScriptConfigRegisteredRequest))
          as BTCIsScriptConfigRegisteredRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCIsScriptConfigRegisteredRequest create() =>
      BTCIsScriptConfigRegisteredRequest._();
  @$core.override
  BTCIsScriptConfigRegisteredRequest createEmptyInstance() => create();
  static $pb.PbList<BTCIsScriptConfigRegisteredRequest> createRepeated() =>
      $pb.PbList<BTCIsScriptConfigRegisteredRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCIsScriptConfigRegisteredRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCIsScriptConfigRegisteredRequest>(
          create);
  static BTCIsScriptConfigRegisteredRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BTCScriptConfigRegistration get registration => $_getN(0);
  @$pb.TagNumber(1)
  set registration(BTCScriptConfigRegistration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRegistration() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegistration() => $_clearField(1);
  @$pb.TagNumber(1)
  BTCScriptConfigRegistration ensureRegistration() => $_ensure(0);
}

class BTCIsScriptConfigRegisteredResponse extends $pb.GeneratedMessage {
  factory BTCIsScriptConfigRegisteredResponse({
    $core.bool? isRegistered,
  }) {
    final result = create();
    if (isRegistered != null) result.isRegistered = isRegistered;
    return result;
  }

  BTCIsScriptConfigRegisteredResponse._();

  factory BTCIsScriptConfigRegisteredResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCIsScriptConfigRegisteredResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCIsScriptConfigRegisteredResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isRegistered')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCIsScriptConfigRegisteredResponse clone() =>
      BTCIsScriptConfigRegisteredResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCIsScriptConfigRegisteredResponse copyWith(
          void Function(BTCIsScriptConfigRegisteredResponse) updates) =>
      super.copyWith((message) =>
              updates(message as BTCIsScriptConfigRegisteredResponse))
          as BTCIsScriptConfigRegisteredResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCIsScriptConfigRegisteredResponse create() =>
      BTCIsScriptConfigRegisteredResponse._();
  @$core.override
  BTCIsScriptConfigRegisteredResponse createEmptyInstance() => create();
  static $pb.PbList<BTCIsScriptConfigRegisteredResponse> createRepeated() =>
      $pb.PbList<BTCIsScriptConfigRegisteredResponse>();
  @$core.pragma('dart2js:noInline')
  static BTCIsScriptConfigRegisteredResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          BTCIsScriptConfigRegisteredResponse>(create);
  static BTCIsScriptConfigRegisteredResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isRegistered => $_getBF(0);
  @$pb.TagNumber(1)
  set isRegistered($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsRegistered() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsRegistered() => $_clearField(1);
}

class BTCRegisterScriptConfigRequest extends $pb.GeneratedMessage {
  factory BTCRegisterScriptConfigRequest({
    BTCScriptConfigRegistration? registration,
    $core.String? name,
    BTCRegisterScriptConfigRequest_XPubType? xpubType,
  }) {
    final result = create();
    if (registration != null) result.registration = registration;
    if (name != null) result.name = name;
    if (xpubType != null) result.xpubType = xpubType;
    return result;
  }

  BTCRegisterScriptConfigRequest._();

  factory BTCRegisterScriptConfigRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCRegisterScriptConfigRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCRegisterScriptConfigRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOM<BTCScriptConfigRegistration>(1, _omitFieldNames ? '' : 'registration',
        subBuilder: BTCScriptConfigRegistration.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<BTCRegisterScriptConfigRequest_XPubType>(
        3, _omitFieldNames ? '' : 'xpubType', $pb.PbFieldType.OE,
        defaultOrMaker: BTCRegisterScriptConfigRequest_XPubType.AUTO_ELECTRUM,
        valueOf: BTCRegisterScriptConfigRequest_XPubType.valueOf,
        enumValues: BTCRegisterScriptConfigRequest_XPubType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCRegisterScriptConfigRequest clone() =>
      BTCRegisterScriptConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCRegisterScriptConfigRequest copyWith(
          void Function(BTCRegisterScriptConfigRequest) updates) =>
      super.copyWith(
              (message) => updates(message as BTCRegisterScriptConfigRequest))
          as BTCRegisterScriptConfigRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCRegisterScriptConfigRequest create() =>
      BTCRegisterScriptConfigRequest._();
  @$core.override
  BTCRegisterScriptConfigRequest createEmptyInstance() => create();
  static $pb.PbList<BTCRegisterScriptConfigRequest> createRepeated() =>
      $pb.PbList<BTCRegisterScriptConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCRegisterScriptConfigRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCRegisterScriptConfigRequest>(create);
  static BTCRegisterScriptConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BTCScriptConfigRegistration get registration => $_getN(0);
  @$pb.TagNumber(1)
  set registration(BTCScriptConfigRegistration value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRegistration() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegistration() => $_clearField(1);
  @$pb.TagNumber(1)
  BTCScriptConfigRegistration ensureRegistration() => $_ensure(0);

  /// If empty, the name is entered on the device instead.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  BTCRegisterScriptConfigRequest_XPubType get xpubType => $_getN(2);
  @$pb.TagNumber(3)
  set xpubType(BTCRegisterScriptConfigRequest_XPubType value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasXpubType() => $_has(2);
  @$pb.TagNumber(3)
  void clearXpubType() => $_clearField(3);
}

class BTCPrevTxInitRequest extends $pb.GeneratedMessage {
  factory BTCPrevTxInitRequest({
    $core.int? version,
    $core.int? numInputs,
    $core.int? numOutputs,
    $core.int? locktime,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (numInputs != null) result.numInputs = numInputs;
    if (numOutputs != null) result.numOutputs = numOutputs;
    if (locktime != null) result.locktime = locktime;
    return result;
  }

  BTCPrevTxInitRequest._();

  factory BTCPrevTxInitRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPrevTxInitRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPrevTxInitRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numInputs', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'numOutputs', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'locktime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPrevTxInitRequest clone() =>
      BTCPrevTxInitRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPrevTxInitRequest copyWith(void Function(BTCPrevTxInitRequest) updates) =>
      super.copyWith((message) => updates(message as BTCPrevTxInitRequest))
          as BTCPrevTxInitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPrevTxInitRequest create() => BTCPrevTxInitRequest._();
  @$core.override
  BTCPrevTxInitRequest createEmptyInstance() => create();
  static $pb.PbList<BTCPrevTxInitRequest> createRepeated() =>
      $pb.PbList<BTCPrevTxInitRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCPrevTxInitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCPrevTxInitRequest>(create);
  static BTCPrevTxInitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get numInputs => $_getIZ(1);
  @$pb.TagNumber(2)
  set numInputs($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumInputs() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumInputs() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get numOutputs => $_getIZ(2);
  @$pb.TagNumber(3)
  set numOutputs($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNumOutputs() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumOutputs() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get locktime => $_getIZ(3);
  @$pb.TagNumber(4)
  set locktime($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLocktime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocktime() => $_clearField(4);
}

class BTCPrevTxInputRequest extends $pb.GeneratedMessage {
  factory BTCPrevTxInputRequest({
    $core.List<$core.int>? prevOutHash,
    $core.int? prevOutIndex,
    $core.List<$core.int>? signatureScript,
    $core.int? sequence,
  }) {
    final result = create();
    if (prevOutHash != null) result.prevOutHash = prevOutHash;
    if (prevOutIndex != null) result.prevOutIndex = prevOutIndex;
    if (signatureScript != null) result.signatureScript = signatureScript;
    if (sequence != null) result.sequence = sequence;
    return result;
  }

  BTCPrevTxInputRequest._();

  factory BTCPrevTxInputRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPrevTxInputRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPrevTxInputRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'prevOutHash', $pb.PbFieldType.OY)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'prevOutIndex', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'signatureScript', $pb.PbFieldType.OY)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sequence', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPrevTxInputRequest clone() =>
      BTCPrevTxInputRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPrevTxInputRequest copyWith(
          void Function(BTCPrevTxInputRequest) updates) =>
      super.copyWith((message) => updates(message as BTCPrevTxInputRequest))
          as BTCPrevTxInputRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPrevTxInputRequest create() => BTCPrevTxInputRequest._();
  @$core.override
  BTCPrevTxInputRequest createEmptyInstance() => create();
  static $pb.PbList<BTCPrevTxInputRequest> createRepeated() =>
      $pb.PbList<BTCPrevTxInputRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCPrevTxInputRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCPrevTxInputRequest>(create);
  static BTCPrevTxInputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get prevOutHash => $_getN(0);
  @$pb.TagNumber(1)
  set prevOutHash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrevOutHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrevOutHash() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get prevOutIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set prevOutIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPrevOutIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevOutIndex() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get signatureScript => $_getN(2);
  @$pb.TagNumber(3)
  set signatureScript($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSignatureScript() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignatureScript() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get sequence => $_getIZ(3);
  @$pb.TagNumber(4)
  set sequence($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSequence() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequence() => $_clearField(4);
}

class BTCPrevTxOutputRequest extends $pb.GeneratedMessage {
  factory BTCPrevTxOutputRequest({
    $fixnum.Int64? value,
    $core.List<$core.int>? pubkeyScript,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (pubkeyScript != null) result.pubkeyScript = pubkeyScript;
    return result;
  }

  BTCPrevTxOutputRequest._();

  factory BTCPrevTxOutputRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPrevTxOutputRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPrevTxOutputRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'pubkeyScript', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPrevTxOutputRequest clone() =>
      BTCPrevTxOutputRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPrevTxOutputRequest copyWith(
          void Function(BTCPrevTxOutputRequest) updates) =>
      super.copyWith((message) => updates(message as BTCPrevTxOutputRequest))
          as BTCPrevTxOutputRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPrevTxOutputRequest create() => BTCPrevTxOutputRequest._();
  @$core.override
  BTCPrevTxOutputRequest createEmptyInstance() => create();
  static $pb.PbList<BTCPrevTxOutputRequest> createRepeated() =>
      $pb.PbList<BTCPrevTxOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCPrevTxOutputRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCPrevTxOutputRequest>(create);
  static BTCPrevTxOutputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pubkeyScript => $_getN(1);
  @$pb.TagNumber(2)
  set pubkeyScript($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPubkeyScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubkeyScript() => $_clearField(2);
}

class BTCPaymentRequestRequest_Memo_TextMemo extends $pb.GeneratedMessage {
  factory BTCPaymentRequestRequest_Memo_TextMemo({
    $core.String? note,
  }) {
    final result = create();
    if (note != null) result.note = note;
    return result;
  }

  BTCPaymentRequestRequest_Memo_TextMemo._();

  factory BTCPaymentRequestRequest_Memo_TextMemo.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPaymentRequestRequest_Memo_TextMemo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPaymentRequestRequest.Memo.TextMemo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'note')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPaymentRequestRequest_Memo_TextMemo clone() =>
      BTCPaymentRequestRequest_Memo_TextMemo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPaymentRequestRequest_Memo_TextMemo copyWith(
          void Function(BTCPaymentRequestRequest_Memo_TextMemo) updates) =>
      super.copyWith((message) =>
              updates(message as BTCPaymentRequestRequest_Memo_TextMemo))
          as BTCPaymentRequestRequest_Memo_TextMemo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPaymentRequestRequest_Memo_TextMemo create() =>
      BTCPaymentRequestRequest_Memo_TextMemo._();
  @$core.override
  BTCPaymentRequestRequest_Memo_TextMemo createEmptyInstance() => create();
  static $pb.PbList<BTCPaymentRequestRequest_Memo_TextMemo> createRepeated() =>
      $pb.PbList<BTCPaymentRequestRequest_Memo_TextMemo>();
  @$core.pragma('dart2js:noInline')
  static BTCPaymentRequestRequest_Memo_TextMemo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          BTCPaymentRequestRequest_Memo_TextMemo>(create);
  static BTCPaymentRequestRequest_Memo_TextMemo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get note => $_getSZ(0);
  @$pb.TagNumber(1)
  set note($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => $_clearField(1);
}

enum BTCPaymentRequestRequest_Memo_Memo { textMemo, notSet }

class BTCPaymentRequestRequest_Memo extends $pb.GeneratedMessage {
  factory BTCPaymentRequestRequest_Memo({
    BTCPaymentRequestRequest_Memo_TextMemo? textMemo,
  }) {
    final result = create();
    if (textMemo != null) result.textMemo = textMemo;
    return result;
  }

  BTCPaymentRequestRequest_Memo._();

  factory BTCPaymentRequestRequest_Memo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPaymentRequestRequest_Memo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BTCPaymentRequestRequest_Memo_Memo>
      _BTCPaymentRequestRequest_Memo_MemoByTag = {
    1: BTCPaymentRequestRequest_Memo_Memo.textMemo,
    0: BTCPaymentRequestRequest_Memo_Memo.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPaymentRequestRequest.Memo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<BTCPaymentRequestRequest_Memo_TextMemo>(
        1, _omitFieldNames ? '' : 'textMemo',
        subBuilder: BTCPaymentRequestRequest_Memo_TextMemo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPaymentRequestRequest_Memo clone() =>
      BTCPaymentRequestRequest_Memo()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPaymentRequestRequest_Memo copyWith(
          void Function(BTCPaymentRequestRequest_Memo) updates) =>
      super.copyWith(
              (message) => updates(message as BTCPaymentRequestRequest_Memo))
          as BTCPaymentRequestRequest_Memo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPaymentRequestRequest_Memo create() =>
      BTCPaymentRequestRequest_Memo._();
  @$core.override
  BTCPaymentRequestRequest_Memo createEmptyInstance() => create();
  static $pb.PbList<BTCPaymentRequestRequest_Memo> createRepeated() =>
      $pb.PbList<BTCPaymentRequestRequest_Memo>();
  @$core.pragma('dart2js:noInline')
  static BTCPaymentRequestRequest_Memo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCPaymentRequestRequest_Memo>(create);
  static BTCPaymentRequestRequest_Memo? _defaultInstance;

  BTCPaymentRequestRequest_Memo_Memo whichMemo() =>
      _BTCPaymentRequestRequest_Memo_MemoByTag[$_whichOneof(0)]!;
  void clearMemo() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BTCPaymentRequestRequest_Memo_TextMemo get textMemo => $_getN(0);
  @$pb.TagNumber(1)
  set textMemo(BTCPaymentRequestRequest_Memo_TextMemo value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTextMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextMemo() => $_clearField(1);
  @$pb.TagNumber(1)
  BTCPaymentRequestRequest_Memo_TextMemo ensureTextMemo() => $_ensure(0);
}

class BTCPaymentRequestRequest extends $pb.GeneratedMessage {
  factory BTCPaymentRequestRequest({
    $core.String? recipientName,
    $core.Iterable<BTCPaymentRequestRequest_Memo>? memos,
    $core.List<$core.int>? nonce,
    $fixnum.Int64? totalAmount,
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (recipientName != null) result.recipientName = recipientName;
    if (memos != null) result.memos.addAll(memos);
    if (nonce != null) result.nonce = nonce;
    if (totalAmount != null) result.totalAmount = totalAmount;
    if (signature != null) result.signature = signature;
    return result;
  }

  BTCPaymentRequestRequest._();

  factory BTCPaymentRequestRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCPaymentRequestRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCPaymentRequestRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recipientName')
    ..pc<BTCPaymentRequestRequest_Memo>(
        2, _omitFieldNames ? '' : 'memos', $pb.PbFieldType.PM,
        subBuilder: BTCPaymentRequestRequest_Memo.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'totalAmount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPaymentRequestRequest clone() =>
      BTCPaymentRequestRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCPaymentRequestRequest copyWith(
          void Function(BTCPaymentRequestRequest) updates) =>
      super.copyWith((message) => updates(message as BTCPaymentRequestRequest))
          as BTCPaymentRequestRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCPaymentRequestRequest create() => BTCPaymentRequestRequest._();
  @$core.override
  BTCPaymentRequestRequest createEmptyInstance() => create();
  static $pb.PbList<BTCPaymentRequestRequest> createRepeated() =>
      $pb.PbList<BTCPaymentRequestRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCPaymentRequestRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCPaymentRequestRequest>(create);
  static BTCPaymentRequestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get recipientName => $_getSZ(0);
  @$pb.TagNumber(1)
  set recipientName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRecipientName() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecipientName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<BTCPaymentRequestRequest_Memo> get memos => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get nonce => $_getN(2);
  @$pb.TagNumber(3)
  set nonce($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalAmount => $_getI64(3);
  @$pb.TagNumber(4)
  set totalAmount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalAmount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get signature => $_getN(4);
  @$pb.TagNumber(5)
  set signature($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSignature() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignature() => $_clearField(5);
}

class BTCSignMessageRequest extends $pb.GeneratedMessage {
  factory BTCSignMessageRequest({
    BTCCoin? coin,
    BTCScriptConfigWithKeypath? scriptConfig,
    $core.List<$core.int>? msg,
    $1.AntiKleptoHostNonceCommitment? hostNonceCommitment,
  }) {
    final result = create();
    if (coin != null) result.coin = coin;
    if (scriptConfig != null) result.scriptConfig = scriptConfig;
    if (msg != null) result.msg = msg;
    if (hostNonceCommitment != null)
      result.hostNonceCommitment = hostNonceCommitment;
    return result;
  }

  BTCSignMessageRequest._();

  factory BTCSignMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignMessageRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<BTCCoin>(1, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: BTCCoin.BTC,
        valueOf: BTCCoin.valueOf,
        enumValues: BTCCoin.values)
    ..aOM<BTCScriptConfigWithKeypath>(2, _omitFieldNames ? '' : 'scriptConfig',
        subBuilder: BTCScriptConfigWithKeypath.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'msg', $pb.PbFieldType.OY)
    ..aOM<$1.AntiKleptoHostNonceCommitment>(
        4, _omitFieldNames ? '' : 'hostNonceCommitment',
        subBuilder: $1.AntiKleptoHostNonceCommitment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignMessageRequest clone() =>
      BTCSignMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignMessageRequest copyWith(
          void Function(BTCSignMessageRequest) updates) =>
      super.copyWith((message) => updates(message as BTCSignMessageRequest))
          as BTCSignMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignMessageRequest create() => BTCSignMessageRequest._();
  @$core.override
  BTCSignMessageRequest createEmptyInstance() => create();
  static $pb.PbList<BTCSignMessageRequest> createRepeated() =>
      $pb.PbList<BTCSignMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCSignMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignMessageRequest>(create);
  static BTCSignMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BTCCoin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin(BTCCoin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => $_clearField(1);

  @$pb.TagNumber(2)
  BTCScriptConfigWithKeypath get scriptConfig => $_getN(1);
  @$pb.TagNumber(2)
  set scriptConfig(BTCScriptConfigWithKeypath value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScriptConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearScriptConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  BTCScriptConfigWithKeypath ensureScriptConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get msg => $_getN(2);
  @$pb.TagNumber(3)
  set msg($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.AntiKleptoHostNonceCommitment get hostNonceCommitment => $_getN(3);
  @$pb.TagNumber(4)
  set hostNonceCommitment($1.AntiKleptoHostNonceCommitment value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHostNonceCommitment() => $_has(3);
  @$pb.TagNumber(4)
  void clearHostNonceCommitment() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.AntiKleptoHostNonceCommitment ensureHostNonceCommitment() => $_ensure(3);
}

class BTCSignMessageResponse extends $pb.GeneratedMessage {
  factory BTCSignMessageResponse({
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (signature != null) result.signature = signature;
    return result;
  }

  BTCSignMessageResponse._();

  factory BTCSignMessageResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCSignMessageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCSignMessageResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignMessageResponse clone() =>
      BTCSignMessageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCSignMessageResponse copyWith(
          void Function(BTCSignMessageResponse) updates) =>
      super.copyWith((message) => updates(message as BTCSignMessageResponse))
          as BTCSignMessageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCSignMessageResponse create() => BTCSignMessageResponse._();
  @$core.override
  BTCSignMessageResponse createEmptyInstance() => create();
  static $pb.PbList<BTCSignMessageResponse> createRepeated() =>
      $pb.PbList<BTCSignMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static BTCSignMessageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCSignMessageResponse>(create);
  static BTCSignMessageResponse? _defaultInstance;

  /// 65 bytes (32 bytes big endian R, 32 bytes big endian S, 1 recid).
  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => $_clearField(1);
}

enum BTCRequest_Request {
  isScriptConfigRegistered,
  registerScriptConfig,
  prevtxInit,
  prevtxInput,
  prevtxOutput,
  signMessage,
  antikleptoSignature,
  paymentRequest,
  notSet
}

class BTCRequest extends $pb.GeneratedMessage {
  factory BTCRequest({
    BTCIsScriptConfigRegisteredRequest? isScriptConfigRegistered,
    BTCRegisterScriptConfigRequest? registerScriptConfig,
    BTCPrevTxInitRequest? prevtxInit,
    BTCPrevTxInputRequest? prevtxInput,
    BTCPrevTxOutputRequest? prevtxOutput,
    BTCSignMessageRequest? signMessage,
    $1.AntiKleptoSignatureRequest? antikleptoSignature,
    BTCPaymentRequestRequest? paymentRequest,
  }) {
    final result = create();
    if (isScriptConfigRegistered != null)
      result.isScriptConfigRegistered = isScriptConfigRegistered;
    if (registerScriptConfig != null)
      result.registerScriptConfig = registerScriptConfig;
    if (prevtxInit != null) result.prevtxInit = prevtxInit;
    if (prevtxInput != null) result.prevtxInput = prevtxInput;
    if (prevtxOutput != null) result.prevtxOutput = prevtxOutput;
    if (signMessage != null) result.signMessage = signMessage;
    if (antikleptoSignature != null)
      result.antikleptoSignature = antikleptoSignature;
    if (paymentRequest != null) result.paymentRequest = paymentRequest;
    return result;
  }

  BTCRequest._();

  factory BTCRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BTCRequest_Request>
      _BTCRequest_RequestByTag = {
    1: BTCRequest_Request.isScriptConfigRegistered,
    2: BTCRequest_Request.registerScriptConfig,
    3: BTCRequest_Request.prevtxInit,
    4: BTCRequest_Request.prevtxInput,
    5: BTCRequest_Request.prevtxOutput,
    6: BTCRequest_Request.signMessage,
    7: BTCRequest_Request.antikleptoSignature,
    8: BTCRequest_Request.paymentRequest,
    0: BTCRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<BTCIsScriptConfigRegisteredRequest>(
        1, _omitFieldNames ? '' : 'isScriptConfigRegistered',
        subBuilder: BTCIsScriptConfigRegisteredRequest.create)
    ..aOM<BTCRegisterScriptConfigRequest>(
        2, _omitFieldNames ? '' : 'registerScriptConfig',
        subBuilder: BTCRegisterScriptConfigRequest.create)
    ..aOM<BTCPrevTxInitRequest>(3, _omitFieldNames ? '' : 'prevtxInit',
        subBuilder: BTCPrevTxInitRequest.create)
    ..aOM<BTCPrevTxInputRequest>(4, _omitFieldNames ? '' : 'prevtxInput',
        subBuilder: BTCPrevTxInputRequest.create)
    ..aOM<BTCPrevTxOutputRequest>(5, _omitFieldNames ? '' : 'prevtxOutput',
        subBuilder: BTCPrevTxOutputRequest.create)
    ..aOM<BTCSignMessageRequest>(6, _omitFieldNames ? '' : 'signMessage',
        subBuilder: BTCSignMessageRequest.create)
    ..aOM<$1.AntiKleptoSignatureRequest>(
        7, _omitFieldNames ? '' : 'antikleptoSignature',
        subBuilder: $1.AntiKleptoSignatureRequest.create)
    ..aOM<BTCPaymentRequestRequest>(8, _omitFieldNames ? '' : 'paymentRequest',
        subBuilder: BTCPaymentRequestRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCRequest clone() => BTCRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCRequest copyWith(void Function(BTCRequest) updates) =>
      super.copyWith((message) => updates(message as BTCRequest)) as BTCRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCRequest create() => BTCRequest._();
  @$core.override
  BTCRequest createEmptyInstance() => create();
  static $pb.PbList<BTCRequest> createRepeated() => $pb.PbList<BTCRequest>();
  @$core.pragma('dart2js:noInline')
  static BTCRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCRequest>(create);
  static BTCRequest? _defaultInstance;

  BTCRequest_Request whichRequest() =>
      _BTCRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BTCIsScriptConfigRegisteredRequest get isScriptConfigRegistered => $_getN(0);
  @$pb.TagNumber(1)
  set isScriptConfigRegistered(BTCIsScriptConfigRegisteredRequest value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIsScriptConfigRegistered() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsScriptConfigRegistered() => $_clearField(1);
  @$pb.TagNumber(1)
  BTCIsScriptConfigRegisteredRequest ensureIsScriptConfigRegistered() =>
      $_ensure(0);

  @$pb.TagNumber(2)
  BTCRegisterScriptConfigRequest get registerScriptConfig => $_getN(1);
  @$pb.TagNumber(2)
  set registerScriptConfig(BTCRegisterScriptConfigRequest value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRegisterScriptConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegisterScriptConfig() => $_clearField(2);
  @$pb.TagNumber(2)
  BTCRegisterScriptConfigRequest ensureRegisterScriptConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  BTCPrevTxInitRequest get prevtxInit => $_getN(2);
  @$pb.TagNumber(3)
  set prevtxInit(BTCPrevTxInitRequest value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPrevtxInit() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrevtxInit() => $_clearField(3);
  @$pb.TagNumber(3)
  BTCPrevTxInitRequest ensurePrevtxInit() => $_ensure(2);

  @$pb.TagNumber(4)
  BTCPrevTxInputRequest get prevtxInput => $_getN(3);
  @$pb.TagNumber(4)
  set prevtxInput(BTCPrevTxInputRequest value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPrevtxInput() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrevtxInput() => $_clearField(4);
  @$pb.TagNumber(4)
  BTCPrevTxInputRequest ensurePrevtxInput() => $_ensure(3);

  @$pb.TagNumber(5)
  BTCPrevTxOutputRequest get prevtxOutput => $_getN(4);
  @$pb.TagNumber(5)
  set prevtxOutput(BTCPrevTxOutputRequest value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPrevtxOutput() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrevtxOutput() => $_clearField(5);
  @$pb.TagNumber(5)
  BTCPrevTxOutputRequest ensurePrevtxOutput() => $_ensure(4);

  @$pb.TagNumber(6)
  BTCSignMessageRequest get signMessage => $_getN(5);
  @$pb.TagNumber(6)
  set signMessage(BTCSignMessageRequest value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSignMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignMessage() => $_clearField(6);
  @$pb.TagNumber(6)
  BTCSignMessageRequest ensureSignMessage() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.AntiKleptoSignatureRequest get antikleptoSignature => $_getN(6);
  @$pb.TagNumber(7)
  set antikleptoSignature($1.AntiKleptoSignatureRequest value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAntikleptoSignature() => $_has(6);
  @$pb.TagNumber(7)
  void clearAntikleptoSignature() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.AntiKleptoSignatureRequest ensureAntikleptoSignature() => $_ensure(6);

  @$pb.TagNumber(8)
  BTCPaymentRequestRequest get paymentRequest => $_getN(7);
  @$pb.TagNumber(8)
  set paymentRequest(BTCPaymentRequestRequest value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPaymentRequest() => $_has(7);
  @$pb.TagNumber(8)
  void clearPaymentRequest() => $_clearField(8);
  @$pb.TagNumber(8)
  BTCPaymentRequestRequest ensurePaymentRequest() => $_ensure(7);
}

enum BTCResponse_Response {
  success,
  isScriptConfigRegistered,
  signNext,
  signMessage,
  antikleptoSignerCommitment,
  notSet
}

class BTCResponse extends $pb.GeneratedMessage {
  factory BTCResponse({
    BTCSuccess? success,
    BTCIsScriptConfigRegisteredResponse? isScriptConfigRegistered,
    BTCSignNextResponse? signNext,
    BTCSignMessageResponse? signMessage,
    $1.AntiKleptoSignerCommitment? antikleptoSignerCommitment,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (isScriptConfigRegistered != null)
      result.isScriptConfigRegistered = isScriptConfigRegistered;
    if (signNext != null) result.signNext = signNext;
    if (signMessage != null) result.signMessage = signMessage;
    if (antikleptoSignerCommitment != null)
      result.antikleptoSignerCommitment = antikleptoSignerCommitment;
    return result;
  }

  BTCResponse._();

  factory BTCResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BTCResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BTCResponse_Response>
      _BTCResponse_ResponseByTag = {
    1: BTCResponse_Response.success,
    2: BTCResponse_Response.isScriptConfigRegistered,
    3: BTCResponse_Response.signNext,
    4: BTCResponse_Response.signMessage,
    5: BTCResponse_Response.antikleptoSignerCommitment,
    0: BTCResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BTCResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<BTCSuccess>(1, _omitFieldNames ? '' : 'success',
        subBuilder: BTCSuccess.create)
    ..aOM<BTCIsScriptConfigRegisteredResponse>(
        2, _omitFieldNames ? '' : 'isScriptConfigRegistered',
        subBuilder: BTCIsScriptConfigRegisteredResponse.create)
    ..aOM<BTCSignNextResponse>(3, _omitFieldNames ? '' : 'signNext',
        subBuilder: BTCSignNextResponse.create)
    ..aOM<BTCSignMessageResponse>(4, _omitFieldNames ? '' : 'signMessage',
        subBuilder: BTCSignMessageResponse.create)
    ..aOM<$1.AntiKleptoSignerCommitment>(
        5, _omitFieldNames ? '' : 'antikleptoSignerCommitment',
        subBuilder: $1.AntiKleptoSignerCommitment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCResponse clone() => BTCResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BTCResponse copyWith(void Function(BTCResponse) updates) =>
      super.copyWith((message) => updates(message as BTCResponse))
          as BTCResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BTCResponse create() => BTCResponse._();
  @$core.override
  BTCResponse createEmptyInstance() => create();
  static $pb.PbList<BTCResponse> createRepeated() => $pb.PbList<BTCResponse>();
  @$core.pragma('dart2js:noInline')
  static BTCResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BTCResponse>(create);
  static BTCResponse? _defaultInstance;

  BTCResponse_Response whichResponse() =>
      _BTCResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BTCSuccess get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(BTCSuccess value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  BTCSuccess ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  BTCIsScriptConfigRegisteredResponse get isScriptConfigRegistered => $_getN(1);
  @$pb.TagNumber(2)
  set isScriptConfigRegistered(BTCIsScriptConfigRegisteredResponse value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasIsScriptConfigRegistered() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsScriptConfigRegistered() => $_clearField(2);
  @$pb.TagNumber(2)
  BTCIsScriptConfigRegisteredResponse ensureIsScriptConfigRegistered() =>
      $_ensure(1);

  @$pb.TagNumber(3)
  BTCSignNextResponse get signNext => $_getN(2);
  @$pb.TagNumber(3)
  set signNext(BTCSignNextResponse value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSignNext() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignNext() => $_clearField(3);
  @$pb.TagNumber(3)
  BTCSignNextResponse ensureSignNext() => $_ensure(2);

  @$pb.TagNumber(4)
  BTCSignMessageResponse get signMessage => $_getN(3);
  @$pb.TagNumber(4)
  set signMessage(BTCSignMessageResponse value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSignMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignMessage() => $_clearField(4);
  @$pb.TagNumber(4)
  BTCSignMessageResponse ensureSignMessage() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.AntiKleptoSignerCommitment get antikleptoSignerCommitment => $_getN(4);
  @$pb.TagNumber(5)
  set antikleptoSignerCommitment($1.AntiKleptoSignerCommitment value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAntikleptoSignerCommitment() => $_has(4);
  @$pb.TagNumber(5)
  void clearAntikleptoSignerCommitment() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.AntiKleptoSignerCommitment ensureAntikleptoSignerCommitment() =>
      $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
