// This is a generated file - do not edit.
//
// Generated from perform_attestation.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use performAttestationRequestDescriptor instead')
const PerformAttestationRequest$json = {
  '1': 'PerformAttestationRequest',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 12, '10': 'challenge'},
  ],
};

/// Descriptor for `PerformAttestationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List performAttestationRequestDescriptor =
    $convert.base64Decode(
        'ChlQZXJmb3JtQXR0ZXN0YXRpb25SZXF1ZXN0EhwKCWNoYWxsZW5nZRgBIAEoDFIJY2hhbGxlbm'
        'dl');

@$core.Deprecated('Use performAttestationResponseDescriptor instead')
const PerformAttestationResponse$json = {
  '1': 'PerformAttestationResponse',
  '2': [
    {'1': 'bootloader_hash', '3': 1, '4': 1, '5': 12, '10': 'bootloaderHash'},
    {'1': 'device_pubkey', '3': 2, '4': 1, '5': 12, '10': 'devicePubkey'},
    {'1': 'certificate', '3': 3, '4': 1, '5': 12, '10': 'certificate'},
    {
      '1': 'root_pubkey_identifier',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'rootPubkeyIdentifier'
    },
    {
      '1': 'challenge_signature',
      '3': 5,
      '4': 1,
      '5': 12,
      '10': 'challengeSignature'
    },
  ],
};

/// Descriptor for `PerformAttestationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List performAttestationResponseDescriptor = $convert.base64Decode(
    'ChpQZXJmb3JtQXR0ZXN0YXRpb25SZXNwb25zZRInCg9ib290bG9hZGVyX2hhc2gYASABKAxSDm'
    'Jvb3Rsb2FkZXJIYXNoEiMKDWRldmljZV9wdWJrZXkYAiABKAxSDGRldmljZVB1YmtleRIgCgtj'
    'ZXJ0aWZpY2F0ZRgDIAEoDFILY2VydGlmaWNhdGUSNAoWcm9vdF9wdWJrZXlfaWRlbnRpZmllch'
    'gEIAEoDFIUcm9vdFB1YmtleUlkZW50aWZpZXISLwoTY2hhbGxlbmdlX3NpZ25hdHVyZRgFIAEo'
    'DFISY2hhbGxlbmdlU2lnbmF0dXJl');
