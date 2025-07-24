// This is a generated file - do not edit.
//
// Generated from btc.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bTCCoinDescriptor instead')
const BTCCoin$json = {
  '1': 'BTCCoin',
  '2': [
    {'1': 'BTC', '2': 0},
    {'1': 'TBTC', '2': 1},
    {'1': 'LTC', '2': 2},
    {'1': 'TLTC', '2': 3},
    {'1': 'RBTC', '2': 4},
  ],
};

/// Descriptor for `BTCCoin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bTCCoinDescriptor = $convert.base64Decode(
    'CgdCVENDb2luEgcKA0JUQxAAEggKBFRCVEMQARIHCgNMVEMQAhIICgRUTFRDEAMSCAoEUkJUQx'
    'AE');

@$core.Deprecated('Use bTCOutputTypeDescriptor instead')
const BTCOutputType$json = {
  '1': 'BTCOutputType',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'P2PKH', '2': 1},
    {'1': 'P2SH', '2': 2},
    {'1': 'P2WPKH', '2': 3},
    {'1': 'P2WSH', '2': 4},
    {'1': 'P2TR', '2': 5},
  ],
};

/// Descriptor for `BTCOutputType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bTCOutputTypeDescriptor = $convert.base64Decode(
    'Cg1CVENPdXRwdXRUeXBlEgsKB1VOS05PV04QABIJCgVQMlBLSBABEggKBFAyU0gQAhIKCgZQMl'
    'dQS0gQAxIJCgVQMldTSBAEEggKBFAyVFIQBQ==');

@$core.Deprecated('Use bTCScriptConfigDescriptor instead')
const BTCScriptConfig$json = {
  '1': 'BTCScriptConfig',
  '2': [
    {
      '1': 'simple_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig.SimpleType',
      '9': 0,
      '10': 'simpleType'
    },
    {
      '1': 'multisig',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig.Multisig',
      '9': 0,
      '10': 'multisig'
    },
    {
      '1': 'policy',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig.Policy',
      '9': 0,
      '10': 'policy'
    },
  ],
  '3': [BTCScriptConfig_Multisig$json, BTCScriptConfig_Policy$json],
  '4': [BTCScriptConfig_SimpleType$json],
  '8': [
    {'1': 'config'},
  ],
};

@$core.Deprecated('Use bTCScriptConfigDescriptor instead')
const BTCScriptConfig_Multisig$json = {
  '1': 'Multisig',
  '2': [
    {'1': 'threshold', '3': 1, '4': 1, '5': 13, '10': 'threshold'},
    {
      '1': 'xpubs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.XPub',
      '10': 'xpubs'
    },
    {'1': 'our_xpub_index', '3': 3, '4': 1, '5': 13, '10': 'ourXpubIndex'},
    {
      '1': 'script_type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig.Multisig.ScriptType',
      '10': 'scriptType'
    },
  ],
  '4': [BTCScriptConfig_Multisig_ScriptType$json],
};

@$core.Deprecated('Use bTCScriptConfigDescriptor instead')
const BTCScriptConfig_Multisig_ScriptType$json = {
  '1': 'ScriptType',
  '2': [
    {'1': 'P2WSH', '2': 0},
    {'1': 'P2WSH_P2SH', '2': 1},
  ],
};

@$core.Deprecated('Use bTCScriptConfigDescriptor instead')
const BTCScriptConfig_Policy$json = {
  '1': 'Policy',
  '2': [
    {'1': 'policy', '3': 1, '4': 1, '5': 9, '10': 'policy'},
    {
      '1': 'keys',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.KeyOriginInfo',
      '10': 'keys'
    },
  ],
};

@$core.Deprecated('Use bTCScriptConfigDescriptor instead')
const BTCScriptConfig_SimpleType$json = {
  '1': 'SimpleType',
  '2': [
    {'1': 'P2WPKH_P2SH', '2': 0},
    {'1': 'P2WPKH', '2': 1},
    {'1': 'P2TR', '2': 2},
  ],
};

/// Descriptor for `BTCScriptConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCScriptConfigDescriptor = $convert.base64Decode(
    'Cg9CVENTY3JpcHRDb25maWcSUwoLc2ltcGxlX3R5cGUYASABKA4yMC5zaGlmdGNyeXB0by5iaX'
    'Rib3gwMi5CVENTY3JpcHRDb25maWcuU2ltcGxlVHlwZUgAUgpzaW1wbGVUeXBlEkwKCG11bHRp'
    'c2lnGAIgASgLMi4uc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRDU2NyaXB0Q29uZmlnLk11bHRpc2'
    'lnSABSCG11bHRpc2lnEkYKBnBvbGljeRgDIAEoCzIsLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJU'
    'Q1NjcmlwdENvbmZpZy5Qb2xpY3lIAFIGcG9saWN5GoUCCghNdWx0aXNpZxIcCgl0aHJlc2hvbG'
    'QYASABKA1SCXRocmVzaG9sZBIwCgV4cHVicxgCIAMoCzIaLnNoaWZ0Y3J5cHRvLmJpdGJveDAy'
    'LlhQdWJSBXhwdWJzEiQKDm91cl94cHViX2luZGV4GAMgASgNUgxvdXJYcHViSW5kZXgSWgoLc2'
    'NyaXB0X3R5cGUYBCABKA4yOS5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENTY3JpcHRDb25maWcu'
    'TXVsdGlzaWcuU2NyaXB0VHlwZVIKc2NyaXB0VHlwZSInCgpTY3JpcHRUeXBlEgkKBVAyV1NIEA'
    'ASDgoKUDJXU0hfUDJTSBABGlkKBlBvbGljeRIWCgZwb2xpY3kYASABKAlSBnBvbGljeRI3CgRr'
    'ZXlzGAIgAygLMiMuc2hpZnRjcnlwdG8uYml0Ym94MDIuS2V5T3JpZ2luSW5mb1IEa2V5cyIzCg'
    'pTaW1wbGVUeXBlEg8KC1AyV1BLSF9QMlNIEAASCgoGUDJXUEtIEAESCAoEUDJUUhACQggKBmNv'
    'bmZpZw==');

