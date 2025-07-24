// This is a generated file - do not edit.
//
// Generated from eth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eTHCoinDescriptor instead')
const ETHCoin$json = {
  '1': 'ETHCoin',
  '2': [
    {'1': 'ETH', '2': 0},
    {'1': 'RopstenETH', '2': 1},
    {'1': 'RinkebyETH', '2': 2},
  ],
};

/// Descriptor for `ETHCoin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eTHCoinDescriptor = $convert.base64Decode(
    'CgdFVEhDb2luEgcKA0VUSBAAEg4KClJvcHN0ZW5FVEgQARIOCgpSaW5rZWJ5RVRIEAI=');

@$core.Deprecated('Use eTHAddressCaseDescriptor instead')
const ETHAddressCase$json = {
  '1': 'ETHAddressCase',
  '2': [
    {'1': 'ETH_ADDRESS_CASE_MIXED', '2': 0},
    {'1': 'ETH_ADDRESS_CASE_UPPER', '2': 1},
    {'1': 'ETH_ADDRESS_CASE_LOWER', '2': 2},
  ],
};

/// Descriptor for `ETHAddressCase`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eTHAddressCaseDescriptor = $convert.base64Decode(
    'Cg5FVEhBZGRyZXNzQ2FzZRIaChZFVEhfQUREUkVTU19DQVNFX01JWEVEEAASGgoWRVRIX0FERF'
    'JFU1NfQ0FTRV9VUFBFUhABEhoKFkVUSF9BRERSRVNTX0NBU0VfTE9XRVIQAg==');

@$core.Deprecated('Use eTHPubRequestDescriptor instead')
const ETHPubRequest$json = {
  '1': 'ETHPubRequest',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'coin',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHCoin',
      '10': 'coin'
    },
    {
      '1': 'output_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHPubRequest.OutputType',
      '10': 'outputType'
    },
    {'1': 'display', '3': 4, '4': 1, '5': 8, '10': 'display'},
    {'1': 'contract_address', '3': 5, '4': 1, '5': 12, '10': 'contractAddress'},
    {'1': 'chain_id', '3': 6, '4': 1, '5': 4, '10': 'chainId'},
  ],
  '4': [ETHPubRequest_OutputType$json],
};

@$core.Deprecated('Use eTHPubRequestDescriptor instead')
const ETHPubRequest_OutputType$json = {
  '1': 'OutputType',
  '2': [
    {'1': 'ADDRESS', '2': 0},
    {'1': 'XPUB', '2': 1},
  ],
};

/// Descriptor for `ETHPubRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHPubRequestDescriptor = $convert.base64Decode(
    'Cg1FVEhQdWJSZXF1ZXN0EhgKB2tleXBhdGgYASADKA1SB2tleXBhdGgSMQoEY29pbhgCIAEoDj'
    'IdLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkVUSENvaW5SBGNvaW4STwoLb3V0cHV0X3R5cGUYAyAB'
    'KA4yLi5zaGlmdGNyeXB0by5iaXRib3gwMi5FVEhQdWJSZXF1ZXN0Lk91dHB1dFR5cGVSCm91dH'
    'B1dFR5cGUSGAoHZGlzcGxheRgEIAEoCFIHZGlzcGxheRIpChBjb250cmFjdF9hZGRyZXNzGAUg'
    'ASgMUg9jb250cmFjdEFkZHJlc3MSGQoIY2hhaW5faWQYBiABKARSB2NoYWluSWQiIwoKT3V0cH'
    'V0VHlwZRILCgdBRERSRVNTEAASCAoEWFBVQhAB');

