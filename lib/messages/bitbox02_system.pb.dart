// This is a generated file - do not edit.
//
// Generated from bitbox02_system.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'bitbox02_system.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'bitbox02_system.pbenum.dart';

class CheckSDCardRequest extends $pb.GeneratedMessage {
  factory CheckSDCardRequest() => create();

  CheckSDCardRequest._();

  factory CheckSDCardRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckSDCardRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckSDCardRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSDCardRequest clone() => CheckSDCardRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSDCardRequest copyWith(void Function(CheckSDCardRequest) updates) =>
      super.copyWith((message) => updates(message as CheckSDCardRequest))
          as CheckSDCardRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckSDCardRequest create() => CheckSDCardRequest._();
  @$core.override
  CheckSDCardRequest createEmptyInstance() => create();
  static $pb.PbList<CheckSDCardRequest> createRepeated() =>
      $pb.PbList<CheckSDCardRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckSDCardRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckSDCardRequest>(create);
  static CheckSDCardRequest? _defaultInstance;
}

class CheckSDCardResponse extends $pb.GeneratedMessage {
  factory CheckSDCardResponse({
    $core.bool? inserted,
  }) {
    final result = create();
    if (inserted != null) result.inserted = inserted;
    return result;
  }

  CheckSDCardResponse._();

  factory CheckSDCardResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckSDCardResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckSDCardResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'inserted')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSDCardResponse clone() => CheckSDCardResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSDCardResponse copyWith(void Function(CheckSDCardResponse) updates) =>
      super.copyWith((message) => updates(message as CheckSDCardResponse))
          as CheckSDCardResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckSDCardResponse create() => CheckSDCardResponse._();
  @$core.override
  CheckSDCardResponse createEmptyInstance() => create();
  static $pb.PbList<CheckSDCardResponse> createRepeated() =>
      $pb.PbList<CheckSDCardResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckSDCardResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckSDCardResponse>(create);
  static CheckSDCardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inserted => $_getBF(0);
  @$pb.TagNumber(1)
  set inserted($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInserted() => $_has(0);
  @$pb.TagNumber(1)
  void clearInserted() => $_clearField(1);
}

class DeviceInfoRequest extends $pb.GeneratedMessage {
  factory DeviceInfoRequest() => create();

  DeviceInfoRequest._();

  factory DeviceInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceInfoRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfoRequest clone() => DeviceInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfoRequest copyWith(void Function(DeviceInfoRequest) updates) =>
      super.copyWith((message) => updates(message as DeviceInfoRequest))
          as DeviceInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfoRequest create() => DeviceInfoRequest._();
  @$core.override
  DeviceInfoRequest createEmptyInstance() => create();
  static $pb.PbList<DeviceInfoRequest> createRepeated() =>
      $pb.PbList<DeviceInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceInfoRequest>(create);
  static DeviceInfoRequest? _defaultInstance;
}

class DeviceInfoResponse_Bluetooth extends $pb.GeneratedMessage {
  factory DeviceInfoResponse_Bluetooth({
    $core.List<$core.int>? firmwareHash,
    $core.String? firmwareVersion,
    $core.bool? enabled,
  }) {
    final result = create();
    if (firmwareHash != null) result.firmwareHash = firmwareHash;
    if (firmwareVersion != null) result.firmwareVersion = firmwareVersion;
    if (enabled != null) result.enabled = enabled;
    return result;
  }

  DeviceInfoResponse_Bluetooth._();

  factory DeviceInfoResponse_Bluetooth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceInfoResponse_Bluetooth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceInfoResponse.Bluetooth',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'firmwareHash', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'firmwareVersion')
    ..aOB(3, _omitFieldNames ? '' : 'enabled')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfoResponse_Bluetooth clone() =>
      DeviceInfoResponse_Bluetooth()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfoResponse_Bluetooth copyWith(
          void Function(DeviceInfoResponse_Bluetooth) updates) =>
      super.copyWith(
              (message) => updates(message as DeviceInfoResponse_Bluetooth))
          as DeviceInfoResponse_Bluetooth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfoResponse_Bluetooth create() =>
      DeviceInfoResponse_Bluetooth._();
  @$core.override
  DeviceInfoResponse_Bluetooth createEmptyInstance() => create();
  static $pb.PbList<DeviceInfoResponse_Bluetooth> createRepeated() =>
      $pb.PbList<DeviceInfoResponse_Bluetooth>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfoResponse_Bluetooth getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceInfoResponse_Bluetooth>(create);
  static DeviceInfoResponse_Bluetooth? _defaultInstance;