@$core.Deprecated('Use bTCPubRequestDescriptor instead')
const BTCPubRequest$json = {
  '1': 'BTCPubRequest',
  '2': [
    {
      '1': 'coin',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCCoin',
      '10': 'coin'
    },
    {'1': 'keypath', '3': 2, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'xpub_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCPubRequest.XPubType',
      '9': 0,
      '10': 'xpubType'
    },
    {
      '1': 'script_config',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig',
      '9': 0,
      '10': 'scriptConfig'
    },
    {'1': 'display', '3': 5, '4': 1, '5': 8, '10': 'display'},
  ],
  '4': [BTCPubRequest_XPubType$json],
  '8': [
    {'1': 'output'},
  ],
};

@$core.Deprecated('Use bTCPubRequestDescriptor instead')
const BTCPubRequest_XPubType$json = {
  '1': 'XPubType',
  '2': [
    {'1': 'TPUB', '2': 0},
    {'1': 'XPUB', '2': 1},
    {'1': 'YPUB', '2': 2},
    {'1': 'ZPUB', '2': 3},
    {'1': 'VPUB', '2': 4},
    {'1': 'UPUB', '2': 5},
    {'1': 'CAPITAL_VPUB', '2': 6},
    {'1': 'CAPITAL_ZPUB', '2': 7},
    {'1': 'CAPITAL_UPUB', '2': 8},
    {'1': 'CAPITAL_YPUB', '2': 9},
  ],
};

/// Descriptor for `BTCPubRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCPubRequestDescriptor = $convert.base64Decode(
    'Cg1CVENQdWJSZXF1ZXN0EjEKBGNvaW4YASABKA4yHS5zaGlmdGNyeXB0by5iaXRib3gwMi5CVE'
    'NDb2luUgRjb2luEhgKB2tleXBhdGgYAiADKA1SB2tleXBhdGgSSwoJeHB1Yl90eXBlGAMgASgO'
    'Miwuc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRDUHViUmVxdWVzdC5YUHViVHlwZUgAUgh4cHViVH'
    'lwZRJMCg1zY3JpcHRfY29uZmlnGAQgASgLMiUuc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRDU2Ny'
    'aXB0Q29uZmlnSABSDHNjcmlwdENvbmZpZxIYCgdkaXNwbGF5GAUgASgIUgdkaXNwbGF5Io4BCg'
    'hYUHViVHlwZRIICgRUUFVCEAASCAoEWFBVQhABEggKBFlQVUIQAhIICgRaUFVCEAMSCAoEVlBV'
    'QhAEEggKBFVQVUIQBRIQCgxDQVBJVEFMX1ZQVUIQBhIQCgxDQVBJVEFMX1pQVUIQBxIQCgxDQV'
    'BJVEFMX1VQVUIQCBIQCgxDQVBJVEFMX1lQVUIQCUIICgZvdXRwdXQ=');

@$core.Deprecated('Use bTCScriptConfigWithKeypathDescriptor instead')
const BTCScriptConfigWithKeypath$json = {
  '1': 'BTCScriptConfigWithKeypath',
  '2': [
    {
      '1': 'script_config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig',
      '10': 'scriptConfig'
    },
    {'1': 'keypath', '3': 3, '4': 3, '5': 13, '10': 'keypath'},
  ],
};

/// Descriptor for `BTCScriptConfigWithKeypath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCScriptConfigWithKeypathDescriptor =
    $convert.base64Decode(
        'ChpCVENTY3JpcHRDb25maWdXaXRoS2V5cGF0aBJKCg1zY3JpcHRfY29uZmlnGAIgASgLMiUuc2'
        'hpZnRjcnlwdG8uYml0Ym94MDIuQlRDU2NyaXB0Q29uZmlnUgxzY3JpcHRDb25maWcSGAoHa2V5'
        'cGF0aBgDIAMoDVIHa2V5cGF0aA==');