@$core.Deprecated('Use eTHSignRequestDescriptor instead')
const ETHSignRequest$json = {
  '1': 'ETHSignRequest',
  '2': [
    {
      '1': 'coin',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHCoin',
      '10': 'coin'
    },
    {'1': 'keypath', '3': 2, '4': 3, '5': 13, '10': 'keypath'},
    {'1': 'nonce', '3': 3, '4': 1, '5': 12, '10': 'nonce'},
    {'1': 'gas_price', '3': 4, '4': 1, '5': 12, '10': 'gasPrice'},
    {'1': 'gas_limit', '3': 5, '4': 1, '5': 12, '10': 'gasLimit'},
    {'1': 'recipient', '3': 6, '4': 1, '5': 12, '10': 'recipient'},
    {'1': 'value', '3': 7, '4': 1, '5': 12, '10': 'value'},
    {'1': 'data', '3': 8, '4': 1, '5': 12, '10': 'data'},
    {
      '1': 'host_nonce_commitment',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoHostNonceCommitment',
      '10': 'hostNonceCommitment'
    },
    {'1': 'chain_id', '3': 10, '4': 1, '5': 4, '10': 'chainId'},
    {
      '1': 'address_case',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHAddressCase',
      '10': 'addressCase'
    },
  ],
};

/// Descriptor for `ETHSignRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHSignRequestDescriptor = $convert.base64Decode(
    'Cg5FVEhTaWduUmVxdWVzdBIxCgRjb2luGAEgASgOMh0uc2hpZnRjcnlwdG8uYml0Ym94MDIuRV'
    'RIQ29pblIEY29pbhIYCgdrZXlwYXRoGAIgAygNUgdrZXlwYXRoEhQKBW5vbmNlGAMgASgMUgVu'
    'b25jZRIbCglnYXNfcHJpY2UYBCABKAxSCGdhc1ByaWNlEhsKCWdhc19saW1pdBgFIAEoDFIIZ2'
    'FzTGltaXQSHAoJcmVjaXBpZW50GAYgASgMUglyZWNpcGllbnQSFAoFdmFsdWUYByABKAxSBXZh'
    'bHVlEhIKBGRhdGEYCCABKAxSBGRhdGESZwoVaG9zdF9ub25jZV9jb21taXRtZW50GAkgASgLMj'
    'Muc2hpZnRjcnlwdG8uYml0Ym94MDIuQW50aUtsZXB0b0hvc3ROb25jZUNvbW1pdG1lbnRSE2hv'
    'c3ROb25jZUNvbW1pdG1lbnQSGQoIY2hhaW5faWQYCiABKARSB2NoYWluSWQSRwoMYWRkcmVzc1'
    '9jYXNlGAsgASgOMiQuc2hpZnRjcnlwdG8uYml0Ym94MDIuRVRIQWRkcmVzc0Nhc2VSC2FkZHJl'
    'c3NDYXNl');

@$core.Deprecated('Use eTHSignEIP1559RequestDescriptor instead')
const ETHSignEIP1559Request$json = {
  '1': 'ETHSignEIP1559Request',
  '2': [
    {'1': 'chain_id', '3': 1, '4': 1, '5': 4, '10': 'chainId'},
    {'1': 'keypath', '3': 2, '4': 3, '5': 13, '10': 'keypath'},
    {'1': 'nonce', '3': 3, '4': 1, '5': 12, '10': 'nonce'},
    {
      '1': 'max_priority_fee_per_gas',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'maxPriorityFeePerGas'
    },
    {'1': 'max_fee_per_gas', '3': 5, '4': 1, '5': 12, '10': 'maxFeePerGas'},
    {'1': 'gas_limit', '3': 6, '4': 1, '5': 12, '10': 'gasLimit'},
    {'1': 'recipient', '3': 7, '4': 1, '5': 12, '10': 'recipient'},
    {'1': 'value', '3': 8, '4': 1, '5': 12, '10': 'value'},
    {'1': 'data', '3': 9, '4': 1, '5': 12, '10': 'data'},
    {
      '1': 'host_nonce_commitment',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoHostNonceCommitment',
      '10': 'hostNonceCommitment'
    },
    {
      '1': 'address_case',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHAddressCase',
      '10': 'addressCase'
    },
  ],
};

