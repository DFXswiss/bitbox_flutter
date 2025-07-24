// This is a generated file - do not edit.
//
// Generated from keystore.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use electrumEncryptionKeyRequestDescriptor instead')
const ElectrumEncryptionKeyRequest$json = {
  '1': 'ElectrumEncryptionKeyRequest',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
  ],
};

/// Descriptor for `ElectrumEncryptionKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List electrumEncryptionKeyRequestDescriptor =
    $convert.base64Decode(
        'ChxFbGVjdHJ1bUVuY3J5cHRpb25LZXlSZXF1ZXN0EhgKB2tleXBhdGgYASADKA1SB2tleXBhdG'
        'g=');

@$core.Deprecated('Use electrumEncryptionKeyResponseDescriptor instead')
const ElectrumEncryptionKeyResponse$json = {
  '1': 'ElectrumEncryptionKeyResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `ElectrumEncryptionKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List electrumEncryptionKeyResponseDescriptor =
    $convert.base64Decode(
        'Ch1FbGVjdHJ1bUVuY3J5cHRpb25LZXlSZXNwb25zZRIQCgNrZXkYASABKAlSA2tleQ==');

@$core.Deprecated('Use bIP85RequestDescriptor instead')
const BIP85Request$json = {
  '1': 'BIP85Request',
  '2': [
    {
      '1': 'bip39',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'bip39'
    },
    {
      '1': 'ln',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BIP85Request.AppLn',
      '9': 0,
      '10': 'ln'
    },
  ],
  '3': [BIP85Request_AppLn$json],
  '8': [
    {'1': 'app'},
  ],
};

@$core.Deprecated('Use bIP85RequestDescriptor instead')
const BIP85Request_AppLn$json = {
  '1': 'AppLn',
  '2': [
    {'1': 'account_number', '3': 1, '4': 1, '5': 13, '10': 'accountNumber'},
  ],
};

/// Descriptor for `BIP85Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bIP85RequestDescriptor = $convert.base64Decode(
    'CgxCSVA4NVJlcXVlc3QSLgoFYmlwMzkYASABKAsyFi5nb29nbGUucHJvdG9idWYuRW1wdHlIAF'
    'IFYmlwMzkSOgoCbG4YAiABKAsyKC5zaGlmdGNyeXB0by5iaXRib3gwMi5CSVA4NVJlcXVlc3Qu'
    'QXBwTG5IAFICbG4aLgoFQXBwTG4SJQoOYWNjb3VudF9udW1iZXIYASABKA1SDWFjY291bnROdW'
    '1iZXJCBQoDYXBw');

@$core.Deprecated('Use bIP85ResponseDescriptor instead')
const BIP85Response$json = {
  '1': 'BIP85Response',
  '2': [
    {
      '1': 'bip39',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'bip39'
    },
    {'1': 'ln', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'ln'},
  ],
  '8': [
    {'1': 'app'},
  ],
};

/// Descriptor for `BIP85Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bIP85ResponseDescriptor = $convert.base64Decode(
    'Cg1CSVA4NVJlc3BvbnNlEi4KBWJpcDM5GAEgASgLMhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5SA'
    'BSBWJpcDM5EhAKAmxuGAIgASgMSABSAmxuQgUKA2FwcA==');