@$core.Deprecated('Use bTCSignInitRequestDescriptor instead')
const BTCSignInitRequest$json = {
  '1': 'BTCSignInitRequest',
  '2': [
    {
      '1': 'coin',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCCoin',
      '10': 'coin'
    },
    {
      '1': 'script_configs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfigWithKeypath',
      '10': 'scriptConfigs'
    },
    {'1': 'version', '3': 4, '4': 1, '5': 13, '10': 'version'},
    {'1': 'num_inputs', '3': 5, '4': 1, '5': 13, '10': 'numInputs'},
    {'1': 'num_outputs', '3': 6, '4': 1, '5': 13, '10': 'numOutputs'},
    {'1': 'locktime', '3': 7, '4': 1, '5': 13, '10': 'locktime'},
    {
      '1': 'format_unit',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCSignInitRequest.FormatUnit',
      '10': 'formatUnit'
    },
    {
      '1': 'contains_silent_payment_outputs',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'containsSilentPaymentOutputs'
    },
    {
      '1': 'output_script_configs',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfigWithKeypath',
      '10': 'outputScriptConfigs'
    },
  ],
  '4': [BTCSignInitRequest_FormatUnit$json],
};

@$core.Deprecated('Use bTCSignInitRequestDescriptor instead')
const BTCSignInitRequest_FormatUnit$json = {
  '1': 'FormatUnit',
  '2': [
    {'1': 'DEFAULT', '2': 0},
    {'1': 'SAT', '2': 1},
  ],
};

/// Descriptor for `BTCSignInitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSignInitRequestDescriptor = $convert.base64Decode(
    'ChJCVENTaWduSW5pdFJlcXVlc3QSMQoEY29pbhgBIAEoDjIdLnNoaWZ0Y3J5cHRvLmJpdGJveD'
    'AyLkJUQ0NvaW5SBGNvaW4SVwoOc2NyaXB0X2NvbmZpZ3MYAiADKAsyMC5zaGlmdGNyeXB0by5i'
    'aXRib3gwMi5CVENTY3JpcHRDb25maWdXaXRoS2V5cGF0aFINc2NyaXB0Q29uZmlncxIYCgd2ZX'
    'JzaW9uGAQgASgNUgd2ZXJzaW9uEh0KCm51bV9pbnB1dHMYBSABKA1SCW51bUlucHV0cxIfCgtu'
    'dW1fb3V0cHV0cxgGIAEoDVIKbnVtT3V0cHV0cxIaCghsb2NrdGltZRgHIAEoDVIIbG9ja3RpbW'
    'USVAoLZm9ybWF0X3VuaXQYCCABKA4yMy5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENTaWduSW5p'
    'dFJlcXVlc3QuRm9ybWF0VW5pdFIKZm9ybWF0VW5pdBJFCh9jb250YWluc19zaWxlbnRfcGF5bW'
    'VudF9vdXRwdXRzGAkgASgIUhxjb250YWluc1NpbGVudFBheW1lbnRPdXRwdXRzEmQKFW91dHB1'
    'dF9zY3JpcHRfY29uZmlncxgKIAMoCzIwLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ1NjcmlwdE'
    'NvbmZpZ1dpdGhLZXlwYXRoUhNvdXRwdXRTY3JpcHRDb25maWdzIiIKCkZvcm1hdFVuaXQSCwoH'
    'REVGQVVMVBAAEgcKA1NBVBAB');

@$core.Deprecated('Use bTCSignNextResponseDescriptor instead')
const BTCSignNextResponse$json = {
  '1': 'BTCSignNextResponse',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCSignNextResponse.Type',
      '10': 'type'
    },
    {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
    {'1': 'has_signature', '3': 3, '4': 1, '5': 8, '10': 'hasSignature'},
    {'1': 'signature', '3': 4, '4': 1, '5': 12, '10': 'signature'},
    {'1': 'prev_index', '3': 5, '4': 1, '5': 13, '10': 'prevIndex'},
    {
      '1': 'anti_klepto_signer_commitment',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoSignerCommitment',
      '10': 'antiKleptoSignerCommitment'
    },
    {
      '1': 'generated_output_pkscript',
      '3': 7,
      '4': 1,
      '5': 12,
      '10': 'generatedOutputPkscript'
    },
    {
      '1': 'silent_payment_dleq_proof',
      '3': 8,
      '4': 1,
      '5': 12,
      '10': 'silentPaymentDleqProof'
    },
  ],
  '4': [BTCSignNextResponse_Type$json],
};

@$core.Deprecated('Use bTCSignNextResponseDescriptor instead')
const BTCSignNextResponse_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'INPUT', '2': 0},
    {'1': 'OUTPUT', '2': 1},
    {'1': 'DONE', '2': 2},
    {'1': 'PREVTX_INIT', '2': 3},
    {'1': 'PREVTX_INPUT', '2': 4},
    {'1': 'PREVTX_OUTPUT', '2': 5},
    {'1': 'HOST_NONCE', '2': 6},
    {'1': 'PAYMENT_REQUEST', '2': 7},
  ],
};