/// Descriptor for `ETHSignEIP1559Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHSignEIP1559RequestDescriptor = $convert.base64Decode(
    'ChVFVEhTaWduRUlQMTU1OVJlcXVlc3QSGQoIY2hhaW5faWQYASABKARSB2NoYWluSWQSGAoHa2'
    'V5cGF0aBgCIAMoDVIHa2V5cGF0aBIUCgVub25jZRgDIAEoDFIFbm9uY2USNgoYbWF4X3ByaW9y'
    'aXR5X2ZlZV9wZXJfZ2FzGAQgASgMUhRtYXhQcmlvcml0eUZlZVBlckdhcxIlCg9tYXhfZmVlX3'
    'Blcl9nYXMYBSABKAxSDG1heEZlZVBlckdhcxIbCglnYXNfbGltaXQYBiABKAxSCGdhc0xpbWl0'
    'EhwKCXJlY2lwaWVudBgHIAEoDFIJcmVjaXBpZW50EhQKBXZhbHVlGAggASgMUgV2YWx1ZRISCg'
    'RkYXRhGAkgASgMUgRkYXRhEmcKFWhvc3Rfbm9uY2VfY29tbWl0bWVudBgKIAEoCzIzLnNoaWZ0'
    'Y3J5cHRvLmJpdGJveDAyLkFudGlLbGVwdG9Ib3N0Tm9uY2VDb21taXRtZW50UhNob3N0Tm9uY2'
    'VDb21taXRtZW50EkcKDGFkZHJlc3NfY2FzZRgLIAEoDjIkLnNoaWZ0Y3J5cHRvLmJpdGJveDAy'
    'LkVUSEFkZHJlc3NDYXNlUgthZGRyZXNzQ2FzZQ==');

@$core.Deprecated('Use eTHSignMessageRequestDescriptor instead')
const ETHSignMessageRequest$json = {
  '1': 'ETHSignMessageRequest',
  '2': [
    {
      '1': 'coin',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHCoin',
      '10': 'coin'
    },
    {'1': 'keypath', '3': 2, '4': 3, '5': 13, '10': 'keypath'},
    {'1': 'msg', '3': 3, '4': 1, '5': 12, '10': 'msg'},
    {
      '1': 'host_nonce_commitment',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoHostNonceCommitment',
      '10': 'hostNonceCommitment'
    },
    {'1': 'chain_id', '3': 5, '4': 1, '5': 4, '10': 'chainId'},
  ],
};

/// Descriptor for `ETHSignMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHSignMessageRequestDescriptor = $convert.base64Decode(
    'ChVFVEhTaWduTWVzc2FnZVJlcXVlc3QSMQoEY29pbhgBIAEoDjIdLnNoaWZ0Y3J5cHRvLmJpdG'
    'JveDAyLkVUSENvaW5SBGNvaW4SGAoHa2V5cGF0aBgCIAMoDVIHa2V5cGF0aBIQCgNtc2cYAyAB'
    'KAxSA21zZxJnChVob3N0X25vbmNlX2NvbW1pdG1lbnQYBCABKAsyMy5zaGlmdGNyeXB0by5iaX'
    'Rib3gwMi5BbnRpS2xlcHRvSG9zdE5vbmNlQ29tbWl0bWVudFITaG9zdE5vbmNlQ29tbWl0bWVu'
    'dBIZCghjaGFpbl9pZBgFIAEoBFIHY2hhaW5JZA==');

