// This is a generated file - do not edit.
//
// Generated from cardano.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cardanoNetworkDescriptor instead')
const CardanoNetwork$json = {
  '1': 'CardanoNetwork',
  '2': [
    {'1': 'CardanoMainnet', '2': 0},
    {'1': 'CardanoTestnet', '2': 1},
  ],
};

/// Descriptor for `CardanoNetwork`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List cardanoNetworkDescriptor = $convert.base64Decode(
    'Cg5DYXJkYW5vTmV0d29yaxISCg5DYXJkYW5vTWFpbm5ldBAAEhIKDkNhcmRhbm9UZXN0bmV0EA'
    'E=');

@$core.Deprecated('Use cardanoXpubsRequestDescriptor instead')
const CardanoXpubsRequest$json = {
  '1': 'CardanoXpubsRequest',
  '2': [
    {
      '1': 'keypaths',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.Keypath',
      '10': 'keypaths'
    },
  ],
};

/// Descriptor for `CardanoXpubsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoXpubsRequestDescriptor = $convert.base64Decode(
    'ChNDYXJkYW5vWHB1YnNSZXF1ZXN0EjkKCGtleXBhdGhzGAEgAygLMh0uc2hpZnRjcnlwdG8uYm'
    'l0Ym94MDIuS2V5cGF0aFIIa2V5cGF0aHM=');

@$core.Deprecated('Use cardanoXpubsResponseDescriptor instead')
const CardanoXpubsResponse$json = {
  '1': 'CardanoXpubsResponse',
  '2': [
    {'1': 'xpubs', '3': 1, '4': 3, '5': 12, '10': 'xpubs'},
  ],
};

/// Descriptor for `CardanoXpubsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoXpubsResponseDescriptor =
    $convert.base64Decode(
        'ChRDYXJkYW5vWHB1YnNSZXNwb25zZRIUCgV4cHVicxgBIAMoDFIFeHB1YnM=');

@$core.Deprecated('Use cardanoScriptConfigDescriptor instead')
const CardanoScriptConfig$json = {
  '1': 'CardanoScriptConfig',
  '2': [
    {
      '1': 'pkh_skh',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoScriptConfig.PkhSkh',
      '9': 0,
      '10': 'pkhSkh'
    },
  ],
  '3': [CardanoScriptConfig_PkhSkh$json],
  '8': [
    {'1': 'config'},
  ],
};

@$core.Deprecated('Use cardanoScriptConfigDescriptor instead')
const CardanoScriptConfig_PkhSkh$json = {
  '1': 'PkhSkh',
  '2': [
    {'1': 'keypath_payment', '3': 1, '4': 3, '5': 13, '10': 'keypathPayment'},
    {'1': 'keypath_stake', '3': 2, '4': 3, '5': 13, '10': 'keypathStake'},
  ],
};

/// Descriptor for `CardanoScriptConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoScriptConfigDescriptor = $convert.base64Decode(
    'ChNDYXJkYW5vU2NyaXB0Q29uZmlnEksKB3BraF9za2gYASABKAsyMC5zaGlmdGNyeXB0by5iaX'
    'Rib3gwMi5DYXJkYW5vU2NyaXB0Q29uZmlnLlBraFNraEgAUgZwa2hTa2gaVgoGUGtoU2toEicK'
    'D2tleXBhdGhfcGF5bWVudBgBIAMoDVIOa2V5cGF0aFBheW1lbnQSIwoNa2V5cGF0aF9zdGFrZR'
    'gCIAMoDVIMa2V5cGF0aFN0YWtlQggKBmNvbmZpZw==');

@$core.Deprecated('Use cardanoAddressRequestDescriptor instead')
const CardanoAddressRequest$json = {
  '1': 'CardanoAddressRequest',
  '2': [
    {
      '1': 'network',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.CardanoNetwork',
      '10': 'network'
    },
    {'1': 'display', '3': 2, '4': 1, '5': 8, '10': 'display'},
    {
      '1': 'script_config',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoScriptConfig',
      '10': 'scriptConfig'
    },
  ],
};