/// Descriptor for `BTCSignNextResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSignNextResponseDescriptor = $convert.base64Decode(
    'ChNCVENTaWduTmV4dFJlc3BvbnNlEkIKBHR5cGUYASABKA4yLi5zaGlmdGNyeXB0by5iaXRib3'
    'gwMi5CVENTaWduTmV4dFJlc3BvbnNlLlR5cGVSBHR5cGUSFAoFaW5kZXgYAiABKA1SBWluZGV4'
    'EiMKDWhhc19zaWduYXR1cmUYAyABKAhSDGhhc1NpZ25hdHVyZRIcCglzaWduYXR1cmUYBCABKA'
    'xSCXNpZ25hdHVyZRIdCgpwcmV2X2luZGV4GAUgASgNUglwcmV2SW5kZXgScwodYW50aV9rbGVw'
    'dG9fc2lnbmVyX2NvbW1pdG1lbnQYBiABKAsyMC5zaGlmdGNyeXB0by5iaXRib3gwMi5BbnRpS2'
    'xlcHRvU2lnbmVyQ29tbWl0bWVudFIaYW50aUtsZXB0b1NpZ25lckNvbW1pdG1lbnQSOgoZZ2Vu'
    'ZXJhdGVkX291dHB1dF9wa3NjcmlwdBgHIAEoDFIXZ2VuZXJhdGVkT3V0cHV0UGtzY3JpcHQSOQ'
    'oZc2lsZW50X3BheW1lbnRfZGxlcV9wcm9vZhgIIAEoDFIWc2lsZW50UGF5bWVudERsZXFQcm9v'
    'ZiKCAQoEVHlwZRIJCgVJTlBVVBAAEgoKBk9VVFBVVBABEggKBERPTkUQAhIPCgtQUkVWVFhfSU'
    '5JVBADEhAKDFBSRVZUWF9JTlBVVBAEEhEKDVBSRVZUWF9PVVRQVVQQBRIOCgpIT1NUX05PTkNF'
    'EAYSEwoPUEFZTUVOVF9SRVFVRVNUEAc=');

@$core.Deprecated('Use bTCSignInputRequestDescriptor instead')
const BTCSignInputRequest$json = {
  '1': 'BTCSignInputRequest',
  '2': [
    {'1': 'prevOutHash', '3': 1, '4': 1, '5': 12, '10': 'prevOutHash'},
    {'1': 'prevOutIndex', '3': 2, '4': 1, '5': 13, '10': 'prevOutIndex'},
    {'1': 'prevOutValue', '3': 3, '4': 1, '5': 4, '10': 'prevOutValue'},
    {'1': 'sequence', '3': 4, '4': 1, '5': 13, '10': 'sequence'},
    {'1': 'keypath', '3': 6, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'script_config_index',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'scriptConfigIndex'
    },
    {
      '1': 'host_nonce_commitment',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoHostNonceCommitment',
      '10': 'hostNonceCommitment'
    },
  ],
};

/// Descriptor for `BTCSignInputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSignInputRequestDescriptor = $convert.base64Decode(
    'ChNCVENTaWduSW5wdXRSZXF1ZXN0EiAKC3ByZXZPdXRIYXNoGAEgASgMUgtwcmV2T3V0SGFzaB'
    'IiCgxwcmV2T3V0SW5kZXgYAiABKA1SDHByZXZPdXRJbmRleBIiCgxwcmV2T3V0VmFsdWUYAyAB'
    'KARSDHByZXZPdXRWYWx1ZRIaCghzZXF1ZW5jZRgEIAEoDVIIc2VxdWVuY2USGAoHa2V5cGF0aB'
    'gGIAMoDVIHa2V5cGF0aBIuChNzY3JpcHRfY29uZmlnX2luZGV4GAcgASgNUhFzY3JpcHRDb25m'
    'aWdJbmRleBJnChVob3N0X25vbmNlX2NvbW1pdG1lbnQYCCABKAsyMy5zaGlmdGNyeXB0by5iaX'
    'Rib3gwMi5BbnRpS2xlcHRvSG9zdE5vbmNlQ29tbWl0bWVudFITaG9zdE5vbmNlQ29tbWl0bWVu'
    'dA==');

@$core.Deprecated('Use bTCSignOutputRequestDescriptor instead')
const BTCSignOutputRequest$json = {
  '1': 'BTCSignOutputRequest',
  '2': [
    {'1': 'ours', '3': 1, '4': 1, '5': 8, '10': 'ours'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCOutputType',
      '10': 'type'
    },
    {'1': 'value', '3': 3, '4': 1, '5': 4, '10': 'value'},
    {'1': 'payload', '3': 4, '4': 1, '5': 12, '10': 'payload'},
    {'1': 'keypath', '3': 5, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'script_config_index',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'scriptConfigIndex'
    },
    {
      '1': 'payment_request_index',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'paymentRequestIndex',
      '17': true
    },
    {
      '1': 'silent_payment',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignOutputRequest.SilentPayment',
      '10': 'silentPayment'
    },
    {
      '1': 'output_script_config_index',
      '3': 9,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'outputScriptConfigIndex',
      '17': true
    },
  ],
  '3': [BTCSignOutputRequest_SilentPayment$json],
  '8': [
    {'1': '_payment_request_index'},
    {'1': '_output_script_config_index'},
  ],
};