@$core.Deprecated('Use eTHSignResponseDescriptor instead')
const ETHSignResponse$json = {
  '1': 'ETHSignResponse',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `ETHSignResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHSignResponseDescriptor = $convert.base64Decode(
    'Cg9FVEhTaWduUmVzcG9uc2USHAoJc2lnbmF0dXJlGAEgASgMUglzaWduYXR1cmU=');

@$core.Deprecated('Use eTHSignTypedMessageRequestDescriptor instead')
const ETHSignTypedMessageRequest$json = {
  '1': 'ETHSignTypedMessageRequest',
  '2': [
    {'1': 'chain_id', '3': 1, '4': 1, '5': 4, '10': 'chainId'},
    {'1': 'keypath', '3': 2, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'types',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignTypedMessageRequest.StructType',
      '10': 'types'
    },
    {'1': 'primary_type', '3': 4, '4': 1, '5': 9, '10': 'primaryType'},
    {
      '1': 'host_nonce_commitment',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoHostNonceCommitment',
      '10': 'hostNonceCommitment'
    },
  ],
  '3': [
    ETHSignTypedMessageRequest_MemberType$json,
    ETHSignTypedMessageRequest_Member$json,
    ETHSignTypedMessageRequest_StructType$json
  ],
  '4': [ETHSignTypedMessageRequest_DataType$json],
};

@$core.Deprecated('Use eTHSignTypedMessageRequestDescriptor instead')
const ETHSignTypedMessageRequest_MemberType$json = {
  '1': 'MemberType',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHSignTypedMessageRequest.DataType',
      '10': 'type'
    },
    {'1': 'size', '3': 2, '4': 1, '5': 13, '10': 'size'},
    {'1': 'struct_name', '3': 3, '4': 1, '5': 9, '10': 'structName'},
    {
      '1': 'array_type',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignTypedMessageRequest.MemberType',
      '10': 'arrayType'
    },
  ],
};

@$core.Deprecated('Use eTHSignTypedMessageRequestDescriptor instead')
const ETHSignTypedMessageRequest_Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignTypedMessageRequest.MemberType',
      '10': 'type'
    },
  ],
};

@$core.Deprecated('Use eTHSignTypedMessageRequestDescriptor instead')
const ETHSignTypedMessageRequest_StructType$json = {
  '1': 'StructType',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'members',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignTypedMessageRequest.Member',
      '10': 'members'
    },
  ],
};

@$core.Deprecated('Use eTHSignTypedMessageRequestDescriptor instead')
const ETHSignTypedMessageRequest_DataType$json = {
  '1': 'DataType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'BYTES', '2': 1},
    {'1': 'UINT', '2': 2},
    {'1': 'INT', '2': 3},
    {'1': 'BOOL', '2': 4},
    {'1': 'ADDRESS', '2': 5},
    {'1': 'STRING', '2': 6},
    {'1': 'ARRAY', '2': 7},
    {'1': 'STRUCT', '2': 8},
  ],
};

/// Descriptor for `ETHSignTypedMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHSignTypedMessageRequestDescriptor = $convert.base64Decode(
    'ChpFVEhTaWduVHlwZWRNZXNzYWdlUmVxdWVzdBIZCghjaGFpbl9pZBgBIAEoBFIHY2hhaW5JZB'
    'IYCgdrZXlwYXRoGAIgAygNUgdrZXlwYXRoElEKBXR5cGVzGAMgAygLMjsuc2hpZnRjcnlwdG8u'
    'Yml0Ym94MDIuRVRIU2lnblR5cGVkTWVzc2FnZVJlcXVlc3QuU3RydWN0VHlwZVIFdHlwZXMSIQ'
    'oMcHJpbWFyeV90eXBlGAQgASgJUgtwcmltYXJ5VHlwZRJnChVob3N0X25vbmNlX2NvbW1pdG1l'
    'bnQYBSABKAsyMy5zaGlmdGNyeXB0by5iaXRib3gwMi5BbnRpS2xlcHRvSG9zdE5vbmNlQ29tbW'
    'l0bWVudFITaG9zdE5vbmNlQ29tbWl0bWVudBrsAQoKTWVtYmVyVHlwZRJNCgR0eXBlGAEgASgO'
    'Mjkuc2hpZnRjcnlwdG8uYml0Ym94MDIuRVRIU2lnblR5cGVkTWVzc2FnZVJlcXVlc3QuRGF0YV'
    'R5cGVSBHR5cGUSEgoEc2l6ZRgCIAEoDVIEc2l6ZRIfCgtzdHJ1Y3RfbmFtZRgDIAEoCVIKc3Ry'
    'dWN0TmFtZRJaCgphcnJheV90eXBlGAQgASgLMjsuc2hpZnRjcnlwdG8uYml0Ym94MDIuRVRIU2'
    'lnblR5cGVkTWVzc2FnZVJlcXVlc3QuTWVtYmVyVHlwZVIJYXJyYXlUeXBlGm0KBk1lbWJlchIS'
    'CgRuYW1lGAEgASgJUgRuYW1lEk8KBHR5cGUYAiABKAsyOy5zaGlmdGNyeXB0by5iaXRib3gwMi'
    '5FVEhTaWduVHlwZWRNZXNzYWdlUmVxdWVzdC5NZW1iZXJUeXBlUgR0eXBlGnMKClN0cnVjdFR5'
    'cGUSEgoEbmFtZRgBIAEoCVIEbmFtZRJRCgdtZW1iZXJzGAIgAygLMjcuc2hpZnRjcnlwdG8uYm'
    'l0Ym94MDIuRVRIU2lnblR5cGVkTWVzc2FnZVJlcXVlc3QuTWVtYmVyUgdtZW1iZXJzIm8KCERh'
    'dGFUeXBlEgsKB1VOS05PV04QABIJCgVCWVRFUxABEggKBFVJTlQQAhIHCgNJTlQQAxIICgRCT0'
    '9MEAQSCwoHQUREUkVTUxAFEgoKBlNUUklORxAGEgkKBUFSUkFZEAcSCgoGU1RSVUNUEAg=');

@$core.Deprecated('Use eTHTypedMessageValueResponseDescriptor instead')
const ETHTypedMessageValueResponse$json = {
  '1': 'ETHTypedMessageValueResponse',
  '2': [
    {
      '1': 'root_object',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.ETHTypedMessageValueResponse.RootObject',
      '10': 'rootObject'
    },
    {'1': 'path', '3': 2, '4': 3, '5': 13, '10': 'path'},
  ],
  '4': [ETHTypedMessageValueResponse_RootObject$json],
};

@$core.Deprecated('Use eTHTypedMessageValueResponseDescriptor instead')
const ETHTypedMessageValueResponse_RootObject$json = {
  '1': 'RootObject',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'DOMAIN', '2': 1},
    {'1': 'MESSAGE', '2': 2},
  ],
};

