// This is a generated file - do not edit.
//
// Generated from hww.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'backup_commands.pb.dart' as $1;
import 'bitbox02_system.pb.dart' as $0;
import 'bluetooth.pb.dart' as $10;
import 'btc.pb.dart' as $3;
import 'cardano.pb.dart' as $9;
import 'common.pb.dart' as $7;
import 'eth.pb.dart' as $6;
import 'keystore.pb.dart' as $8;
import 'mnemonic.pb.dart' as $2;
import 'perform_attestation.pb.dart' as $4;
import 'system.pb.dart' as $5;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Error extends $pb.GeneratedMessage {
  factory Error({
    $core.int? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  Error._();

  factory Error.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Error.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Error',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Error copyWith(void Function(Error) updates) =>
      super.copyWith((message) => updates(message as Error)) as Error;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  @$core.override
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class Success extends $pb.GeneratedMessage {
  factory Success() => create();

  Success._();

  factory Success.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Success.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Success',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Success clone() => Success()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Success copyWith(void Function(Success) updates) =>
      super.copyWith((message) => updates(message as Success)) as Success;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Success create() => Success._();
  @$core.override
  Success createEmptyInstance() => create();
  static $pb.PbList<Success> createRepeated() => $pb.PbList<Success>();
  @$core.pragma('dart2js:noInline')
  static Success getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Success>(create);
  static Success? _defaultInstance;
}

enum Request_Request {
  deviceName,
  deviceLanguage,
  deviceInfo,
  setPassword,
  createBackup,
  showMnemonic,
  btcPub,
  btcSignInit,
  btcSignInput,
  btcSignOutput,
  insertRemoveSdcard,
  checkSdcard,
  setMnemonicPassphraseEnabled,
  listBackups,
  restoreBackup,
  performAttestation,
  reboot,
  checkBackup,
  eth,
  reset,
  restoreFromMnemonic,
  fingerprint,
  btc,
  electrumEncryptionKey,
  cardano,
  bip85,
  bluetooth,
  notSet
}

class Request extends $pb.GeneratedMessage {
  factory Request({
    $0.SetDeviceNameRequest? deviceName,
    $0.SetDeviceLanguageRequest? deviceLanguage,
    $0.DeviceInfoRequest? deviceInfo,
    $0.SetPasswordRequest? setPassword,
    $1.CreateBackupRequest? createBackup,
    $2.ShowMnemonicRequest? showMnemonic,
    $3.BTCPubRequest? btcPub,
    $3.BTCSignInitRequest? btcSignInit,
    $3.BTCSignInputRequest? btcSignInput,
    $3.BTCSignOutputRequest? btcSignOutput,
    $0.InsertRemoveSDCardRequest? insertRemoveSdcard,
    $0.CheckSDCardRequest? checkSdcard,
    $2.SetMnemonicPassphraseEnabledRequest? setMnemonicPassphraseEnabled,
    $1.ListBackupsRequest? listBackups,
    $1.RestoreBackupRequest? restoreBackup,
    $4.PerformAttestationRequest? performAttestation,
    $5.RebootRequest? reboot,
    $1.CheckBackupRequest? checkBackup,
    $6.ETHRequest? eth,
    $0.ResetRequest? reset,
    $2.RestoreFromMnemonicRequest? restoreFromMnemonic,
    $7.RootFingerprintRequest? fingerprint,
    $3.BTCRequest? btc,
    $8.ElectrumEncryptionKeyRequest? electrumEncryptionKey,
    $9.CardanoRequest? cardano,
    $8.BIP85Request? bip85,
    $10.BluetoothRequest? bluetooth,
  }) {
    final result = create();
    if (deviceName != null) result.deviceName = deviceName;
    if (deviceLanguage != null) result.deviceLanguage = deviceLanguage;
    if (deviceInfo != null) result.deviceInfo = deviceInfo;
    if (setPassword != null) result.setPassword = setPassword;
    if (createBackup != null) result.createBackup = createBackup;
    if (showMnemonic != null) result.showMnemonic = showMnemonic;
    if (btcPub != null) result.btcPub = btcPub;
    if (btcSignInit != null) result.btcSignInit = btcSignInit;
    if (btcSignInput != null) result.btcSignInput = btcSignInput;
    if (btcSignOutput != null) result.btcSignOutput = btcSignOutput;
    if (insertRemoveSdcard != null)
      result.insertRemoveSdcard = insertRemoveSdcard;
    if (checkSdcard != null) result.checkSdcard = checkSdcard;
    if (setMnemonicPassphraseEnabled != null)
      result.setMnemonicPassphraseEnabled = setMnemonicPassphraseEnabled;
    if (listBackups != null) result.listBackups = listBackups;
    if (restoreBackup != null) result.restoreBackup = restoreBackup;
    if (performAttestation != null)
      result.performAttestation = performAttestation;
    if (reboot != null) result.reboot = reboot;
    if (checkBackup != null) result.checkBackup = checkBackup;
    if (eth != null) result.eth = eth;
    if (reset != null) result.reset = reset;
    if (restoreFromMnemonic != null)
      result.restoreFromMnemonic = restoreFromMnemonic;
    if (fingerprint != null) result.fingerprint = fingerprint;
    if (btc != null) result.btc = btc;
    if (electrumEncryptionKey != null)
      result.electrumEncryptionKey = electrumEncryptionKey;
    if (cardano != null) result.cardano = cardano;
    if (bip85 != null) result.bip85 = bip85;
    if (bluetooth != null) result.bluetooth = bluetooth;
    return result;
  }

  Request._();

  factory Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Request_Request> _Request_RequestByTag = {
    2: Request_Request.deviceName,
    3: Request_Request.deviceLanguage,
    4: Request_Request.deviceInfo,
    5: Request_Request.setPassword,
    6: Request_Request.createBackup,
    7: Request_Request.showMnemonic,
    8: Request_Request.btcPub,
    9: Request_Request.btcSignInit,
    10: Request_Request.btcSignInput,
    11: Request_Request.btcSignOutput,
    12: Request_Request.insertRemoveSdcard,
    13: Request_Request.checkSdcard,
    14: Request_Request.setMnemonicPassphraseEnabled,
    15: Request_Request.listBackups,
    16: Request_Request.restoreBackup,
    17: Request_Request.performAttestation,
    18: Request_Request.reboot,
    19: Request_Request.checkBackup,
    20: Request_Request.eth,
    21: Request_Request.reset,
    22: Request_Request.restoreFromMnemonic,
    24: Request_Request.fingerprint,
    25: Request_Request.btc,
    26: Request_Request.electrumEncryptionKey,
    27: Request_Request.cardano,
    28: Request_Request.bip85,
    29: Request_Request.bluetooth,
    0: Request_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Request',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      24,
      25,
      26,
      27,
      28,
      29
    ])
    ..aOM<$0.SetDeviceNameRequest>(2, _omitFieldNames ? '' : 'deviceName',
        subBuilder: $0.SetDeviceNameRequest.create)
    ..aOM<$0.SetDeviceLanguageRequest>(
        3, _omitFieldNames ? '' : 'deviceLanguage',
        subBuilder: $0.SetDeviceLanguageRequest.create)
    ..aOM<$0.DeviceInfoRequest>(4, _omitFieldNames ? '' : 'deviceInfo',
        subBuilder: $0.DeviceInfoRequest.create)
    ..aOM<$0.SetPasswordRequest>(5, _omitFieldNames ? '' : 'setPassword',
        subBuilder: $0.SetPasswordRequest.create)
    ..aOM<$1.CreateBackupRequest>(6, _omitFieldNames ? '' : 'createBackup',
        subBuilder: $1.CreateBackupRequest.create)
    ..aOM<$2.ShowMnemonicRequest>(7, _omitFieldNames ? '' : 'showMnemonic',
        subBuilder: $2.ShowMnemonicRequest.create)
    ..aOM<$3.BTCPubRequest>(8, _omitFieldNames ? '' : 'btcPub',
        subBuilder: $3.BTCPubRequest.create)
    ..aOM<$3.BTCSignInitRequest>(9, _omitFieldNames ? '' : 'btcSignInit',
        subBuilder: $3.BTCSignInitRequest.create)
    ..aOM<$3.BTCSignInputRequest>(10, _omitFieldNames ? '' : 'btcSignInput',
        subBuilder: $3.BTCSignInputRequest.create)
    ..aOM<$3.BTCSignOutputRequest>(11, _omitFieldNames ? '' : 'btcSignOutput',
        subBuilder: $3.BTCSignOutputRequest.create)
    ..aOM<$0.InsertRemoveSDCardRequest>(
        12, _omitFieldNames ? '' : 'insertRemoveSdcard',
        subBuilder: $0.InsertRemoveSDCardRequest.create)
    ..aOM<$0.CheckSDCardRequest>(13, _omitFieldNames ? '' : 'checkSdcard',
        subBuilder: $0.CheckSDCardRequest.create)
    ..aOM<$2.SetMnemonicPassphraseEnabledRequest>(
        14, _omitFieldNames ? '' : 'setMnemonicPassphraseEnabled',
        subBuilder: $2.SetMnemonicPassphraseEnabledRequest.create)
    ..aOM<$1.ListBackupsRequest>(15, _omitFieldNames ? '' : 'listBackups',
        subBuilder: $1.ListBackupsRequest.create)
    ..aOM<$1.RestoreBackupRequest>(16, _omitFieldNames ? '' : 'restoreBackup',
        subBuilder: $1.RestoreBackupRequest.create)
    ..aOM<$4.PerformAttestationRequest>(
        17, _omitFieldNames ? '' : 'performAttestation',
        subBuilder: $4.PerformAttestationRequest.create)
    ..aOM<$5.RebootRequest>(18, _omitFieldNames ? '' : 'reboot',
        subBuilder: $5.RebootRequest.create)
    ..aOM<$1.CheckBackupRequest>(19, _omitFieldNames ? '' : 'checkBackup',
        subBuilder: $1.CheckBackupRequest.create)
    ..aOM<$6.ETHRequest>(20, _omitFieldNames ? '' : 'eth',
        subBuilder: $6.ETHRequest.create)
    ..aOM<$0.ResetRequest>(21, _omitFieldNames ? '' : 'reset',
        subBuilder: $0.ResetRequest.create)
    ..aOM<$2.RestoreFromMnemonicRequest>(
        22, _omitFieldNames ? '' : 'restoreFromMnemonic',
        subBuilder: $2.RestoreFromMnemonicRequest.create)
    ..aOM<$7.RootFingerprintRequest>(24, _omitFieldNames ? '' : 'fingerprint',
        subBuilder: $7.RootFingerprintRequest.create)
    ..aOM<$3.BTCRequest>(25, _omitFieldNames ? '' : 'btc',
        subBuilder: $3.BTCRequest.create)
    ..aOM<$8.ElectrumEncryptionKeyRequest>(
        26, _omitFieldNames ? '' : 'electrumEncryptionKey',
        subBuilder: $8.ElectrumEncryptionKeyRequest.create)
    ..aOM<$9.CardanoRequest>(27, _omitFieldNames ? '' : 'cardano',
        subBuilder: $9.CardanoRequest.create)
    ..aOM<$8.BIP85Request>(28, _omitFieldNames ? '' : 'bip85',
        subBuilder: $8.BIP85Request.create)
    ..aOM<$10.BluetoothRequest>(29, _omitFieldNames ? '' : 'bluetooth',
        subBuilder: $10.BluetoothRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Request copyWith(void Function(Request) updates) =>
      super.copyWith((message) => updates(message as Request)) as Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  @$core.override
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  Request_Request whichRequest() => _Request_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => $_clearField($_whichOneof(0));

  /// removed: RandomNumberRequest random_number = 1;
  @$pb.TagNumber(2)
  $0.SetDeviceNameRequest get deviceName => $_getN(0);
  @$pb.TagNumber(2)
  set deviceName($0.SetDeviceNameRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceName() => $_has(0);
  @$pb.TagNumber(2)
  void clearDeviceName() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SetDeviceNameRequest ensureDeviceName() => $_ensure(0);

  @$pb.TagNumber(3)
  $0.SetDeviceLanguageRequest get deviceLanguage => $_getN(1);
  @$pb.TagNumber(3)
  set deviceLanguage($0.SetDeviceLanguageRequest value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceLanguage() => $_has(1);
  @$pb.TagNumber(3)
  void clearDeviceLanguage() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.SetDeviceLanguageRequest ensureDeviceLanguage() => $_ensure(1);

  @$pb.TagNumber(4)
  $0.DeviceInfoRequest get deviceInfo => $_getN(2);
  @$pb.TagNumber(4)
  set deviceInfo($0.DeviceInfoRequest value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDeviceInfo() => $_has(2);
  @$pb.TagNumber(4)
  void clearDeviceInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.DeviceInfoRequest ensureDeviceInfo() => $_ensure(2);

  @$pb.TagNumber(5)
  $0.SetPasswordRequest get setPassword => $_getN(3);
  @$pb.TagNumber(5)
  set setPassword($0.SetPasswordRequest value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSetPassword() => $_has(3);
  @$pb.TagNumber(5)
  void clearSetPassword() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.SetPasswordRequest ensureSetPassword() => $_ensure(3);

  @$pb.TagNumber(6)
  $1.CreateBackupRequest get createBackup => $_getN(4);
  @$pb.TagNumber(6)
  set createBackup($1.CreateBackupRequest value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCreateBackup() => $_has(4);
  @$pb.TagNumber(6)
  void clearCreateBackup() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.CreateBackupRequest ensureCreateBackup() => $_ensure(4);

  @$pb.TagNumber(7)
  $2.ShowMnemonicRequest get showMnemonic => $_getN(5);
  @$pb.TagNumber(7)
  set showMnemonic($2.ShowMnemonicRequest value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasShowMnemonic() => $_has(5);
  @$pb.TagNumber(7)
  void clearShowMnemonic() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.ShowMnemonicRequest ensureShowMnemonic() => $_ensure(5);

  @$pb.TagNumber(8)
  $3.BTCPubRequest get btcPub => $_getN(6);
  @$pb.TagNumber(8)
  set btcPub($3.BTCPubRequest value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasBtcPub() => $_has(6);
  @$pb.TagNumber(8)
  void clearBtcPub() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.BTCPubRequest ensureBtcPub() => $_ensure(6);

  @$pb.TagNumber(9)
  $3.BTCSignInitRequest get btcSignInit => $_getN(7);
  @$pb.TagNumber(9)
  set btcSignInit($3.BTCSignInitRequest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasBtcSignInit() => $_has(7);
  @$pb.TagNumber(9)
  void clearBtcSignInit() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.BTCSignInitRequest ensureBtcSignInit() => $_ensure(7);

  @$pb.TagNumber(10)
  $3.BTCSignInputRequest get btcSignInput => $_getN(8);
  @$pb.TagNumber(10)
  set btcSignInput($3.BTCSignInputRequest value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasBtcSignInput() => $_has(8);
  @$pb.TagNumber(10)
  void clearBtcSignInput() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.BTCSignInputRequest ensureBtcSignInput() => $_ensure(8);

  @$pb.TagNumber(11)
  $3.BTCSignOutputRequest get btcSignOutput => $_getN(9);
  @$pb.TagNumber(11)
  set btcSignOutput($3.BTCSignOutputRequest value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasBtcSignOutput() => $_has(9);
  @$pb.TagNumber(11)
  void clearBtcSignOutput() => $_clearField(11);
  @$pb.TagNumber(11)
  $3.BTCSignOutputRequest ensureBtcSignOutput() => $_ensure(9);

  @$pb.TagNumber(12)
  $0.InsertRemoveSDCardRequest get insertRemoveSdcard => $_getN(10);
  @$pb.TagNumber(12)
  set insertRemoveSdcard($0.InsertRemoveSDCardRequest value) =>
      $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasInsertRemoveSdcard() => $_has(10);
  @$pb.TagNumber(12)
  void clearInsertRemoveSdcard() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.InsertRemoveSDCardRequest ensureInsertRemoveSdcard() => $_ensure(10);

  @$pb.TagNumber(13)
  $0.CheckSDCardRequest get checkSdcard => $_getN(11);
  @$pb.TagNumber(13)
  set checkSdcard($0.CheckSDCardRequest value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasCheckSdcard() => $_has(11);
  @$pb.TagNumber(13)
  void clearCheckSdcard() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.CheckSDCardRequest ensureCheckSdcard() => $_ensure(11);

  @$pb.TagNumber(14)
  $2.SetMnemonicPassphraseEnabledRequest get setMnemonicPassphraseEnabled =>
      $_getN(12);
  @$pb.TagNumber(14)
  set setMnemonicPassphraseEnabled(
          $2.SetMnemonicPassphraseEnabledRequest value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasSetMnemonicPassphraseEnabled() => $_has(12);
  @$pb.TagNumber(14)
  void clearSetMnemonicPassphraseEnabled() => $_clearField(14);
  @$pb.TagNumber(14)
  $2.SetMnemonicPassphraseEnabledRequest ensureSetMnemonicPassphraseEnabled() =>
      $_ensure(12);

  @$pb.TagNumber(15)
  $1.ListBackupsRequest get listBackups => $_getN(13);
  @$pb.TagNumber(15)
  set listBackups($1.ListBackupsRequest value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasListBackups() => $_has(13);
  @$pb.TagNumber(15)
  void clearListBackups() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.ListBackupsRequest ensureListBackups() => $_ensure(13);

  @$pb.TagNumber(16)
  $1.RestoreBackupRequest get restoreBackup => $_getN(14);
  @$pb.TagNumber(16)
  set restoreBackup($1.RestoreBackupRequest value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasRestoreBackup() => $_has(14);
  @$pb.TagNumber(16)
  void clearRestoreBackup() => $_clearField(16);
  @$pb.TagNumber(16)
  $1.RestoreBackupRequest ensureRestoreBackup() => $_ensure(14);

  @$pb.TagNumber(17)
  $4.PerformAttestationRequest get performAttestation => $_getN(15);
  @$pb.TagNumber(17)
  set performAttestation($4.PerformAttestationRequest value) =>
      $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasPerformAttestation() => $_has(15);
  @$pb.TagNumber(17)
  void clearPerformAttestation() => $_clearField(17);
  @$pb.TagNumber(17)
  $4.PerformAttestationRequest ensurePerformAttestation() => $_ensure(15);

  @$pb.TagNumber(18)
  $5.RebootRequest get reboot => $_getN(16);
  @$pb.TagNumber(18)
  set reboot($5.RebootRequest value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasReboot() => $_has(16);
  @$pb.TagNumber(18)
  void clearReboot() => $_clearField(18);
  @$pb.TagNumber(18)
  $5.RebootRequest ensureReboot() => $_ensure(16);

  @$pb.TagNumber(19)
  $1.CheckBackupRequest get checkBackup => $_getN(17);
  @$pb.TagNumber(19)
  set checkBackup($1.CheckBackupRequest value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasCheckBackup() => $_has(17);
  @$pb.TagNumber(19)
  void clearCheckBackup() => $_clearField(19);
  @$pb.TagNumber(19)
  $1.CheckBackupRequest ensureCheckBackup() => $_ensure(17);

  @$pb.TagNumber(20)
  $6.ETHRequest get eth => $_getN(18);
  @$pb.TagNumber(20)
  set eth($6.ETHRequest value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasEth() => $_has(18);
  @$pb.TagNumber(20)
  void clearEth() => $_clearField(20);
  @$pb.TagNumber(20)
  $6.ETHRequest ensureEth() => $_ensure(18);

  @$pb.TagNumber(21)
  $0.ResetRequest get reset => $_getN(19);
  @$pb.TagNumber(21)
  set reset($0.ResetRequest value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasReset() => $_has(19);
  @$pb.TagNumber(21)
  void clearReset() => $_clearField(21);
  @$pb.TagNumber(21)
  $0.ResetRequest ensureReset() => $_ensure(19);

  @$pb.TagNumber(22)
  $2.RestoreFromMnemonicRequest get restoreFromMnemonic => $_getN(20);
  @$pb.TagNumber(22)
  set restoreFromMnemonic($2.RestoreFromMnemonicRequest value) =>
      $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasRestoreFromMnemonic() => $_has(20);
  @$pb.TagNumber(22)
  void clearRestoreFromMnemonic() => $_clearField(22);
  @$pb.TagNumber(22)
  $2.RestoreFromMnemonicRequest ensureRestoreFromMnemonic() => $_ensure(20);

  /// removed: BitBoxBaseRequest bitboxbase = 23;
  @$pb.TagNumber(24)
  $7.RootFingerprintRequest get fingerprint => $_getN(21);
  @$pb.TagNumber(24)
  set fingerprint($7.RootFingerprintRequest value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasFingerprint() => $_has(21);
  @$pb.TagNumber(24)
  void clearFingerprint() => $_clearField(24);
  @$pb.TagNumber(24)
  $7.RootFingerprintRequest ensureFingerprint() => $_ensure(21);

  @$pb.TagNumber(25)
  $3.BTCRequest get btc => $_getN(22);
  @$pb.TagNumber(25)
  set btc($3.BTCRequest value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasBtc() => $_has(22);
  @$pb.TagNumber(25)
  void clearBtc() => $_clearField(25);
  @$pb.TagNumber(25)
  $3.BTCRequest ensureBtc() => $_ensure(22);

  @$pb.TagNumber(26)
  $8.ElectrumEncryptionKeyRequest get electrumEncryptionKey => $_getN(23);
  @$pb.TagNumber(26)
  set electrumEncryptionKey($8.ElectrumEncryptionKeyRequest value) =>
      $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasElectrumEncryptionKey() => $_has(23);
  @$pb.TagNumber(26)
  void clearElectrumEncryptionKey() => $_clearField(26);
  @$pb.TagNumber(26)
  $8.ElectrumEncryptionKeyRequest ensureElectrumEncryptionKey() => $_ensure(23);

  @$pb.TagNumber(27)
  $9.CardanoRequest get cardano => $_getN(24);
  @$pb.TagNumber(27)
  set cardano($9.CardanoRequest value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasCardano() => $_has(24);
  @$pb.TagNumber(27)
  void clearCardano() => $_clearField(27);
  @$pb.TagNumber(27)
  $9.CardanoRequest ensureCardano() => $_ensure(24);

  @$pb.TagNumber(28)
  $8.BIP85Request get bip85 => $_getN(25);
  @$pb.TagNumber(28)
  set bip85($8.BIP85Request value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasBip85() => $_has(25);
  @$pb.TagNumber(28)
  void clearBip85() => $_clearField(28);
  @$pb.TagNumber(28)
  $8.BIP85Request ensureBip85() => $_ensure(25);

  @$pb.TagNumber(29)
  $10.BluetoothRequest get bluetooth => $_getN(26);
  @$pb.TagNumber(29)
  set bluetooth($10.BluetoothRequest value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasBluetooth() => $_has(26);
  @$pb.TagNumber(29)
  void clearBluetooth() => $_clearField(29);
  @$pb.TagNumber(29)
  $10.BluetoothRequest ensureBluetooth() => $_ensure(26);
}

enum Response_Response {
  success,
  error,
  deviceInfo,
  pub,
  btcSignNext,
  listBackups,
  checkBackup,
  performAttestation,
  checkSdcard,
  eth,
  fingerprint,
  btc,
  electrumEncryptionKey,
  cardano,
  bip85,
  bluetooth,
  notSet
}

class Response extends $pb.GeneratedMessage {
  factory Response({
    Success? success,
    Error? error,
    $0.DeviceInfoResponse? deviceInfo,
    $7.PubResponse? pub,
    $3.BTCSignNextResponse? btcSignNext,
    $1.ListBackupsResponse? listBackups,
    $1.CheckBackupResponse? checkBackup,
    $4.PerformAttestationResponse? performAttestation,
    $0.CheckSDCardResponse? checkSdcard,
    $6.ETHResponse? eth,
    $7.RootFingerprintResponse? fingerprint,
    $3.BTCResponse? btc,
    $8.ElectrumEncryptionKeyResponse? electrumEncryptionKey,
    $9.CardanoResponse? cardano,
    $8.BIP85Response? bip85,
    $10.BluetoothResponse? bluetooth,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (error != null) result.error = error;
    if (deviceInfo != null) result.deviceInfo = deviceInfo;
    if (pub != null) result.pub = pub;
    if (btcSignNext != null) result.btcSignNext = btcSignNext;
    if (listBackups != null) result.listBackups = listBackups;
    if (checkBackup != null) result.checkBackup = checkBackup;
    if (performAttestation != null)
      result.performAttestation = performAttestation;
    if (checkSdcard != null) result.checkSdcard = checkSdcard;
    if (eth != null) result.eth = eth;
    if (fingerprint != null) result.fingerprint = fingerprint;
    if (btc != null) result.btc = btc;
    if (electrumEncryptionKey != null)
      result.electrumEncryptionKey = electrumEncryptionKey;
    if (cardano != null) result.cardano = cardano;
    if (bip85 != null) result.bip85 = bip85;
    if (bluetooth != null) result.bluetooth = bluetooth;
    return result;
  }

  Response._();

  factory Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Response_Response> _Response_ResponseByTag =
      {
    1: Response_Response.success,
    2: Response_Response.error,
    4: Response_Response.deviceInfo,
    5: Response_Response.pub,
    6: Response_Response.btcSignNext,
    7: Response_Response.listBackups,
    8: Response_Response.checkBackup,
    9: Response_Response.performAttestation,
    10: Response_Response.checkSdcard,
    11: Response_Response.eth,
    12: Response_Response.fingerprint,
    13: Response_Response.btc,
    14: Response_Response.electrumEncryptionKey,
    15: Response_Response.cardano,
    16: Response_Response.bip85,
    17: Response_Response.bluetooth,
    0: Response_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Response',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17])
    ..aOM<Success>(1, _omitFieldNames ? '' : 'success',
        subBuilder: Success.create)
    ..aOM<Error>(2, _omitFieldNames ? '' : 'error', subBuilder: Error.create)
    ..aOM<$0.DeviceInfoResponse>(4, _omitFieldNames ? '' : 'deviceInfo',
        subBuilder: $0.DeviceInfoResponse.create)
    ..aOM<$7.PubResponse>(5, _omitFieldNames ? '' : 'pub',
        subBuilder: $7.PubResponse.create)
    ..aOM<$3.BTCSignNextResponse>(6, _omitFieldNames ? '' : 'btcSignNext',
        subBuilder: $3.BTCSignNextResponse.create)
    ..aOM<$1.ListBackupsResponse>(7, _omitFieldNames ? '' : 'listBackups',
        subBuilder: $1.ListBackupsResponse.create)
    ..aOM<$1.CheckBackupResponse>(8, _omitFieldNames ? '' : 'checkBackup',
        subBuilder: $1.CheckBackupResponse.create)
    ..aOM<$4.PerformAttestationResponse>(
        9, _omitFieldNames ? '' : 'performAttestation',
        subBuilder: $4.PerformAttestationResponse.create)
    ..aOM<$0.CheckSDCardResponse>(10, _omitFieldNames ? '' : 'checkSdcard',
        subBuilder: $0.CheckSDCardResponse.create)
    ..aOM<$6.ETHResponse>(11, _omitFieldNames ? '' : 'eth',
        subBuilder: $6.ETHResponse.create)
    ..aOM<$7.RootFingerprintResponse>(12, _omitFieldNames ? '' : 'fingerprint',
        subBuilder: $7.RootFingerprintResponse.create)
    ..aOM<$3.BTCResponse>(13, _omitFieldNames ? '' : 'btc',
        subBuilder: $3.BTCResponse.create)
    ..aOM<$8.ElectrumEncryptionKeyResponse>(
        14, _omitFieldNames ? '' : 'electrumEncryptionKey',
        subBuilder: $8.ElectrumEncryptionKeyResponse.create)
    ..aOM<$9.CardanoResponse>(15, _omitFieldNames ? '' : 'cardano',
        subBuilder: $9.CardanoResponse.create)
    ..aOM<$8.BIP85Response>(16, _omitFieldNames ? '' : 'bip85',
        subBuilder: $8.BIP85Response.create)
    ..aOM<$10.BluetoothResponse>(17, _omitFieldNames ? '' : 'bluetooth',
        subBuilder: $10.BluetoothResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response)) as Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  @$core.override
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  Response_Response whichResponse() =>
      _Response_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Success get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(Success value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  Success ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);

  /// removed: RandomNumberResponse random_number = 3;
  @$pb.TagNumber(4)
  $0.DeviceInfoResponse get deviceInfo => $_getN(2);
  @$pb.TagNumber(4)
  set deviceInfo($0.DeviceInfoResponse value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDeviceInfo() => $_has(2);
  @$pb.TagNumber(4)
  void clearDeviceInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.DeviceInfoResponse ensureDeviceInfo() => $_ensure(2);

  @$pb.TagNumber(5)
  $7.PubResponse get pub => $_getN(3);
  @$pb.TagNumber(5)
  set pub($7.PubResponse value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPub() => $_has(3);
  @$pb.TagNumber(5)
  void clearPub() => $_clearField(5);
  @$pb.TagNumber(5)
  $7.PubResponse ensurePub() => $_ensure(3);

  @$pb.TagNumber(6)
  $3.BTCSignNextResponse get btcSignNext => $_getN(4);
  @$pb.TagNumber(6)
  set btcSignNext($3.BTCSignNextResponse value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBtcSignNext() => $_has(4);
  @$pb.TagNumber(6)
  void clearBtcSignNext() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.BTCSignNextResponse ensureBtcSignNext() => $_ensure(4);

  @$pb.TagNumber(7)
  $1.ListBackupsResponse get listBackups => $_getN(5);
  @$pb.TagNumber(7)
  set listBackups($1.ListBackupsResponse value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasListBackups() => $_has(5);
  @$pb.TagNumber(7)
  void clearListBackups() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.ListBackupsResponse ensureListBackups() => $_ensure(5);

  @$pb.TagNumber(8)
  $1.CheckBackupResponse get checkBackup => $_getN(6);
  @$pb.TagNumber(8)
  set checkBackup($1.CheckBackupResponse value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCheckBackup() => $_has(6);
  @$pb.TagNumber(8)
  void clearCheckBackup() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.CheckBackupResponse ensureCheckBackup() => $_ensure(6);

  @$pb.TagNumber(9)
  $4.PerformAttestationResponse get performAttestation => $_getN(7);
  @$pb.TagNumber(9)
  set performAttestation($4.PerformAttestationResponse value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasPerformAttestation() => $_has(7);
  @$pb.TagNumber(9)
  void clearPerformAttestation() => $_clearField(9);
  @$pb.TagNumber(9)
  $4.PerformAttestationResponse ensurePerformAttestation() => $_ensure(7);

  @$pb.TagNumber(10)
  $0.CheckSDCardResponse get checkSdcard => $_getN(8);
  @$pb.TagNumber(10)
  set checkSdcard($0.CheckSDCardResponse value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasCheckSdcard() => $_has(8);
  @$pb.TagNumber(10)
  void clearCheckSdcard() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.CheckSDCardResponse ensureCheckSdcard() => $_ensure(8);

  @$pb.TagNumber(11)
  $6.ETHResponse get eth => $_getN(9);
  @$pb.TagNumber(11)
  set eth($6.ETHResponse value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasEth() => $_has(9);
  @$pb.TagNumber(11)
  void clearEth() => $_clearField(11);
  @$pb.TagNumber(11)
  $6.ETHResponse ensureEth() => $_ensure(9);

  @$pb.TagNumber(12)
  $7.RootFingerprintResponse get fingerprint => $_getN(10);
  @$pb.TagNumber(12)
  set fingerprint($7.RootFingerprintResponse value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasFingerprint() => $_has(10);
  @$pb.TagNumber(12)
  void clearFingerprint() => $_clearField(12);
  @$pb.TagNumber(12)
  $7.RootFingerprintResponse ensureFingerprint() => $_ensure(10);

  @$pb.TagNumber(13)
  $3.BTCResponse get btc => $_getN(11);
  @$pb.TagNumber(13)
  set btc($3.BTCResponse value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasBtc() => $_has(11);
  @$pb.TagNumber(13)
  void clearBtc() => $_clearField(13);
  @$pb.TagNumber(13)
  $3.BTCResponse ensureBtc() => $_ensure(11);

  @$pb.TagNumber(14)
  $8.ElectrumEncryptionKeyResponse get electrumEncryptionKey => $_getN(12);
  @$pb.TagNumber(14)
  set electrumEncryptionKey($8.ElectrumEncryptionKeyResponse value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasElectrumEncryptionKey() => $_has(12);
  @$pb.TagNumber(14)
  void clearElectrumEncryptionKey() => $_clearField(14);
  @$pb.TagNumber(14)
  $8.ElectrumEncryptionKeyResponse ensureElectrumEncryptionKey() =>
      $_ensure(12);

  @$pb.TagNumber(15)
  $9.CardanoResponse get cardano => $_getN(13);
  @$pb.TagNumber(15)
  set cardano($9.CardanoResponse value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasCardano() => $_has(13);
  @$pb.TagNumber(15)
  void clearCardano() => $_clearField(15);
  @$pb.TagNumber(15)
  $9.CardanoResponse ensureCardano() => $_ensure(13);

  @$pb.TagNumber(16)
  $8.BIP85Response get bip85 => $_getN(14);
  @$pb.TagNumber(16)
  set bip85($8.BIP85Response value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasBip85() => $_has(14);
  @$pb.TagNumber(16)
  void clearBip85() => $_clearField(16);
  @$pb.TagNumber(16)
  $8.BIP85Response ensureBip85() => $_ensure(14);

  @$pb.TagNumber(17)
  $10.BluetoothResponse get bluetooth => $_getN(15);
  @$pb.TagNumber(17)
  set bluetooth($10.BluetoothResponse value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasBluetooth() => $_has(15);
  @$pb.TagNumber(17)
  void clearBluetooth() => $_clearField(17);
  @$pb.TagNumber(17)
  $10.BluetoothResponse ensureBluetooth() => $_ensure(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
