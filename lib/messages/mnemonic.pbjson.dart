// This is a generated file - do not edit.
//
// Generated from mnemonic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use showMnemonicRequestDescriptor instead')
const ShowMnemonicRequest$json = {
  '1': 'ShowMnemonicRequest',
};

/// Descriptor for `ShowMnemonicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showMnemonicRequestDescriptor =
    $convert.base64Decode('ChNTaG93TW5lbW9uaWNSZXF1ZXN0');

@$core.Deprecated('Use restoreFromMnemonicRequestDescriptor instead')
const RestoreFromMnemonicRequest$json = {
  '1': 'RestoreFromMnemonicRequest',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 13, '10': 'timestamp'},
    {'1': 'timezone_offset', '3': 2, '4': 1, '5': 5, '10': 'timezoneOffset'},
  ],
};

/// Descriptor for `RestoreFromMnemonicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreFromMnemonicRequestDescriptor =
    $convert.base64Decode(
        'ChpSZXN0b3JlRnJvbU1uZW1vbmljUmVxdWVzdBIcCgl0aW1lc3RhbXAYASABKA1SCXRpbWVzdG'
        'FtcBInCg90aW1lem9uZV9vZmZzZXQYAiABKAVSDnRpbWV6b25lT2Zmc2V0');

@$core.Deprecated('Use setMnemonicPassphraseEnabledRequestDescriptor instead')
const SetMnemonicPassphraseEnabledRequest$json = {
  '1': 'SetMnemonicPassphraseEnabledRequest',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
  ],
};

/// Descriptor for `SetMnemonicPassphraseEnabledRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMnemonicPassphraseEnabledRequestDescriptor =
    $convert.base64Decode(
        'CiNTZXRNbmVtb25pY1Bhc3NwaHJhc2VFbmFibGVkUmVxdWVzdBIYCgdlbmFibGVkGAEgASgIUg'
        'dlbmFibGVk');
