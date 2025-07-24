// This is a generated file - do not edit.
//
// Generated from bitbox02_system.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use checkSDCardRequestDescriptor instead')
const CheckSDCardRequest$json = {
  '1': 'CheckSDCardRequest',
};

/// Descriptor for `CheckSDCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkSDCardRequestDescriptor =
    $convert.base64Decode('ChJDaGVja1NEQ2FyZFJlcXVlc3Q=');

@$core.Deprecated('Use checkSDCardResponseDescriptor instead')
const CheckSDCardResponse$json = {
  '1': 'CheckSDCardResponse',
  '2': [
    {'1': 'inserted', '3': 1, '4': 1, '5': 8, '10': 'inserted'},
  ],
};

/// Descriptor for `CheckSDCardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkSDCardResponseDescriptor =
    $convert.base64Decode(
        'ChNDaGVja1NEQ2FyZFJlc3BvbnNlEhoKCGluc2VydGVkGAEgASgIUghpbnNlcnRlZA==');

@$core.Deprecated('Use deviceInfoRequestDescriptor instead')
const DeviceInfoRequest$json = {
  '1': 'DeviceInfoRequest',
};

/// Descriptor for `DeviceInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoRequestDescriptor =
    $convert.base64Decode('ChFEZXZpY2VJbmZvUmVxdWVzdA==');

@$core.Deprecated('Use deviceInfoResponseDescriptor instead')
const DeviceInfoResponse$json = {
  '1': 'DeviceInfoResponse',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'initialized', '3': 2, '4': 1, '5': 8, '10': 'initialized'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'mnemonic_passphrase_enabled',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'mnemonicPassphraseEnabled'
    },
    {
      '1': 'monotonic_increments_remaining',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'monotonicIncrementsRemaining'
    },
    {'1': 'securechip_model', '3': 6, '4': 1, '5': 9, '10': 'securechipModel'},
    {
      '1': 'bluetooth',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.DeviceInfoResponse.Bluetooth',
      '9': 0,
      '10': 'bluetooth',
      '17': true
    },
  ],
  '3': [DeviceInfoResponse_Bluetooth$json],
  '8': [
    {'1': '_bluetooth'},
  ],
};

@$core.Deprecated('Use deviceInfoResponseDescriptor instead')
const DeviceInfoResponse_Bluetooth$json = {
  '1': 'Bluetooth',
  '2': [
    {'1': 'firmware_hash', '3': 1, '4': 1, '5': 12, '10': 'firmwareHash'},
    {'1': 'firmware_version', '3': 2, '4': 1, '5': 9, '10': 'firmwareVersion'},
    {'1': 'enabled', '3': 3, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `DeviceInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoResponseDescriptor = $convert.base64Decode(
    'ChJEZXZpY2VJbmZvUmVzcG9uc2USEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtpbml0aWFsaXplZB'
    'gCIAEoCFILaW5pdGlhbGl6ZWQSGAoHdmVyc2lvbhgDIAEoCVIHdmVyc2lvbhI+ChttbmVtb25p'
    'Y19wYXNzcGhyYXNlX2VuYWJsZWQYBCABKAhSGW1uZW1vbmljUGFzc3BocmFzZUVuYWJsZWQSRA'
    'oebW9ub3RvbmljX2luY3JlbWVudHNfcmVtYWluaW5nGAUgASgNUhxtb25vdG9uaWNJbmNyZW1l'
    'bnRzUmVtYWluaW5nEikKEHNlY3VyZWNoaXBfbW9kZWwYBiABKAlSD3NlY3VyZWNoaXBNb2RlbB'
    'JVCglibHVldG9vdGgYByABKAsyMi5zaGlmdGNyeXB0by5iaXRib3gwMi5EZXZpY2VJbmZvUmVz'
    'cG9uc2UuQmx1ZXRvb3RoSABSCWJsdWV0b290aIgBARp1CglCbHVldG9vdGgSIwoNZmlybXdhcm'
    'VfaGFzaBgBIAEoDFIMZmlybXdhcmVIYXNoEikKEGZpcm13YXJlX3ZlcnNpb24YAiABKAlSD2Zp'
    'cm13YXJlVmVyc2lvbhIYCgdlbmFibGVkGAMgASgIUgdlbmFibGVkQgwKCl9ibHVldG9vdGg=');

@$core.Deprecated('Use insertRemoveSDCardRequestDescriptor instead')
const InsertRemoveSDCardRequest$json = {
  '1': 'InsertRemoveSDCardRequest',
  '2': [
    {
      '1': 'action',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.InsertRemoveSDCardRequest.SDCardAction',
      '10': 'action'
    },
  ],
  '4': [InsertRemoveSDCardRequest_SDCardAction$json],
};

@$core.Deprecated('Use insertRemoveSDCardRequestDescriptor instead')
const InsertRemoveSDCardRequest_SDCardAction$json = {
  '1': 'SDCardAction',
  '2': [
    {'1': 'REMOVE_CARD', '2': 0},
    {'1': 'INSERT_CARD', '2': 1},
  ],
};

/// Descriptor for `InsertRemoveSDCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List insertRemoveSDCardRequestDescriptor = $convert.base64Decode(
    'ChlJbnNlcnRSZW1vdmVTRENhcmRSZXF1ZXN0ElQKBmFjdGlvbhgBIAEoDjI8LnNoaWZ0Y3J5cH'
    'RvLmJpdGJveDAyLkluc2VydFJlbW92ZVNEQ2FyZFJlcXVlc3QuU0RDYXJkQWN0aW9uUgZhY3Rp'
    'b24iMAoMU0RDYXJkQWN0aW9uEg8KC1JFTU9WRV9DQVJEEAASDwoLSU5TRVJUX0NBUkQQAQ==');

@$core.Deprecated('Use resetRequestDescriptor instead')
const ResetRequest$json = {
  '1': 'ResetRequest',
};

/// Descriptor for `ResetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetRequestDescriptor =
    $convert.base64Decode('CgxSZXNldFJlcXVlc3Q=');

@$core.Deprecated('Use setDeviceLanguageRequestDescriptor instead')
const SetDeviceLanguageRequest$json = {
  '1': 'SetDeviceLanguageRequest',
  '2': [
    {'1': 'language', '3': 1, '4': 1, '5': 9, '10': 'language'},
  ],
};

/// Descriptor for `SetDeviceLanguageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDeviceLanguageRequestDescriptor =
    $convert.base64Decode(
        'ChhTZXREZXZpY2VMYW5ndWFnZVJlcXVlc3QSGgoIbGFuZ3VhZ2UYASABKAlSCGxhbmd1YWdl');

@$core.Deprecated('Use setDeviceNameRequestDescriptor instead')
const SetDeviceNameRequest$json = {
  '1': 'SetDeviceNameRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `SetDeviceNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDeviceNameRequestDescriptor = $convert
    .base64Decode('ChRTZXREZXZpY2VOYW1lUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use setPasswordRequestDescriptor instead')
const SetPasswordRequest$json = {
  '1': 'SetPasswordRequest',
  '2': [
    {'1': 'entropy', '3': 1, '4': 1, '5': 12, '10': 'entropy'},
  ],
};

/// Descriptor for `SetPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPasswordRequestDescriptor =
    $convert.base64Decode(
        'ChJTZXRQYXNzd29yZFJlcXVlc3QSGAoHZW50cm9weRgBIAEoDFIHZW50cm9weQ==');