@$core.Deprecated('Use bTCSignOutputRequestDescriptor instead')
const BTCSignOutputRequest_SilentPayment$json = {
  '1': 'SilentPayment',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `BTCSignOutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSignOutputRequestDescriptor = $convert.base64Decode(
    'ChRCVENTaWduT3V0cHV0UmVxdWVzdBISCgRvdXJzGAEgASgIUgRvdXJzEjcKBHR5cGUYAiABKA'
    '4yIy5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENPdXRwdXRUeXBlUgR0eXBlEhQKBXZhbHVlGAMg'
    'ASgEUgV2YWx1ZRIYCgdwYXlsb2FkGAQgASgMUgdwYXlsb2FkEhgKB2tleXBhdGgYBSADKA1SB2'
    'tleXBhdGgSLgoTc2NyaXB0X2NvbmZpZ19pbmRleBgGIAEoDVIRc2NyaXB0Q29uZmlnSW5kZXgS'
    'NwoVcGF5bWVudF9yZXF1ZXN0X2luZGV4GAcgASgNSABSE3BheW1lbnRSZXF1ZXN0SW5kZXiIAQ'
    'ESXwoOc2lsZW50X3BheW1lbnQYCCABKAsyOC5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENTaWdu'
    'T3V0cHV0UmVxdWVzdC5TaWxlbnRQYXltZW50Ug1zaWxlbnRQYXltZW50EkAKGm91dHB1dF9zY3'
    'JpcHRfY29uZmlnX2luZGV4GAkgASgNSAFSF291dHB1dFNjcmlwdENvbmZpZ0luZGV4iAEBGikK'
    'DVNpbGVudFBheW1lbnQSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzc0IYChZfcGF5bWVudF9yZX'
    'F1ZXN0X2luZGV4Qh0KG19vdXRwdXRfc2NyaXB0X2NvbmZpZ19pbmRleA==');

@$core.Deprecated('Use bTCScriptConfigRegistrationDescriptor instead')
const BTCScriptConfigRegistration$json = {
  '1': 'BTCScriptConfigRegistration',
  '2': [
    {
      '1': 'coin',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCCoin',
      '10': 'coin'
    },
    {
      '1': 'script_config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfig',
      '10': 'scriptConfig'
    },
    {'1': 'keypath', '3': 3, '4': 3, '5': 13, '10': 'keypath'},
  ],
};

/// Descriptor for `BTCScriptConfigRegistration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCScriptConfigRegistrationDescriptor = $convert.base64Decode(
    'ChtCVENTY3JpcHRDb25maWdSZWdpc3RyYXRpb24SMQoEY29pbhgBIAEoDjIdLnNoaWZ0Y3J5cH'
    'RvLmJpdGJveDAyLkJUQ0NvaW5SBGNvaW4SSgoNc2NyaXB0X2NvbmZpZxgCIAEoCzIlLnNoaWZ0'
    'Y3J5cHRvLmJpdGJveDAyLkJUQ1NjcmlwdENvbmZpZ1IMc2NyaXB0Q29uZmlnEhgKB2tleXBhdG'
    'gYAyADKA1SB2tleXBhdGg=');

@$core.Deprecated('Use bTCSuccessDescriptor instead')
const BTCSuccess$json = {
  '1': 'BTCSuccess',
};

/// Descriptor for `BTCSuccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSuccessDescriptor =
    $convert.base64Decode('CgpCVENTdWNjZXNz');

@$core.Deprecated('Use bTCIsScriptConfigRegisteredRequestDescriptor instead')
const BTCIsScriptConfigRegisteredRequest$json = {
  '1': 'BTCIsScriptConfigRegisteredRequest',
  '2': [
    {
      '1': 'registration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfigRegistration',
      '10': 'registration'
    },
  ],
};

/// Descriptor for `BTCIsScriptConfigRegisteredRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCIsScriptConfigRegisteredRequestDescriptor =
    $convert.base64Decode(
        'CiJCVENJc1NjcmlwdENvbmZpZ1JlZ2lzdGVyZWRSZXF1ZXN0ElUKDHJlZ2lzdHJhdGlvbhgBIA'
        'EoCzIxLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ1NjcmlwdENvbmZpZ1JlZ2lzdHJhdGlvblIM'
        'cmVnaXN0cmF0aW9u');

@$core.Deprecated('Use bTCIsScriptConfigRegisteredResponseDescriptor instead')
const BTCIsScriptConfigRegisteredResponse$json = {
  '1': 'BTCIsScriptConfigRegisteredResponse',
  '2': [
    {'1': 'is_registered', '3': 1, '4': 1, '5': 8, '10': 'isRegistered'},
  ],
};

/// Descriptor for `BTCIsScriptConfigRegisteredResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCIsScriptConfigRegisteredResponseDescriptor =
    $convert.base64Decode(
        'CiNCVENJc1NjcmlwdENvbmZpZ1JlZ2lzdGVyZWRSZXNwb25zZRIjCg1pc19yZWdpc3RlcmVkGA'
        'EgASgIUgxpc1JlZ2lzdGVyZWQ=');

@$core.Deprecated('Use bTCRegisterScriptConfigRequestDescriptor instead')
const BTCRegisterScriptConfigRequest$json = {
  '1': 'BTCRegisterScriptConfigRequest',
  '2': [
    {
      '1': 'registration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfigRegistration',
      '10': 'registration'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'xpub_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCRegisterScriptConfigRequest.XPubType',
      '10': 'xpubType'
    },
  ],
  '4': [BTCRegisterScriptConfigRequest_XPubType$json],
};

@$core.Deprecated('Use bTCRegisterScriptConfigRequestDescriptor instead')
const BTCRegisterScriptConfigRequest_XPubType$json = {
  '1': 'XPubType',
  '2': [
    {'1': 'AUTO_ELECTRUM', '2': 0},
    {'1': 'AUTO_XPUB_TPUB', '2': 1},
  ],
};

/// Descriptor for `BTCRegisterScriptConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCRegisterScriptConfigRequestDescriptor = $convert.base64Decode(
    'Ch5CVENSZWdpc3RlclNjcmlwdENvbmZpZ1JlcXVlc3QSVQoMcmVnaXN0cmF0aW9uGAEgASgLMj'
    'Euc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRDU2NyaXB0Q29uZmlnUmVnaXN0cmF0aW9uUgxyZWdp'
    'c3RyYXRpb24SEgoEbmFtZRgCIAEoCVIEbmFtZRJaCgl4cHViX3R5cGUYAyABKA4yPS5zaGlmdG'
    'NyeXB0by5iaXRib3gwMi5CVENSZWdpc3RlclNjcmlwdENvbmZpZ1JlcXVlc3QuWFB1YlR5cGVS'
    'CHhwdWJUeXBlIjEKCFhQdWJUeXBlEhEKDUFVVE9fRUxFQ1RSVU0QABISCg5BVVRPX1hQVUJfVF'
    'BVQhAB');