/// Descriptor for `CardanoAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoAddressRequestDescriptor = $convert.base64Decode(
    'ChVDYXJkYW5vQWRkcmVzc1JlcXVlc3QSPgoHbmV0d29yaxgBIAEoDjIkLnNoaWZ0Y3J5cHRvLm'
    'JpdGJveDAyLkNhcmRhbm9OZXR3b3JrUgduZXR3b3JrEhgKB2Rpc3BsYXkYAiABKAhSB2Rpc3Bs'
    'YXkSTgoNc2NyaXB0X2NvbmZpZxgDIAEoCzIpLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkNhcmRhbm'
    '9TY3JpcHRDb25maWdSDHNjcmlwdENvbmZpZw==');

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest$json = {
  '1': 'CardanoSignTransactionRequest',
  '2': [
    {
      '1': 'network',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.shiftcrypto.bitbox02.CardanoNetwork',
      '10': 'network'
    },
    {
      '1': 'inputs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Input',
      '10': 'inputs'
    },
    {
      '1': 'outputs',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Output',
      '10': 'outputs'
    },
    {'1': 'fee', '3': 4, '4': 1, '5': 4, '10': 'fee'},
    {'1': 'ttl', '3': 5, '4': 1, '5': 4, '10': 'ttl'},
    {
      '1': 'certificates',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Certificate',
      '10': 'certificates'
    },
    {
      '1': 'withdrawals',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Withdrawal',
      '10': 'withdrawals'
    },
    {
      '1': 'validity_interval_start',
      '3': 8,
      '4': 1,
      '5': 4,
      '10': 'validityIntervalStart'
    },
    {'1': 'allow_zero_ttl', '3': 9, '4': 1, '5': 8, '10': 'allowZeroTtl'},
    {'1': 'tag_cbor_sets', '3': 10, '4': 1, '5': 8, '10': 'tagCborSets'},
  ],
  '3': [
    CardanoSignTransactionRequest_Input$json,
    CardanoSignTransactionRequest_AssetGroup$json,
    CardanoSignTransactionRequest_Output$json,
    CardanoSignTransactionRequest_Certificate$json,
    CardanoSignTransactionRequest_Withdrawal$json
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Input$json = {
  '1': 'Input',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
    {'1': 'prev_out_hash', '3': 2, '4': 1, '5': 12, '10': 'prevOutHash'},
    {'1': 'prev_out_index', '3': 3, '4': 1, '5': 13, '10': 'prevOutIndex'},
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_AssetGroup$json = {
  '1': 'AssetGroup',
  '2': [
    {'1': 'policy_id', '3': 1, '4': 1, '5': 12, '10': 'policyId'},
    {
      '1': 'tokens',
      '3': 2,
      '4': 3,
      '5': 11,
      '6':
          '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.AssetGroup.Token',
      '10': 'tokens'
    },
  ],
  '3': [CardanoSignTransactionRequest_AssetGroup_Token$json],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_AssetGroup_Token$json = {
  '1': 'Token',
  '2': [
    {'1': 'asset_name', '3': 1, '4': 1, '5': 12, '10': 'assetName'},
    {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Output$json = {
  '1': 'Output',
  '2': [
    {'1': 'encoded_address', '3': 1, '4': 1, '5': 9, '10': 'encodedAddress'},
    {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
    {
      '1': 'script_config',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoScriptConfig',
      '10': 'scriptConfig'
    },
    {
      '1': 'asset_groups',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.AssetGroup',
      '10': 'assetGroups'
    },
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Certificate$json = {
  '1': 'Certificate',
  '2': [
    {
      '1': 'stake_registration',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.Keypath',
      '9': 0,
      '10': 'stakeRegistration'
    },
    {
      '1': 'stake_deregistration',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.Keypath',
      '9': 0,
      '10': 'stakeDeregistration'
    },
    {
      '1': 'stake_delegation',
      '3': 3,
      '4': 1,
      '5': 11,
      '6':
          '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Certificate.StakeDelegation',
      '9': 0,
      '10': 'stakeDelegation'
    },
    {
      '1': 'vote_delegation',
      '3': 10,
      '4': 1,
      '5': 11,
      '6':
          '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Certificate.VoteDelegation',
      '9': 0,
      '10': 'voteDelegation'
    },
  ],
  '3': [
    CardanoSignTransactionRequest_Certificate_StakeDelegation$json,
    CardanoSignTransactionRequest_Certificate_VoteDelegation$json
  ],
  '8': [
    {'1': 'cert'},
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Certificate_StakeDelegation$json = {
  '1': 'StakeDelegation',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
    {'1': 'pool_keyhash', '3': 2, '4': 1, '5': 12, '10': 'poolKeyhash'},
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Certificate_VoteDelegation$json = {
  '1': 'VoteDelegation',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6':
          '.shiftcrypto.bitbox02.CardanoSignTransactionRequest.Certificate.VoteDelegation.CardanoDRepType',
      '10': 'type'
    },
    {
      '1': 'drep_credhash',
      '3': 3,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'drepCredhash',
      '17': true
    },
  ],
  '4': [
    CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType$json
  ],
  '8': [
    {'1': '_drep_credhash'},
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Certificate_VoteDelegation_CardanoDRepType$json =
    {
  '1': 'CardanoDRepType',
  '2': [
    {'1': 'KEY_HASH', '2': 0},
    {'1': 'SCRIPT_HASH', '2': 1},
    {'1': 'ALWAYS_ABSTAIN', '2': 2},
    {'1': 'ALWAYS_NO_CONFIDENCE', '2': 3},
  ],
};

@$core.Deprecated('Use cardanoSignTransactionRequestDescriptor instead')
const CardanoSignTransactionRequest_Withdrawal$json = {
  '1': 'Withdrawal',
  '2': [
    {'1': 'keypath', '3': 1, '4': 3, '5': 13, '10': 'keypath'},
    {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
};

/// Descriptor for `CardanoSignTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoSignTransactionRequestDescriptor = $convert.base64Decode(
    'Ch1DYXJkYW5vU2lnblRyYW5zYWN0aW9uUmVxdWVzdBI+CgduZXR3b3JrGAEgASgOMiQuc2hpZn'
    'RjcnlwdG8uYml0Ym94MDIuQ2FyZGFub05ldHdvcmtSB25ldHdvcmsSUQoGaW5wdXRzGAIgAygL'
    'Mjkuc2hpZnRjcnlwdG8uYml0Ym94MDIuQ2FyZGFub1NpZ25UcmFuc2FjdGlvblJlcXVlc3QuSW'
    '5wdXRSBmlucHV0cxJUCgdvdXRwdXRzGAMgAygLMjouc2hpZnRjcnlwdG8uYml0Ym94MDIuQ2Fy'
    'ZGFub1NpZ25UcmFuc2FjdGlvblJlcXVlc3QuT3V0cHV0UgdvdXRwdXRzEhAKA2ZlZRgEIAEoBF'
    'IDZmVlEhAKA3R0bBgFIAEoBFIDdHRsEmMKDGNlcnRpZmljYXRlcxgGIAMoCzI/LnNoaWZ0Y3J5'
    'cHRvLmJpdGJveDAyLkNhcmRhbm9TaWduVHJhbnNhY3Rpb25SZXF1ZXN0LkNlcnRpZmljYXRlUg'
    'xjZXJ0aWZpY2F0ZXMSYAoLd2l0aGRyYXdhbHMYByADKAsyPi5zaGlmdGNyeXB0by5iaXRib3gw'
    'Mi5DYXJkYW5vU2lnblRyYW5zYWN0aW9uUmVxdWVzdC5XaXRoZHJhd2FsUgt3aXRoZHJhd2Fscx'
    'I2Chd2YWxpZGl0eV9pbnRlcnZhbF9zdGFydBgIIAEoBFIVdmFsaWRpdHlJbnRlcnZhbFN0YXJ0'
    'EiQKDmFsbG93X3plcm9fdHRsGAkgASgIUgxhbGxvd1plcm9UdGwSIgoNdGFnX2Nib3Jfc2V0cx'
    'gKIAEoCFILdGFnQ2JvclNldHMaawoFSW5wdXQSGAoHa2V5cGF0aBgBIAMoDVIHa2V5cGF0aBIi'
    'Cg1wcmV2X291dF9oYXNoGAIgASgMUgtwcmV2T3V0SGFzaBIkCg5wcmV2X291dF9pbmRleBgDIA'
    'EoDVIMcHJldk91dEluZGV4GsUBCgpBc3NldEdyb3VwEhsKCXBvbGljeV9pZBgBIAEoDFIIcG9s'
    'aWN5SWQSXAoGdG9rZW5zGAIgAygLMkQuc2hpZnRjcnlwdG8uYml0Ym94MDIuQ2FyZGFub1NpZ2'
    '5UcmFuc2FjdGlvblJlcXVlc3QuQXNzZXRHcm91cC5Ub2tlblIGdG9rZW5zGjwKBVRva2VuEh0K'
    'CmFzc2V0X25hbWUYASABKAxSCWFzc2V0TmFtZRIUCgV2YWx1ZRgCIAEoBFIFdmFsdWUa+gEKBk'
    '91dHB1dBInCg9lbmNvZGVkX2FkZHJlc3MYASABKAlSDmVuY29kZWRBZGRyZXNzEhQKBXZhbHVl'
    'GAIgASgEUgV2YWx1ZRJOCg1zY3JpcHRfY29uZmlnGAMgASgLMikuc2hpZnRjcnlwdG8uYml0Ym'
    '94MDIuQ2FyZGFub1NjcmlwdENvbmZpZ1IMc2NyaXB0Q29uZmlnEmEKDGFzc2V0X2dyb3VwcxgE'
    'IAMoCzI+LnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkNhcmRhbm9TaWduVHJhbnNhY3Rpb25SZXF1ZX'
    'N0LkFzc2V0R3JvdXBSC2Fzc2V0R3JvdXBzGr8GCgtDZXJ0aWZpY2F0ZRJOChJzdGFrZV9yZWdp'
    'c3RyYXRpb24YASABKAsyHS5zaGlmdGNyeXB0by5iaXRib3gwMi5LZXlwYXRoSABSEXN0YWtlUm'
    'VnaXN0cmF0aW9uElIKFHN0YWtlX2RlcmVnaXN0cmF0aW9uGAIgASgLMh0uc2hpZnRjcnlwdG8u'
    'Yml0Ym94MDIuS2V5cGF0aEgAUhNzdGFrZURlcmVnaXN0cmF0aW9uEnwKEHN0YWtlX2RlbGVnYX'
    'Rpb24YAyABKAsyTy5zaGlmdGNyeXB0by5iaXRib3gwMi5DYXJkYW5vU2lnblRyYW5zYWN0aW9u'
    'UmVxdWVzdC5DZXJ0aWZpY2F0ZS5TdGFrZURlbGVnYXRpb25IAFIPc3Rha2VEZWxlZ2F0aW9uEn'
    'kKD3ZvdGVfZGVsZWdhdGlvbhgKIAEoCzJOLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkNhcmRhbm9T'
    'aWduVHJhbnNhY3Rpb25SZXF1ZXN0LkNlcnRpZmljYXRlLlZvdGVEZWxlZ2F0aW9uSABSDnZvdG'
    'VEZWxlZ2F0aW9uGk4KD1N0YWtlRGVsZWdhdGlvbhIYCgdrZXlwYXRoGAEgAygNUgdrZXlwYXRo'
    'EiEKDHBvb2xfa2V5aGFzaBgCIAEoDFILcG9vbEtleWhhc2gaugIKDlZvdGVEZWxlZ2F0aW9uEh'
    'gKB2tleXBhdGgYASADKA1SB2tleXBhdGgScgoEdHlwZRgCIAEoDjJeLnNoaWZ0Y3J5cHRvLmJp'
    'dGJveDAyLkNhcmRhbm9TaWduVHJhbnNhY3Rpb25SZXF1ZXN0LkNlcnRpZmljYXRlLlZvdGVEZW'
    'xlZ2F0aW9uLkNhcmRhbm9EUmVwVHlwZVIEdHlwZRIoCg1kcmVwX2NyZWRoYXNoGAMgASgMSABS'
    'DGRyZXBDcmVkaGFzaIgBASJeCg9DYXJkYW5vRFJlcFR5cGUSDAoIS0VZX0hBU0gQABIPCgtTQ1'
    'JJUFRfSEFTSBABEhIKDkFMV0FZU19BQlNUQUlOEAISGAoUQUxXQVlTX05PX0NPTkZJREVOQ0UQ'
    'A0IQCg5fZHJlcF9jcmVkaGFzaEIGCgRjZXJ0GjwKCldpdGhkcmF3YWwSGAoHa2V5cGF0aBgBIA'
    'MoDVIHa2V5cGF0aBIUCgV2YWx1ZRgCIAEoBFIFdmFsdWU=');

@$core.Deprecated('Use cardanoSignTransactionResponseDescriptor instead')
const CardanoSignTransactionResponse$json = {
  '1': 'CardanoSignTransactionResponse',
  '2': [
    {
      '1': 'shelley_witnesses',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.shiftcrypto.bitbox02.CardanoSignTransactionResponse.ShelleyWitness',
      '10': 'shelleyWitnesses'
    },
  ],
  '3': [CardanoSignTransactionResponse_ShelleyWitness$json],
};

@$core.Deprecated('Use cardanoSignTransactionResponseDescriptor instead')
const CardanoSignTransactionResponse_ShelleyWitness$json = {
  '1': 'ShelleyWitness',
  '2': [
    {'1': 'public_key', '3': 1, '4': 1, '5': 12, '10': 'publicKey'},
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `CardanoSignTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoSignTransactionResponseDescriptor = $convert.base64Decode(
    'Ch5DYXJkYW5vU2lnblRyYW5zYWN0aW9uUmVzcG9uc2UScAoRc2hlbGxleV93aXRuZXNzZXMYAS'
    'ADKAsyQy5zaGlmdGNyeXB0by5iaXRib3gwMi5DYXJkYW5vU2lnblRyYW5zYWN0aW9uUmVzcG9u'
    'c2UuU2hlbGxleVdpdG5lc3NSEHNoZWxsZXlXaXRuZXNzZXMaTQoOU2hlbGxleVdpdG5lc3MSHQ'
    'oKcHVibGljX2tleRgBIAEoDFIJcHVibGljS2V5EhwKCXNpZ25hdHVyZRgCIAEoDFIJc2lnbmF0'
    'dXJl');

@$core.Deprecated('Use cardanoRequestDescriptor instead')
const CardanoRequest$json = {
  '1': 'CardanoRequest',
  '2': [
    {
      '1': 'xpubs',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoXpubsRequest',
      '9': 0,
      '10': 'xpubs'
    },
    {
      '1': 'address',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoAddressRequest',
      '9': 0,
      '10': 'address'
    },
    {
      '1': 'sign_transaction',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionRequest',
      '9': 0,
      '10': 'signTransaction'
    },
  ],
  '8': [
    {'1': 'request'},
  ],
};

/// Descriptor for `CardanoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoRequestDescriptor = $convert.base64Decode(
    'Cg5DYXJkYW5vUmVxdWVzdBJBCgV4cHVicxgBIAEoCzIpLnNoaWZ0Y3J5cHRvLmJpdGJveDAyLk'
    'NhcmRhbm9YcHVic1JlcXVlc3RIAFIFeHB1YnMSRwoHYWRkcmVzcxgCIAEoCzIrLnNoaWZ0Y3J5'
    'cHRvLmJpdGJveDAyLkNhcmRhbm9BZGRyZXNzUmVxdWVzdEgAUgdhZGRyZXNzEmAKEHNpZ25fdH'
    'JhbnNhY3Rpb24YAyABKAsyMy5zaGlmdGNyeXB0by5iaXRib3gwMi5DYXJkYW5vU2lnblRyYW5z'
    'YWN0aW9uUmVxdWVzdEgAUg9zaWduVHJhbnNhY3Rpb25CCQoHcmVxdWVzdA==');

@$core.Deprecated('Use cardanoResponseDescriptor instead')
const CardanoResponse$json = {
  '1': 'CardanoResponse',
  '2': [
    {
      '1': 'xpubs',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoXpubsResponse',
      '9': 0,
      '10': 'xpubs'
    },
    {
      '1': 'pub',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.PubResponse',
      '9': 0,
      '10': 'pub'
    },
    {
      '1': 'sign_transaction',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.shiftcrypto.bitbox02.CardanoSignTransactionResponse',
      '9': 0,
      '10': 'signTransaction'
    },
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `CardanoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardanoResponseDescriptor = $convert.base64Decode(
    'Cg9DYXJkYW5vUmVzcG9uc2USQgoFeHB1YnMYASABKAsyKi5zaGlmdGNyeXB0by5iaXRib3gwMi'
    '5DYXJkYW5vWHB1YnNSZXNwb25zZUgAUgV4cHVicxI1CgNwdWIYAiABKAsyIS5zaGlmdGNyeXB0'
    'by5iaXRib3gwMi5QdWJSZXNwb25zZUgAUgNwdWISYQoQc2lnbl90cmFuc2FjdGlvbhgDIAEoCz'
    'I0LnNoaWZ0Y3J5cHRvLmJpdGJveDAyLkNhcmRhbm9TaWduVHJhbnNhY3Rpb25SZXNwb25zZUgA'
    'Ug9zaWduVHJhbnNhY3Rpb25CCgoIcmVzcG9uc2U=');