/// Descriptor for `ETHTypedMessageValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHTypedMessageValueResponseDescriptor = $convert.base64Decode(
    'ChxFVEhUeXBlZE1lc3NhZ2VWYWx1ZVJlc3BvbnNlEl4KC3Jvb3Rfb2JqZWN0GAEgASgOMj0uc2'
    'hpZnRjcnlwdG8uYml0Ym94MDIuRVRIVHlwZWRNZXNzYWdlVmFsdWVSZXNwb25zZS5Sb290T2Jq'
    'ZWN0Ugpyb290T2JqZWN0EhIKBHBhdGgYAiADKA1SBHBhdGgiMgoKUm9vdE9iamVjdBILCgdVTk'
    'tOT1dOEAASCgoGRE9NQUlOEAESCwoHTUVTU0FHRRAC');

@$core.Deprecated('Use eTHTypedMessageValueRequestDescriptor instead')
const ETHTypedMessageValueRequest$json = {
  '1': 'ETHTypedMessageValueRequest',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `ETHTypedMessageValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHTypedMessageValueRequestDescriptor =
    $convert.base64Decode(
        'ChtFVEhUeXBlZE1lc3NhZ2VWYWx1ZVJlcXVlc3QSFAoFdmFsdWUYASABKAxSBXZhbHVl');

@$core.Deprecated('Use eTHRequestDescriptor instead')
const ETHRequest$json = {
  '1': 'ETHRequest',
  '2': [
    {
      '1': 'pub',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHPubRequest',
      '9': 0,
      '10': 'pub'
    },
    {
      '1': 'sign',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignRequest',
      '9': 0,
      '10': 'sign'
    },
    {
      '1': 'sign_msg',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignMessageRequest',
      '9': 0,
      '10': 'signMsg'
    },
    {
      '1': 'antiklepto_signature',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoSignatureRequest',
      '9': 0,
      '10': 'antikleptoSignature'
    },
    {
      '1': 'sign_typed_msg',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignTypedMessageRequest',
      '9': 0,
      '10': 'signTypedMsg'
    },
    {
      '1': 'typed_msg_value',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHTypedMessageValueRequest',
      '9': 0,
      '10': 'typedMsgValue'
    },
    {
      '1': 'sign_eip1559',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignEIP1559Request',
      '9': 0,
      '10': 'signEip1559'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `ETHRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHRequestDescriptor = $convert.base64Decode(
    'CgpFVEhSZXF1ZXN0EjcKA3B1YhgBIAEoCzIjLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkVUSFB1Yl'
    'JlcXVlc3RIAFIDcHViEjoKBHNpZ24YAiABKAsyJC5zaGlmdGNyeXB0by5iaXRib3gwMi5FVEhT'
    'aWduUmVxdWVzdEgAUgRzaWduEkgKCHNpZ25fbXNnGAMgASgLMisuc2hpZnRjcnlwdG8uYml0Ym'
    '94MDIuRVRIU2lnbk1lc3NhZ2VSZXF1ZXN0SABSB3NpZ25Nc2cSZQoUYW50aWtsZXB0b19zaWdu'
    'YXR1cmUYBCABKAsyMC5zaGlmdGNyeXB0by5iaXRib3gwMi5BbnRpS2xlcHRvU2lnbmF0dXJlUm'
    'VxdWVzdEgAUhNhbnRpa2xlcHRvU2lnbmF0dXJlElgKDnNpZ25fdHlwZWRfbXNnGAUgASgLMjAu'
    'c2hpZnRjcnlwdG8uYml0Ym94MDIuRVRIU2lnblR5cGVkTWVzc2FnZVJlcXVlc3RIAFIMc2lnbl'
    'R5cGVkTXNnElsKD3R5cGVkX21zZ192YWx1ZRgGIAEoCzIxLnNoaWZ0Y3J5cHRvLmJpdGJveDAy'
    'LkVUSFR5cGVkTWVzc2FnZVZhbHVlUmVxdWVzdEgAUg10eXBlZE1zZ1ZhbHVlElAKDHNpZ25fZW'
    'lwMTU1ORgHIAEoCzIrLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkVUSFNpZ25FSVAxNTU5UmVxdWVz'
    'dEgAUgtzaWduRWlwMTU1OUIJCgdyZXF1ZXN0');

@$core.Deprecated('Use eTHResponseDescriptor instead')
const ETHResponse$json = {
  '1': 'ETHResponse',
  '2': [
    {
      '1': 'pub',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.PubResponse',
      '9': 0,
      '10': 'pub'
    },
    {
      '1': 'sign',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHSignResponse',
      '9': 0,
      '10': 'sign'
    },
    {
      '1': 'antiklepto_signer_commitment',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoSignerCommitment',
      '9': 0,
      '10': 'antikleptoSignerCommitment'
    },
    {
      '1': 'typed_msg_value',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.ETHTypedMessageValueResponse',
      '9': 0,
      '10': 'typedMsgValue'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `ETHResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHResponseDescriptor = $convert.base64Decode(
    'CgtFVEhSZXNwb25zZRI1CgNwdWIYASABKAsyIS5zaGlmdGNyeXB0by5iaXRib3gwMi5QdWJSZX'
    'Nwb25zZUgAUgNwdWISOwoEc2lnbhgCIAEoCzIlLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkVUSFNp'
    'Z25SZXNwb25zZUgAUgRzaWduEnQKHGFudGlrbGVwdG9fc2lnbmVyX2NvbW1pdG1lbnQYAyABKA'
    'syMC5zaGlmdGNyeXB0by5iaXRib3gwMi5BbnRpS2xlcHRvU2lnbmVyQ29tbWl0bWVudEgAUhph'
    'bnRpa2xlcHRvU2lnbmVyQ29tbWl0bWVudBJcCg90eXBlZF9tc2dfdmFsdWUYBCABKAsyMi5zaG'
    'lmdGNyeXB0by5iaXRib3gwMi5FVEhUeXBlZE1lc3NhZ2VWYWx1ZVJlc3BvbnNlSABSDXR5cGVk'
    'TXNnVmFsdWVCCgoIcmVzcG9uc2U=');