@$core.Deprecated('Use bTCPrevTxInitRequestDescriptor instead')
const BTCPrevTxInitRequest$json = {
  '1': 'BTCPrevTxInitRequest',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 13, '10': 'version'},
    {'1': 'num_inputs', '3': 2, '4': 1, '5': 13, '10': 'numInputs'},
    {'1': 'num_outputs', '3': 3, '4': 1, '5': 13, '10': 'numOutputs'},
    {'1': 'locktime', '3': 4, '4': 1, '5': 13, '10': 'locktime'},
  ],
};

/// Descriptor for `BTCPrevTxInitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCPrevTxInitRequestDescriptor = $convert.base64Decode(
    'ChRCVENQcmV2VHhJbml0UmVxdWVzdBIYCgd2ZXJzaW9uGAEgASgNUgd2ZXJzaW9uEh0KCm51bV'
    '9pbnB1dHMYAiABKA1SCW51bUlucHV0cxIfCgtudW1fb3V0cHV0cxgDIAEoDVIKbnVtT3V0cHV0'
    'cxIaCghsb2NrdGltZRgEIAEoDVIIbG9ja3RpbWU=');

@$core.Deprecated('Use bTCPrevTxInputRequestDescriptor instead')
const BTCPrevTxInputRequest$json = {
  '1': 'BTCPrevTxInputRequest',
  '2': [
    {'1': 'prev_out_hash', '3': 1, '4': 1, '5': 12, '10': 'prevOutHash'},
    {'1': 'prev_out_index', '3': 2, '4': 1, '5': 13, '10': 'prevOutIndex'},
    {'1': 'signature_script', '3': 3, '4': 1, '5': 12, '10': 'signatureScript'},
    {'1': 'sequence', '3': 4, '4': 1, '5': 13, '10': 'sequence'},
  ],
};

/// Descriptor for `BTCPrevTxInputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCPrevTxInputRequestDescriptor = $convert.base64Decode(
    'ChVCVENQcmV2VHhJbnB1dFJlcXVlc3QSIgoNcHJldl9vdXRfaGFzaBgBIAEoDFILcHJldk91dE'
    'hhc2gSJAoOcHJldl9vdXRfaW5kZXgYAiABKA1SDHByZXZPdXRJbmRleBIpChBzaWduYXR1cmVf'
    'c2NyaXB0GAMgASgMUg9zaWduYXR1cmVTY3JpcHQSGgoIc2VxdWVuY2UYBCABKA1SCHNlcXVlbm'
    'Nl');

@$core.Deprecated('Use bTCPrevTxOutputRequestDescriptor instead')
const BTCPrevTxOutputRequest$json = {
  '1': 'BTCPrevTxOutputRequest',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 4, '10': 'value'},
    {'1': 'pubkey_script', '3': 2, '4': 1, '5': 12, '10': 'pubkeyScript'},
  ],
};

/// Descriptor for `BTCPrevTxOutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCPrevTxOutputRequestDescriptor =
    $convert.base64Decode(
        'ChZCVENQcmV2VHhPdXRwdXRSZXF1ZXN0EhQKBXZhbHVlGAEgASgEUgV2YWx1ZRIjCg1wdWJrZX'
        'lfc2NyaXB0GAIgASgMUgxwdWJrZXlTY3JpcHQ=');

@$core.Deprecated('Use bTCPaymentRequestRequestDescriptor instead')
const BTCPaymentRequestRequest$json = {
  '1': 'BTCPaymentRequestRequest',
  '2': [
    {'1': 'recipient_name', '3': 1, '4': 1, '5': 9, '10': 'recipientName'},
    {
      '1': 'memos',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPaymentRequestRequest.Memo',
      '10': 'memos'
    },
    {'1': 'nonce', '3': 3, '4': 1, '5': 12, '10': 'nonce'},
    {'1': 'total_amount', '3': 4, '4': 1, '5': 4, '10': 'totalAmount'},
    {'1': 'signature', '3': 5, '4': 1, '5': 12, '10': 'signature'},
  ],
  '3': [BTCPaymentRequestRequest_Memo$json],
};

