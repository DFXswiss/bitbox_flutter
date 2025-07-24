// This is a generated file - do not edit.
//
// Generated from antiklepto.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use antiKleptoHostNonceCommitmentDescriptor instead')
const AntiKleptoHostNonceCommitment$json = {
  '1': 'AntiKleptoHostNonceCommitment',
  '2': [
    {'1': 'commitment', '3': 1, '4': 1, '5': 12, '10': 'commitment'},
  ],
};

/// Descriptor for `AntiKleptoHostNonceCommitment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List antiKleptoHostNonceCommitmentDescriptor =
    $convert.base64Decode(
        'Ch1BbnRpS2xlcHRvSG9zdE5vbmNlQ29tbWl0bWVudBIeCgpjb21taXRtZW50GAEgASgMUgpjb2'
        '1taXRtZW50');

@$core.Deprecated('Use antiKleptoSignerCommitmentDescriptor instead')
const AntiKleptoSignerCommitment$json = {
  '1': 'AntiKleptoSignerCommitment',
  '2': [
    {'1': 'commitment', '3': 1, '4': 1, '5': 12, '10': 'commitment'},
  ],
};

/// Descriptor for `AntiKleptoSignerCommitment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List antiKleptoSignerCommitmentDescriptor =
    $convert.base64Decode(
        'ChpBbnRpS2xlcHRvU2lnbmVyQ29tbWl0bWVudBIeCgpjb21taXRtZW50GAEgASgMUgpjb21taX'
        'RtZW50');

@$core.Deprecated('Use antiKleptoSignatureRequestDescriptor instead')
const AntiKleptoSignatureRequest$json = {
  '1': 'AntiKleptoSignatureRequest',
  '2': [
    {'1': 'host_nonce', '3': 1, '4': 1, '5': 12, '10': 'hostNonce'},
  ],
};

/// Descriptor for `AntiKleptoSignatureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List antiKleptoSignatureRequestDescriptor =
    $convert.base64Decode(
        'ChpBbnRpS2xlcHRvU2lnbmF0dXJlUmVxdWVzdBIdCgpob3N0X25vbmNlGAEgASgMUglob3N0Tm'
        '9uY2U=');