  /// Hash of the currently active Bluetooth firmware on the device.
  @$pb.TagNumber(1)
  $core.List<$core.int> get firmwareHash => $_getN(0);
  @$pb.TagNumber(1)
  set firmwareHash($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFirmwareHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirmwareHash() => $_clearField(1);

  /// Firmware version, formated as an unsigned integer "1", "2", etc.
  @$pb.TagNumber(2)
  $core.String get firmwareVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set firmwareVersion($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirmwareVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareVersion() => $_clearField(2);

  /// True if Bluetooth is enabled
  @$pb.TagNumber(3)
  $core.bool get enabled => $_getBF(2);
  @$pb.TagNumber(3)
  set enabled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnabled() => $_clearField(3);
}

class DeviceInfoResponse extends $pb.GeneratedMessage {
  factory DeviceInfoResponse({
    $core.String? name,
    $core.bool? initialized,
    $core.String? version,
    $core.bool? mnemonicPassphraseEnabled,
    $core.int? monotonicIncrementsRemaining,
    $core.String? securechipModel,
    DeviceInfoResponse_Bluetooth? bluetooth,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (initialized != null) result.initialized = initialized;
    if (version != null) result.version = version;
    if (mnemonicPassphraseEnabled != null)
      result.mnemonicPassphraseEnabled = mnemonicPassphraseEnabled;
    if (monotonicIncrementsRemaining != null)
      result.monotonicIncrementsRemaining = monotonicIncrementsRemaining;
    if (securechipModel != null) result.securechipModel = securechipModel;
    if (bluetooth != null) result.bluetooth = bluetooth;
    return result;
  }

  DeviceInfoResponse._();

  factory DeviceInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceInfoResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'initialized')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOB(4, _omitFieldNames ? '' : 'mnemonicPassphraseEnabled')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'monotonicIncrementsRemaining',
        $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'securechipModel')
    ..aOM<DeviceInfoResponse_Bluetooth>(7, _omitFieldNames ? '' : 'bluetooth',
        subBuilder: DeviceInfoResponse_Bluetooth.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfoResponse clone() => DeviceInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceInfoResponse copyWith(void Function(DeviceInfoResponse) updates) =>
      super.copyWith((message) => updates(message as DeviceInfoResponse))
          as DeviceInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfoResponse create() => DeviceInfoResponse._();
  @$core.override
  DeviceInfoResponse createEmptyInstance() => create();
  static $pb.PbList<DeviceInfoResponse> createRepeated() =>
      $pb.PbList<DeviceInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceInfoResponse>(create);
  static DeviceInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get initialized => $_getBF(1);
  @$pb.TagNumber(2)
  set initialized($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasInitialized() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitialized() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get mnemonicPassphraseEnabled => $_getBF(3);
  @$pb.TagNumber(4)
  set mnemonicPassphraseEnabled($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMnemonicPassphraseEnabled() => $_has(3);
  @$pb.TagNumber(4)
  void clearMnemonicPassphraseEnabled() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get monotonicIncrementsRemaining => $_getIZ(4);
  @$pb.TagNumber(5)
  set monotonicIncrementsRemaining($core.int value) =>
      $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMonotonicIncrementsRemaining() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonotonicIncrementsRemaining() => $_clearField(5);

  /// From v9.6.0: "ATECC608A" or "ATECC608B".
  @$pb.TagNumber(6)
  $core.String get securechipModel => $_getSZ(5);
  @$pb.TagNumber(6)
  set securechipModel($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSecurechipModel() => $_has(5);
  @$pb.TagNumber(6)
  void clearSecurechipModel() => $_clearField(6);

  /// Only present in Bluetooth-enabled devices.
  @$pb.TagNumber(7)
  DeviceInfoResponse_Bluetooth get bluetooth => $_getN(6);
  @$pb.TagNumber(7)
  set bluetooth(DeviceInfoResponse_Bluetooth value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasBluetooth() => $_has(6);
  @$pb.TagNumber(7)
  void clearBluetooth() => $_clearField(7);
  @$pb.TagNumber(7)
  DeviceInfoResponse_Bluetooth ensureBluetooth() => $_ensure(6);
}

class InsertRemoveSDCardRequest extends $pb.GeneratedMessage {
  factory InsertRemoveSDCardRequest({
    InsertRemoveSDCardRequest_SDCardAction? action,
  }) {
    final result = create();
    if (action != null) result.action = action;
    return result;
  }

  InsertRemoveSDCardRequest._();

  factory InsertRemoveSDCardRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InsertRemoveSDCardRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InsertRemoveSDCardRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<InsertRemoveSDCardRequest_SDCardAction>(
        1, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE,
        defaultOrMaker: InsertRemoveSDCardRequest_SDCardAction.REMOVE_CARD,
        valueOf: InsertRemoveSDCardRequest_SDCardAction.valueOf,
        enumValues: InsertRemoveSDCardRequest_SDCardAction.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InsertRemoveSDCardRequest clone() =>
      InsertRemoveSDCardRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InsertRemoveSDCardRequest copyWith(
          void Function(InsertRemoveSDCardRequest) updates) =>
      super.copyWith((message) => updates(message as InsertRemoveSDCardRequest))
          as InsertRemoveSDCardRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InsertRemoveSDCardRequest create() => InsertRemoveSDCardRequest._();
  @$core.override
  InsertRemoveSDCardRequest createEmptyInstance() => create();
  static $pb.PbList<InsertRemoveSDCardRequest> createRepeated() =>
      $pb.PbList<InsertRemoveSDCardRequest>();
  @$core.pragma('dart2js:noInline')
  static InsertRemoveSDCardRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertRemoveSDCardRequest>(create);
  static InsertRemoveSDCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  InsertRemoveSDCardRequest_SDCardAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(InsertRemoveSDCardRequest_SDCardAction value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => $_clearField(1);
}

class ResetRequest extends $pb.GeneratedMessage {
  factory ResetRequest() => create();

  ResetRequest._();

  factory ResetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResetRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetRequest clone() => ResetRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetRequest copyWith(void Function(ResetRequest) updates) =>
      super.copyWith((message) => updates(message as ResetRequest))
          as ResetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetRequest create() => ResetRequest._();
  @$core.override
  ResetRequest createEmptyInstance() => create();
  static $pb.PbList<ResetRequest> createRepeated() =>
      $pb.PbList<ResetRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResetRequest>(create);
  static ResetRequest? _defaultInstance;
}

class SetDeviceLanguageRequest extends $pb.GeneratedMessage {
  factory SetDeviceLanguageRequest({
    $core.String? language,
  }) {
    final result = create();
    if (language != null) result.language = language;
    return result;
  }

  SetDeviceLanguageRequest._();

  factory SetDeviceLanguageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetDeviceLanguageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetDeviceLanguageRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'language')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetDeviceLanguageRequest clone() =>
      SetDeviceLanguageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetDeviceLanguageRequest copyWith(
          void Function(SetDeviceLanguageRequest) updates) =>
      super.copyWith((message) => updates(message as SetDeviceLanguageRequest))
          as SetDeviceLanguageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDeviceLanguageRequest create() => SetDeviceLanguageRequest._();
  @$core.override
  SetDeviceLanguageRequest createEmptyInstance() => create();
  static $pb.PbList<SetDeviceLanguageRequest> createRepeated() =>
      $pb.PbList<SetDeviceLanguageRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDeviceLanguageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDeviceLanguageRequest>(create);
  static SetDeviceLanguageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get language => $_getSZ(0);
  @$pb.TagNumber(1)
  set language($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLanguage() => $_has(0);
  @$pb.TagNumber(1)
  void clearLanguage() => $_clearField(1);
}

class SetDeviceNameRequest extends $pb.GeneratedMessage {
  factory SetDeviceNameRequest({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  SetDeviceNameRequest._();

  factory SetDeviceNameRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetDeviceNameRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetDeviceNameRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetDeviceNameRequest clone() =>
      SetDeviceNameRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetDeviceNameRequest copyWith(void Function(SetDeviceNameRequest) updates) =>
      super.copyWith((message) => updates(message as SetDeviceNameRequest))
          as SetDeviceNameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetDeviceNameRequest create() => SetDeviceNameRequest._();
  @$core.override
  SetDeviceNameRequest createEmptyInstance() => create();
  static $pb.PbList<SetDeviceNameRequest> createRepeated() =>
      $pb.PbList<SetDeviceNameRequest>();
  @$core.pragma('dart2js:noInline')
  static SetDeviceNameRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetDeviceNameRequest>(create);
  static SetDeviceNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class SetPasswordRequest extends $pb.GeneratedMessage {
  factory SetPasswordRequest({
    $core.List<$core.int>? entropy,
  }) {
    final result = create();
    if (entropy != null) result.entropy = entropy;
    return result;
  }

  SetPasswordRequest._();

  factory SetPasswordRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetPasswordRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetPasswordRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'entropy', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetPasswordRequest clone() => SetPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetPasswordRequest copyWith(void Function(SetPasswordRequest) updates) =>
      super.copyWith((message) => updates(message as SetPasswordRequest))
          as SetPasswordRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPasswordRequest create() => SetPasswordRequest._();
  @$core.override
  SetPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<SetPasswordRequest> createRepeated() =>
      $pb.PbList<SetPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static SetPasswordRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetPasswordRequest>(create);
  static SetPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropy => $_getN(0);
  @$pb.TagNumber(1)
  set entropy($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEntropy() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropy() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