@$core.Deprecated('Use bTCPaymentRequestRequestDescriptor instead')
const BTCPaymentRequestRequest_Memo$json = {
  '1': 'Memo',
  '2': [
    {
      '1': 'text_memo',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPaymentRequestRequest.Memo.TextMemo',
      '9': 0,
      '10': 'textMemo'
    },
  ],
  '3': [BTCPaymentRequestRequest_Memo_TextMemo$json],
  '8': [
    {'1': 'memo'},
  ],
};

@$core.Deprecated('Use bTCPaymentRequestRequestDescriptor instead')
const BTCPaymentRequestRequest_Memo_TextMemo$json = {
  '1': 'TextMemo',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 9, '10': 'note'},
  ],
};

/// Descriptor for `BTCPaymentRequestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCPaymentRequestRequestDescriptor = $convert.base64Decode(
    'ChhCVENQYXltZW50UmVxdWVzdFJlcXVlc3QSJQoOcmVjaXBpZW50X25hbWUYASABKAlSDXJlY2'
    'lwaWVudE5hbWUSSQoFbWVtb3MYAiADKAsyMy5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENQYXlt'
    'ZW50UmVxdWVzdFJlcXVlc3QuTWVtb1IFbWVtb3MSFAoFbm9uY2UYAyABKAxSBW5vbmNlEiEKDH'
    'RvdGFsX2Ftb3VudBgEIAEoBFILdG90YWxBbW91bnQSHAoJc2lnbmF0dXJlGAUgASgMUglzaWdu'
    'YXR1cmUaiwEKBE1lbW8SWwoJdGV4dF9tZW1vGAEgASgLMjwuc2hpZnRjcnlwdG8uYml0Ym94MD'
    'IuQlRDUGF5bWVudFJlcXVlc3RSZXF1ZXN0Lk1lbW8uVGV4dE1lbW9IAFIIdGV4dE1lbW8aHgoI'
    'VGV4dE1lbW8SEgoEbm90ZRgBIAEoCVIEbm90ZUIGCgRtZW1v');

@$core.Deprecated('Use bTCSignMessageRequestDescriptor instead')
const BTCSignMessageRequest$json = {
  '1': 'BTCSignMessageRequest',
  '2': [
    {
      '1': 'coin',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.BTCCoin',
      '10': 'coin'
    },
    {
      '1': 'script_config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCScriptConfigWithKeypath',
      '10': 'scriptConfig'
    },
    {'1': 'msg', '3': 3, '4': 1, '5': 12, '10': 'msg'},
    {
      '1': 'host_nonce_commitment',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoHostNonceCommitment',
      '10': 'hostNonceCommitment'
    },
  ],
};

/// Descriptor for `BTCSignMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSignMessageRequestDescriptor = $convert.base64Decode(
    'ChVCVENTaWduTWVzc2FnZVJlcXVlc3QSMQoEY29pbhgBIAEoDjIdLnNoaWZ0Y3J5cHRvLmJpdG'
    'JveDAyLkJUQ0NvaW5SBGNvaW4SVQoNc2NyaXB0X2NvbmZpZxgCIAEoCzIwLnNoaWZ0Y3J5cHRv'
    'LmJpdGJveDAyLkJUQ1NjcmlwdENvbmZpZ1dpdGhLZXlwYXRoUgxzY3JpcHRDb25maWcSEAoDbX'
    'NnGAMgASgMUgNtc2cSZwoVaG9zdF9ub25jZV9jb21taXRtZW50GAQgASgLMjMuc2hpZnRjcnlw'
    'dG8uYml0Ym94MDIuQW50aUtsZXB0b0hvc3ROb25jZUNvbW1pdG1lbnRSE2hvc3ROb25jZUNvbW'
    '1pdG1lbnQ=');

