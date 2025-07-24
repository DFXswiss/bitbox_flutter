// This is a generated file - do not edit.
//
// Generated from bluetooth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bluetoothToggleEnabledRequestDescriptor instead')
const BluetoothToggleEnabledRequest$json = {
  '1': 'BluetoothToggleEnabledRequest',
};

/// Descriptor for `BluetoothToggleEnabledRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothToggleEnabledRequestDescriptor =
    $convert.base64Decode('Ch1CbHVldG9vdGhUb2dnbGVFbmFibGVkUmVxdWVzdA==');

@$core.Deprecated('Use bluetoothUpgradeInitRequestDescriptor instead')
const BluetoothUpgradeInitRequest$json = {
  '1': 'BluetoothUpgradeInitRequest',
  '2': [
    {'1': 'firmware_length', '3': 1, '4': 1, '5': 13, '10': 'firmwareLength'},
  ],
};

/// Descriptor for `BluetoothUpgradeInitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothUpgradeInitRequestDescriptor =
    $convert.base64Decode(
        'ChtCbHVldG9vdGhVcGdyYWRlSW5pdFJlcXVlc3QSJwoPZmlybXdhcmVfbGVuZ3RoGAEgASgNUg'
        '5maXJtd2FyZUxlbmd0aA==');

@$core.Deprecated('Use bluetoothChunkRequestDescriptor instead')
const BluetoothChunkRequest$json = {
  '1': 'BluetoothChunkRequest',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `BluetoothChunkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothChunkRequestDescriptor =
    $convert.base64Decode(
        'ChVCbHVldG9vdGhDaHVua1JlcXVlc3QSEgoEZGF0YRgBIAEoDFIEZGF0YQ==');

@$core.Deprecated('Use bluetoothSuccessDescriptor instead')
const BluetoothSuccess$json = {
  '1': 'BluetoothSuccess',
};

/// Descriptor for `BluetoothSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothSuccessDescriptor =
    $convert.base64Decode('ChBCbHVldG9vdGhTdWNjZXNz');

@$core.Deprecated('Use bluetoothRequestChunkResponseDescriptor instead')
const BluetoothRequestChunkResponse$json = {
  '1': 'BluetoothRequestChunkResponse',
  '2': [
    {'1': 'offset', '3': 1, '4': 1, '5': 13, '10': 'offset'},
    {'1': 'length', '3': 2, '4': 1, '5': 13, '10': 'length'},
  ],
};

/// Descriptor for `BluetoothRequestChunkResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothRequestChunkResponseDescriptor =
    $convert.base64Decode(
        'Ch1CbHVldG9vdGhSZXF1ZXN0Q2h1bmtSZXNwb25zZRIWCgZvZmZzZXQYASABKA1SBm9mZnNldB'
        'IWCgZsZW5ndGgYAiABKA1SBmxlbmd0aA==');

@$core.Deprecated('Use bluetoothRequestDescriptor instead')
const BluetoothRequest$json = {
  '1': 'BluetoothRequest',
  '2': [
    {
      '1': 'upgrade_init',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothUpgradeInitRequest',
      '9': 0,
      '10': 'upgradeInit'
    },
    {
      '1': 'chunk',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothChunkRequest',
      '9': 0,
      '10': 'chunk'
    },
    {
      '1': 'toggle_enabled',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothToggleEnabledRequest',
      '9': 0,
      '10': 'toggleEnabled'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `BluetoothRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothRequestDescriptor = $convert.base64Decode(
    'ChBCbHVldG9vdGhSZXF1ZXN0ElYKDHVwZ3JhZGVfaW5pdBgBIAEoCzIxLnNoaWZ0Y3J5cHRvLm'
    'JpdGJveDAyLkJsdWV0b290aFVwZ3JhZGVJbml0UmVxdWVzdEgAUgt1cGdyYWRlSW5pdBJDCgVj'
    'aHVuaxgCIAEoCzIrLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJsdWV0b290aENodW5rUmVxdWVzdE'
    'gAUgVjaHVuaxJcCg50b2dnbGVfZW5hYmxlZBgDIAEoCzIzLnNoaWZ0Y3J5cHRvLmJpdGJveDAy'
    'LkJsdWV0b290aFRvZ2dsZUVuYWJsZWRSZXF1ZXN0SABSDXRvZ2dsZUVuYWJsZWRCCQoHcmVxdW'
    'VzdA==');

@$core.Deprecated('Use bluetoothResponseDescriptor instead')
const BluetoothResponse$json = {
  '1': 'BluetoothResponse',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothSuccess',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'request_chunk',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BluetoothRequestChunkResponse',
      '9': 0,
      '10': 'requestChunk'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `BluetoothResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bluetoothResponseDescriptor = $convert.base64Decode(
    'ChFCbHVldG9vdGhSZXNwb25zZRJCCgdzdWNjZXNzGAEgASgLMiYuc2hpZnRjcnlwdG8uYml0Ym'
    '94MDIuQmx1ZXRvb3RoU3VjY2Vzc0gAUgdzdWNjZXNzEloKDXJlcXVlc3RfY2h1bmsYAiABKAsy'
    'My5zaGlmdGNyeXB0by5iaXRib3gwMi5CbHVldG9vdGhSZXF1ZXN0Q2h1bmtSZXNwb25zZUgAUg'
    'xyZXF1ZXN0Q2h1bmtCCgoIcmVzcG9uc2U=');
