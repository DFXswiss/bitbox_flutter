// This is a generated file - do not edit.
//
// Generated from common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pubResponseDescriptor instead')
const PubResponse$json = {
  '1': 'PubResponse',
  '2': [
    {'1': 'pub', '3': 1, '4': 1, '5': 9, '10': 'pub'},
  ],
};

/// Descriptor for `PubResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pubResponseDescriptor =
    $convert.base64Decode('CgtQdWJSZXNwb25zZRIQCgNwdWIYASABKAlSA3B1Yg==');

@$core.Deprecated('Use rootFingerprintRequestDescriptor instead')
const RootFingerprintRequest$json = {
  '1': 'RootFingerprintRequest',
};

/// Descriptor for `RootFingerprintRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rootFingerprintRequestDescriptor =
    $convert.base64Decode('ChZSb290RmluZ2VycHJpbnRSZXF1ZXN0');

@$core.Deprecated('Use rootFingerprintResponseDescriptor instead')
const RootFingerprintResponse$json = {
  '1': 'RootFingerprintResponse',
  '2': [
    {'1': 'fingerprint', '3': 1, '4': 1, '5': 12, '10': 'fingerprint'},
  ],
};

/// Descriptor for `RootFingerprintResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rootFingerprintResponseDescriptor =
    $convert.base64Decode(
        'ChdSb290RmluZ2VycHJpbnRSZXNwb25zZRIgCgtmaW5nZXJwcmludBgBIAEoDFILZmluZ2VycH'
        'JpbnQ=');

@$core.Deprecated('Use xPubDescriptor instead')
const XPub$json = {
  '1': 'XPub',
  '2': [
    {'1': 'depth', '3': 1, '4': 1, '5': 12, '10': 'depth'},
    {
      '1': 'parent_fingerprint',
      '3': 2,
      '4': 1,
      '5': 12,
      '10': 'parentFingerprint'
    },
    {'1': 'child_num', '3': 3, '4': 1, '5': 13, '10': 'childNum'},
    {'1': 'chain_code', '3': 4, '4': 1, '5': 12, '10': 'chainCode'},
    {'1': 'public_key', '3': 5, '4': 1, '5': 12, '10': 'publicKey'},
  ],
};

/// Descriptor for `XPub`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xPubDescriptor = $convert.base64Decode(
    'CgRYUHViEhQKBWRlcHRoGAEgASgMUgVkZXB0aBItChJwYXJlbnRfZmluZ2VycHJpbnQYAiABKA'
    'xSEXBhcmVudEZpbmdlcnByaW50EhsKCWNoaWxkX251bRgDIAEoDVIIY2hpbGROdW0SHQoKY2hh'
    'aW5fY29kZRgEIAEoDFIJY2hhaW5Db2RlEh0KCnB1YmxpY19rZXkYBSABKAxSCXB1YmxpY0tleQ'
    '==');

@$core.Deprecated('Use keypathDescriptor instead')
const Keypath$json = {
  '1': 'Keypath',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
  ],
};

/// Descriptor for `Keypath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keypathDescriptor =
    $convert.base64Decode('CgdLZXlwYXRoEhgKB2tleXBhdGgYASADKA1SB2tleXBhdGg=');

@$core.Deprecated('Use keyOriginInfoDescriptor instead')
const KeyOriginInfo$json = {
  '1': 'KeyOriginInfo',
  '2': [
    {'1': 'root_fingerprint', '3': 1, '4': 1, '5': 12, '10': 'rootFingerprint'},
    {'1': 'keypath', '3': 2, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'xpub',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.XPub',
      '10': 'xpub'
    },
  ],
};

/// Descriptor for `KeyOriginInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyOriginInfoDescriptor = $convert.base64Decode(
    'Cg1LZXlPcmlnaW5JbmZvEikKEHJvb3RfZmluZ2VycHJpbnQYASABKAxSD3Jvb3RGaW5nZXJwcm'
    'ludBIYCgdrZXlwYXRoGAIgAygNUgdrZXlwYXRoEi4KBHhwdWIYAyABKAsyGi5zaGlmdGNyeXB0'
    'by5iaXRib3gwMi5YUHViUgR4cHVi');
