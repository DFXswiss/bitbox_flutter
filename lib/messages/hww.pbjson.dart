// This is a generated file - do not edit.
//
// Generated from hww.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorDescriptor instead')
const Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchISCgRjb2RlGAEgASgFUgRjb2RlEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use successDescriptor instead')
const Success$json = {
  '1': 'Success',
};

/// Descriptor for `Success`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successDescriptor =
    $convert.base64Decode('CgdTdWNjZXNz');

@$core.Deprecated('Use requestDescriptor instead')
const Request$json = {
  '1': 'Request',
  '2': [
    {
      '1': 'device_name',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.SetDeviceNameRequest',
      '9': 0,
      '10': 'deviceName'
    },
    {
      '1': 'device_language',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.SetDeviceLanguageRequest',
      '9': 0,
      '10': 'deviceLanguage'
    },
    {
      '1': 'device_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.DeviceInfoRequest',
      '9': 0,
      '10': 'deviceInfo'
    },
    {
      '1': 'set_password',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.SetPasswordRequest',
      '9': 0,
      '10': 'setPassword'
    },
    {
      '1': 'create_backup',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CreateBackupRequest',
      '9': 0,
      '10': 'createBackup'
    },
    {
      '1': 'show_mnemonic',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ShowMnemonicRequest',
      '9': 0,
      '10': 'showMnemonic'
    },
    {
      '1': 'btc_pub',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPubRequest',
      '9': 0,
      '10': 'btcPub'
    },
    {
      '1': 'btc_sign_init',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignInitRequest',
      '9': 0,
      '10': 'btcSignInit'
    },
    {
      '1': 'btc_sign_input',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignInputRequest',
      '9': 0,
      '10': 'btcSignInput'
    },
    {
      '1': 'btc_sign_output',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignOutputRequest',
      '9': 0,
      '10': 'btcSignOutput'
    },
    {
      '1': 'insert_remove_sdcard',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.InsertRemoveSDCardRequest',
      '9': 0,
      '10': 'insertRemoveSdcard'
    },
    {
      '1': 'check_sdcard',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CheckSDCardRequest',
      '9': 0,
      '10': 'checkSdcard'
    },
    {
      '1': 'set_mnemonic_passphrase_enabled',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.SetMnemonicPassphraseEnabledRequest',
      '9': 0,
      '10': 'setMnemonicPassphraseEnabled'
    },
    {
      '1': 'list_backups',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ListBackupsRequest',
      '9': 0,
      '10': 'listBackups'
    },
    {
      '1': 'restore_backup',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.RestoreBackupRequest',
      '9': 0,
      '10': 'restoreBackup'
    },
    {
      '1': 'perform_attestation',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.PerformAttestationRequest',
      '9': 0,
      '10': 'performAttestation'
    },
    {
      '1': 'reboot',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.RebootRequest',
      '9': 0,
      '10': 'reboot'
    },
    {
      '1': 'check_backup',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CheckBackupRequest',
      '9': 0,
      '10': 'checkBackup'
    },
    {
      '1': 'eth',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHRequest',
      '9': 0,
      '10': 'eth'
    },
    {
      '1': 'reset',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ResetRequest',
      '9': 0,
      '10': 'reset'
    },
    {
      '1': 'restore_from_mnemonic',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.RestoreFromMnemonicRequest',
      '9': 0,
      '10': 'restoreFromMnemonic'
    },
    {
      '1': 'fingerprint',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.RootFingerprintRequest',
      '9': 0,
      '10': 'fingerprint'
    },
    {
      '1': 'btc',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCRequest',
      '9': 0,
      '10': 'btc'
    },
    {
      '1': 'electrum_encryption_key',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ElectrumEncryptionKeyRequest',
      '9': 0,
      '10': 'electrumEncryptionKey'
    },
    {
      '1': 'cardano',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoRequest',
      '9': 0,
      '10': 'cardano'
    },
    {
      '1': 'bip85',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BIP85Request',
      '9': 0,
      '10': 'bip85'
    },
    {
      '1': 'bluetooth',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothRequest',
      '9': 0,
      '10': 'bluetooth'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
  '9': [
    {'1': 1, '2': 2},
    {'1': 23, '2': 24},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0Ek0KC2RldmljZV9uYW1lGAIgASgLMiouc2hpZnRjcnlwdG8uYml0Ym94MDIuU2'
    'V0RGV2aWNlTmFtZVJlcXVlc3RIAFIKZGV2aWNlTmFtZRJZCg9kZXZpY2VfbGFuZ3VhZ2UYAyAB'
    'KAsyLi5zaGlmdGNyeXB0by5iaXRib3gwMi5TZXREZXZpY2VMYW5ndWFnZVJlcXVlc3RIAFIOZG'
    'V2aWNlTGFuZ3VhZ2USSgoLZGV2aWNlX2luZm8YBCABKAsyJy5zaGlmdGNyeXB0by5iaXRib3gw'
    'Mi5EZXZpY2VJbmZvUmVxdWVzdEgAUgpkZXZpY2VJbmZvEk0KDHNldF9wYXNzd29yZBgFIAEoCz'
    'IoLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLlNldFBhc3N3b3JkUmVxdWVzdEgAUgtzZXRQYXNzd29y'
    'ZBJQCg1jcmVhdGVfYmFja3VwGAYgASgLMikuc2hpZnRjcnlwdG8uYml0Ym94MDIuQ3JlYXRlQm'
    'Fja3VwUmVxdWVzdEgAUgxjcmVhdGVCYWNrdXASUAoNc2hvd19tbmVtb25pYxgHIAEoCzIpLnNo'
    'aWZ0Y3J5cHRvLmJpdGJveDAyLlNob3dNbmVtb25pY1JlcXVlc3RIAFIMc2hvd01uZW1vbmljEj'
    '4KB2J0Y19wdWIYCCABKAsyIy5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENQdWJSZXF1ZXN0SABS'
    'BmJ0Y1B1YhJOCg1idGNfc2lnbl9pbml0GAkgASgLMiguc2hpZnRjcnlwdG8uYml0Ym94MDIuQl'
    'RDU2lnbkluaXRSZXF1ZXN0SABSC2J0Y1NpZ25Jbml0ElEKDmJ0Y19zaWduX2lucHV0GAogASgL'
    'Mikuc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRDU2lnbklucHV0UmVxdWVzdEgAUgxidGNTaWduSW'
    '5wdXQSVAoPYnRjX3NpZ25fb3V0cHV0GAsgASgLMiouc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRD'
    'U2lnbk91dHB1dFJlcXVlc3RIAFINYnRjU2lnbk91dHB1dBJjChRpbnNlcnRfcmVtb3ZlX3NkY2'
    'FyZBgMIAEoCzIvLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkluc2VydFJlbW92ZVNEQ2FyZFJlcXVl'
    'c3RIAFISaW5zZXJ0UmVtb3ZlU2RjYXJkEk0KDGNoZWNrX3NkY2FyZBgNIAEoCzIoLnNoaWZ0Y3'
    'J5cHRvLmJpdGJveDAyLkNoZWNrU0RDYXJkUmVxdWVzdEgAUgtjaGVja1NkY2FyZBKCAQofc2V0'
    'X21uZW1vbmljX3Bhc3NwaHJhc2VfZW5hYmxlZBgOIAEoCzI5LnNoaWZ0Y3J5cHRvLmJpdGJveD'
    'AyLlNldE1uZW1vbmljUGFzc3BocmFzZUVuYWJsZWRSZXF1ZXN0SABSHHNldE1uZW1vbmljUGFz'
    'c3BocmFzZUVuYWJsZWQSTQoMbGlzdF9iYWNrdXBzGA8gASgLMiguc2hpZnRjcnlwdG8uYml0Ym'
    '94MDIuTGlzdEJhY2t1cHNSZXF1ZXN0SABSC2xpc3RCYWNrdXBzElMKDnJlc3RvcmVfYmFja3Vw'
    'GBAgASgLMiouc2hpZnRjcnlwdG8uYml0Ym94MDIuUmVzdG9yZUJhY2t1cFJlcXVlc3RIAFINcm'
    'VzdG9yZUJhY2t1cBJiChNwZXJmb3JtX2F0dGVzdGF0aW9uGBEgASgLMi8uc2hpZnRjcnlwdG8u'
    'Yml0Ym94MDIuUGVyZm9ybUF0dGVzdGF0aW9uUmVxdWVzdEgAUhJwZXJmb3JtQXR0ZXN0YXRpb2'
    '4SPQoGcmVib290GBIgASgLMiMuc2hpZnRjcnlwdG8uYml0Ym94MDIuUmVib290UmVxdWVzdEgA'
    'UgZyZWJvb3QSTQoMY2hlY2tfYmFja3VwGBMgASgLMiguc2hpZnRjcnlwdG8uYml0Ym94MDIuQ2'
    'hlY2tCYWNrdXBSZXF1ZXN0SABSC2NoZWNrQmFja3VwEjQKA2V0aBgUIAEoCzIgLnNoaWZ0Y3J5'
    'cHRvLmJpdGJveDAyLkVUSFJlcXVlc3RIAFIDZXRoEjoKBXJlc2V0GBUgASgLMiIuc2hpZnRjcn'
    'lwdG8uYml0Ym94MDIuUmVzZXRSZXF1ZXN0SABSBXJlc2V0EmYKFXJlc3RvcmVfZnJvbV9tbmVt'
    'b25pYxgWIAEoCzIwLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLlJlc3RvcmVGcm9tTW5lbW9uaWNSZX'
    'F1ZXN0SABSE3Jlc3RvcmVGcm9tTW5lbW9uaWMSUAoLZmluZ2VycHJpbnQYGCABKAsyLC5zaGlm'
    'dGNyeXB0by5iaXRib3gwMi5Sb290RmluZ2VycHJpbnRSZXF1ZXN0SABSC2ZpbmdlcnByaW50Ej'
    'QKA2J0YxgZIAEoCzIgLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ1JlcXVlc3RIAFIDYnRjEmwK'
    'F2VsZWN0cnVtX2VuY3J5cHRpb25fa2V5GBogASgLMjIuc2hpZnRjcnlwdG8uYml0Ym94MDIuRW'
    'xlY3RydW1FbmNyeXB0aW9uS2V5UmVxdWVzdEgAUhVlbGVjdHJ1bUVuY3J5cHRpb25LZXkSQAoH'
    'Y2FyZGFubxgbIAEoCzIkLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkNhcmRhbm9SZXF1ZXN0SABSB2'
    'NhcmRhbm8SOgoFYmlwODUYHCABKAsyIi5zaGlmdGNyeXB0by5iaXRib3gwMi5CSVA4NVJlcXVl'
    'c3RIAFIFYmlwODUSRgoJYmx1ZXRvb3RoGB0gASgLMiYuc2hpZnRjcnlwdG8uYml0Ym94MDIuQm'
    'x1ZXRvb3RoUmVxdWVzdEgAUglibHVldG9vdGhCCQoHcmVxdWVzdEoECAEQAkoECBcQGA==');

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.Success',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'error',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.Error',
      '9': 0,
      '10': 'error'
    },
    {
      '1': 'device_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.DeviceInfoResponse',
      '9': 0,
      '10': 'deviceInfo'
    },
    {
      '1': 'pub',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.PubResponse',
      '9': 0,
      '10': 'pub'
    },
    {
      '1': 'btc_sign_next',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignNextResponse',
      '9': 0,
      '10': 'btcSignNext'
    },
    {
      '1': 'list_backups',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ListBackupsResponse',
      '9': 0,
      '10': 'listBackups'
    },
    {
      '1': 'check_backup',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CheckBackupResponse',
      '9': 0,
      '10': 'checkBackup'
    },
    {
      '1': 'perform_attestation',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.PerformAttestationResponse',
      '9': 0,
      '10': 'performAttestation'
    },
    {
      '1': 'check_sdcard',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CheckSDCardResponse',
      '9': 0,
      '10': 'checkSdcard'
    },
    {
      '1': 'eth',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHResponse',
      '9': 0,
      '10': 'eth'
    },
    {
      '1': 'fingerprint',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.RootFingerprintResponse',
      '9': 0,
      '10': 'fingerprint'
    },
    {
      '1': 'btc',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCResponse',
      '9': 0,
      '10': 'btc'
    },
    {
      '1': 'electrum_encryption_key',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ElectrumEncryptionKeyResponse',
      '9': 0,
      '10': 'electrumEncryptionKey'
    },
    {
      '1': 'cardano',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoResponse',
      '9': 0,
      '10': 'cardano'
    },
    {
      '1': 'bip85',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BIP85Response',
      '9': 0,
      '10': 'bip85'
    },
    {
      '1': 'bluetooth',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothResponse',
      '9': 0,
      '10': 'bluetooth'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRI5CgdzdWNjZXNzGAEgASgLMh0uc2hpZnRjcnlwdG8uYml0Ym94MDIuU3VjY2'
    'Vzc0gAUgdzdWNjZXNzEjMKBWVycm9yGAIgASgLMhsuc2hpZnRjcnlwdG8uYml0Ym94MDIuRXJy'
    'b3JIAFIFZXJyb3ISSwoLZGV2aWNlX2luZm8YBCABKAsyKC5zaGlmdGNyeXB0by5iaXRib3gwMi'
    '5EZXZpY2VJbmZvUmVzcG9uc2VIAFIKZGV2aWNlSW5mbxI1CgNwdWIYBSABKAsyIS5zaGlmdGNy'
    'eXB0by5iaXRib3gwMi5QdWJSZXNwb25zZUgAUgNwdWISTwoNYnRjX3NpZ25fbmV4dBgGIAEoCz'
    'IpLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ1NpZ25OZXh0UmVzcG9uc2VIAFILYnRjU2lnbk5l'
    'eHQSTgoMbGlzdF9iYWNrdXBzGAcgASgLMikuc2hpZnRjcnlwdG8uYml0Ym94MDIuTGlzdEJhY2'
    't1cHNSZXNwb25zZUgAUgtsaXN0QmFja3VwcxJOCgxjaGVja19iYWNrdXAYCCABKAsyKS5zaGlm'
    'dGNyeXB0by5iaXRib3gwMi5DaGVja0JhY2t1cFJlc3BvbnNlSABSC2NoZWNrQmFja3VwEmMKE3'
    'BlcmZvcm1fYXR0ZXN0YXRpb24YCSABKAsyMC5zaGlmdGNyeXB0by5iaXRib3gwMi5QZXJmb3Jt'
    'QXR0ZXN0YXRpb25SZXNwb25zZUgAUhJwZXJmb3JtQXR0ZXN0YXRpb24STgoMY2hlY2tfc2RjYX'
    'JkGAogASgLMikuc2hpZnRjcnlwdG8uYml0Ym94MDIuQ2hlY2tTRENhcmRSZXNwb25zZUgAUgtj'
    'aGVja1NkY2FyZBI1CgNldGgYCyABKAsyIS5zaGlmdGNyeXB0by5iaXRib3gwMi5FVEhSZXNwb2'
    '5zZUgAUgNldGgSUQoLZmluZ2VycHJpbnQYDCABKAsyLS5zaGlmdGNyeXB0by5iaXRib3gwMi5S'
    'b290RmluZ2VycHJpbnRSZXNwb25zZUgAUgtmaW5nZXJwcmludBI1CgNidGMYDSABKAsyIS5zaG'
    'lmdGNyeXB0by5iaXRib3gwMi5CVENSZXNwb25zZUgAUgNidGMSbQoXZWxlY3RydW1fZW5jcnlw'
    'dGlvbl9rZXkYDiABKAsyMy5zaGlmdGNyeXB0by5iaXRib3gwMi5FbGVjdHJ1bUVuY3J5cHRpb2'
    '5LZXlSZXNwb25zZUgAUhVlbGVjdHJ1bUVuY3J5cHRpb25LZXkSQQoHY2FyZGFubxgPIAEoCzIl'
    'LnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkNhcmRhbm9SZXNwb25zZUgAUgdjYXJkYW5vEjsKBWJpcD'
    'g1GBAgASgLMiMuc2hpZnRjcnlwdG8uYml0Ym94MDIuQklQODVSZXNwb25zZUgAUgViaXA4NRJH'
    'CglibHVldG9vdGgYESABKAsyJy5zaGlmdGNyeXB0by5iaXRib3gwMi5CbHVldG9vdGhSZXNwb2'
    '5zZUgAUglibHVldG9vdGhCCgoIcmVzcG9uc2VKBAgDEAQ=');
