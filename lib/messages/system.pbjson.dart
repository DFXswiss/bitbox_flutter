// This is a generated file - do not edit.
//
// Generated from system.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rebootRequestDescriptor instead')
const RebootRequest$json = {
  '1': 'RebootRequest',
  '2': [
    {
      '1': 'purpose',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.RebootRequest.Purpose',
      '10': 'purpose'
    },
  ],
  '4': [RebootRequest_Purpose$json],
};

@$core.Deprecated('Use rebootRequestDescriptor instead')
const RebootRequest_Purpose$json = {
  '1': 'Purpose',
  '2': [
    {'1': 'UPGRADE', '2': 0},
    {'1': 'SETTINGS', '2': 1},
  ],
};

/// Descriptor for `RebootRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rebootRequestDescriptor = $convert.base64Decode(
    'Cg1SZWJvb3RSZXF1ZXN0EkUKB3B1cnBvc2UYASABKA4yKy5zaGlmdGNyeXB0by5iaXRib3gwMi'
    '5SZWJvb3RSZXF1ZXN0LlB1cnBvc2VSB3B1cnBvc2UiJAoHUHVycG9zZRILCgdVUEdSQURFEAAS'
    'DAoIU0VUVElOR1MQAQ==');
