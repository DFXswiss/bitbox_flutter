// This is a generated file - do not edit.
//
// Generated from backup_commands.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use checkBackupRequestDescriptor instead')
const CheckBackupRequest$json = {
  '1': 'CheckBackupRequest',
  '2': [
    {'1': 'silent', '3': 1, '4': 1, '5': 8, '10': 'silent'},
  ],
};

/// Descriptor for `CheckBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkBackupRequestDescriptor =
    $convert.base64Decode(
        'ChJDaGVja0JhY2t1cFJlcXVlc3QSFgoGc2lsZW50GAEgASgIUgZzaWxlbnQ=');

@$core.Deprecated('Use checkBackupResponseDescriptor instead')
const CheckBackupResponse$json = {
  '1': 'CheckBackupResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CheckBackupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkBackupResponseDescriptor = $convert
    .base64Decode('ChNDaGVja0JhY2t1cFJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use createBackupRequestDescriptor instead')
const CreateBackupRequest$json = {
  '1': 'CreateBackupRequest',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 13, '10': 'timestamp'},
    {'1': 'timezone_offset', '3': 2, '4': 1, '5': 5, '10': 'timezoneOffset'},
  ],
};

/// Descriptor for `CreateBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBackupRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVCYWNrdXBSZXF1ZXN0EhwKCXRpbWVzdGFtcBgBIAEoDVIJdGltZXN0YW1wEicKD3'
    'RpbWV6b25lX29mZnNldBgCIAEoBVIOdGltZXpvbmVPZmZzZXQ=');

@$core.Deprecated('Use listBackupsRequestDescriptor instead')
const ListBackupsRequest$json = {
  '1': 'ListBackupsRequest',
};

/// Descriptor for `ListBackupsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBackupsRequestDescriptor =
    $convert.base64Decode('ChJMaXN0QmFja3Vwc1JlcXVlc3Q=');

@$core.Deprecated('Use backupInfoDescriptor instead')
const BackupInfo$json = {
  '1': 'BackupInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 13, '10': 'timestamp'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `BackupInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backupInfoDescriptor = $convert.base64Decode(
    'CgpCYWNrdXBJbmZvEg4KAmlkGAEgASgJUgJpZBIcCgl0aW1lc3RhbXAYAiABKA1SCXRpbWVzdG'
    'FtcBISCgRuYW1lGAQgASgJUgRuYW1l');

@$core.Deprecated('Use listBackupsResponseDescriptor instead')
const ListBackupsResponse$json = {
  '1': 'ListBackupsResponse',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BackupInfo',
      '10': 'info'
    },
  ],
};

/// Descriptor for `ListBackupsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBackupsResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0QmFja3Vwc1Jlc3BvbnNlEjQKBGluZm8YASADKAsyIC5zaGlmdGNyeXB0by5iaXRib3'
    'gwMi5CYWNrdXBJbmZvUgRpbmZv');

@$core.Deprecated('Use restoreBackupRequestDescriptor instead')
const RestoreBackupRequest$json = {
  '1': 'RestoreBackupRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 13, '10': 'timestamp'},
    {'1': 'timezone_offset', '3': 3, '4': 1, '5': 5, '10': 'timezoneOffset'},
  ],
};

/// Descriptor for `RestoreBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreBackupRequestDescriptor = $convert.base64Decode(
    'ChRSZXN0b3JlQmFja3VwUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSHAoJdGltZXN0YW1wGAIgAS'
    'gNUgl0aW1lc3RhbXASJwoPdGltZXpvbmVfb2Zmc2V0GAMgASgFUg50aW1lem9uZU9mZnNldA==');