@$core.Deprecated('Use bTCSignMessageResponseDescriptor instead')
const BTCSignMessageResponse$json = {
  '1': 'BTCSignMessageResponse',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `BTCSignMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCSignMessageResponseDescriptor =
    $convert.base64Decode(
        'ChZCVENTaWduTWVzc2FnZVJlc3BvbnNlEhwKCXNpZ25hdHVyZRgBIAEoDFIJc2lnbmF0dXJl');

@$core.Deprecated('Use bTCRequestDescriptor instead')
const BTCRequest$json = {
  '1': 'BTCRequest',
  '2': [
    {
      '1': 'is_script_config_registered',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCIsScriptConfigRegisteredRequest',
      '9': 0,
      '10': 'isScriptConfigRegistered'
    },
    {
      '1': 'register_script_config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCRegisterScriptConfigRequest',
      '9': 0,
      '10': 'registerScriptConfig'
    },
    {
      '1': 'prevtx_init',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPrevTxInitRequest',
      '9': 0,
      '10': 'prevtxInit'
    },
    {
      '1': 'prevtx_input',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPrevTxInputRequest',
      '9': 0,
      '10': 'prevtxInput'
    },
    {
      '1': 'prevtx_output',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPrevTxOutputRequest',
      '9': 0,
      '10': 'prevtxOutput'
    },
    {
      '1': 'sign_message',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignMessageRequest',
      '9': 0,
      '10': 'signMessage'
    },
    {
      '1': 'antiklepto_signature',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoSignatureRequest',
      '9': 0,
      '10': 'antikleptoSignature'
    },
    {
      '1': 'payment_request',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCPaymentRequestRequest',
      '9': 0,
      '10': 'paymentRequest'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `BTCRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCRequestDescriptor = $convert.base64Decode(
    'CgpCVENSZXF1ZXN0EnkKG2lzX3NjcmlwdF9jb25maWdfcmVnaXN0ZXJlZBgBIAEoCzI4LnNoaW'
    'Z0Y3J5cHRvLmJpdGJveDAyLkJUQ0lzU2NyaXB0Q29uZmlnUmVnaXN0ZXJlZFJlcXVlc3RIAFIY'
    'aXNTY3JpcHRDb25maWdSZWdpc3RlcmVkEmwKFnJlZ2lzdGVyX3NjcmlwdF9jb25maWcYAiABKA'
    'syNC5zaGlmdGNyeXB0by5iaXRib3gwMi5CVENSZWdpc3RlclNjcmlwdENvbmZpZ1JlcXVlc3RI'
    'AFIUcmVnaXN0ZXJTY3JpcHRDb25maWcSTQoLcHJldnR4X2luaXQYAyABKAsyKi5zaGlmdGNyeX'
    'B0by5iaXRib3gwMi5CVENQcmV2VHhJbml0UmVxdWVzdEgAUgpwcmV2dHhJbml0ElAKDHByZXZ0'
    'eF9pbnB1dBgEIAEoCzIrLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ1ByZXZUeElucHV0UmVxdW'
    'VzdEgAUgtwcmV2dHhJbnB1dBJTCg1wcmV2dHhfb3V0cHV0GAUgASgLMiwuc2hpZnRjcnlwdG8u'
    'Yml0Ym94MDIuQlRDUHJldlR4T3V0cHV0UmVxdWVzdEgAUgxwcmV2dHhPdXRwdXQSUAoMc2lnbl'
    '9tZXNzYWdlGAYgASgLMisuc2hpZnRjcnlwdG8uYml0Ym94MDIuQlRDU2lnbk1lc3NhZ2VSZXF1'
    'ZXN0SABSC3NpZ25NZXNzYWdlEmUKFGFudGlrbGVwdG9fc2lnbmF0dXJlGAcgASgLMjAuc2hpZn'
    'RjcnlwdG8uYml0Ym94MDIuQW50aUtsZXB0b1NpZ25hdHVyZVJlcXVlc3RIAFITYW50aWtsZXB0'
    'b1NpZ25hdHVyZRJZCg9wYXltZW50X3JlcXVlc3QYCCABKAsyLi5zaGlmdGNyeXB0by5iaXRib3'
    'gwMi5CVENQYXltZW50UmVxdWVzdFJlcXVlc3RIAFIOcGF5bWVudFJlcXVlc3RCCQoHcmVxdWVz'
    'dA==');

@$core.Deprecated('Use bTCResponseDescriptor instead')
const BTCResponse$json = {
  '1': 'BTCResponse',
  '2': [
    {
      '1': 'success',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSuccess',
      '9': 0,
      '10': 'success'
    },
    {
      '1': 'is_script_config_registered',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCIsScriptConfigRegisteredResponse',
      '9': 0,
      '10': 'isScriptConfigRegistered'
    },
    {
      '1': 'sign_next',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignNextResponse',
      '9': 0,
      '10': 'signNext'
    },
    {
      '1': 'sign_message',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.BTCSignMessageResponse',
      '9': 0,
      '10': 'signMessage'
    },
    {
      '1': 'antiklepto_signer_commitment',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.AntiKleptoSignerCommitment',
      '9': 0,
      '10': 'antikleptoSignerCommitment'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `BTCResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bTCResponseDescriptor = $convert.base64Decode(
    'CgtCVENSZXNwb25zZRI8CgdzdWNjZXNzGAEgASgLMiAuc2hpZnRjcnlwdG8uYml0Ym94MDIuQl'
    'RDU3VjY2Vzc0gAUgdzdWNjZXNzEnoKG2lzX3NjcmlwdF9jb25maWdfcmVnaXN0ZXJlZBgCIAEo'
    'CzI5LnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ0lzU2NyaXB0Q29uZmlnUmVnaXN0ZXJlZFJlc3'
    'BvbnNlSABSGGlzU2NyaXB0Q29uZmlnUmVnaXN0ZXJlZBJICglzaWduX25leHQYAyABKAsyKS5z'
    'aGlmdGNyeXB0by5iaXRib3gwMi5CVENTaWduTmV4dFJlc3BvbnNlSABSCHNpZ25OZXh0ElEKDH'
    'NpZ25fbWVzc2FnZRgEIAEoCzIsLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkJUQ1NpZ25NZXNzYWdl'
    'UmVzcG9uc2VIAFILc2lnbk1lc3NhZ2USdAocYW50aWtsZXB0b19zaWduZXJfY29tbWl0bWVudB'
    'gFIAEoCzIwLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkFudGlLbGVwdG9TaWduZXJDb21taXRtZW50'
    'SABSGmFudGlrbGVwdG9TaWduZXJDb21taXRtZW50QgoKCHJlc3BvbnNl');
