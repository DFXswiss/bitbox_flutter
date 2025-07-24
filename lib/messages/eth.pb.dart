// This is a generated file - do not edit.
//
// Generated from eth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'antiklepto.pb.dart' as $0;
import 'common.pb.dart' as $1;
import 'eth.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'eth.pbenum.dart';

class ETHPubRequest extends $pb.GeneratedMessage {
  factory ETHPubRequest({
    $core.Iterable<$core.int>? keypath,
    ETHCoin? coin,
    ETHPubRequest_OutputType? outputType,
    $core.bool? display,
    $core.List<$core.int>? contractAddress,
    $fixnum.Int64? chainId,
  }) {
    final result = create();
    if (keypath != null) result.keypath.addAll(keypath);
    if (coin != null) result.coin = coin;
    if (outputType != null) result.outputType = outputType;
    if (display != null) result.display = display;
    if (contractAddress != null) result.contractAddress = contractAddress;
    if (chainId != null) result.chainId = chainId;
    return result;
  }

  ETHPubRequest._();

  factory ETHPubRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHPubRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHPubRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..e<ETHCoin>(2, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: ETHCoin.ETH,
        valueOf: ETHCoin.valueOf,
        enumValues: ETHCoin.values)
    ..e<ETHPubRequest_OutputType>(
        3, _omitFieldNames ? '' : 'outputType', $pb.PbFieldType.OE,
        defaultOrMaker: ETHPubRequest_OutputType.ADDRESS,
        valueOf: ETHPubRequest_OutputType.valueOf,
        enumValues: ETHPubRequest_OutputType.values)
    ..aOB(4, _omitFieldNames ? '' : 'display')
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'contractAddress', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHPubRequest clone() => ETHPubRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHPubRequest copyWith(void Function(ETHPubRequest) updates) =>
      super.copyWith((message) => updates(message as ETHPubRequest))
          as ETHPubRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHPubRequest create() => ETHPubRequest._();
  @$core.override
  ETHPubRequest createEmptyInstance() => create();
  static $pb.PbList<ETHPubRequest> createRepeated() =>
      $pb.PbList<ETHPubRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHPubRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHPubRequest>(create);
  static ETHPubRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get keypath => $_getList(0);

  /// Deprecated: use chain_id instead.
  @$pb.TagNumber(2)
  ETHCoin get coin => $_getN(1);
  @$pb.TagNumber(2)
  set coin(ETHCoin value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCoin() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoin() => $_clearField(2);

  @$pb.TagNumber(3)
  ETHPubRequest_OutputType get outputType => $_getN(2);
  @$pb.TagNumber(3)
  set outputType(ETHPubRequest_OutputType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOutputType() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutputType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get display => $_getBF(3);
  @$pb.TagNumber(4)
  set display($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDisplay() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplay() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get contractAddress => $_getN(4);
  @$pb.TagNumber(5)
  set contractAddress($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasContractAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractAddress() => $_clearField(5);

  /// If non-zero, `coin` is ignored and `chain_id` is used to identify the network.
  @$pb.TagNumber(6)
  $fixnum.Int64 get chainId => $_getI64(5);
  @$pb.TagNumber(6)
  set chainId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasChainId() => $_has(5);
  @$pb.TagNumber(6)
  void clearChainId() => $_clearField(6);
}

/// TX payload for "legacy" (EIP-155) transactions: https://eips.ethereum.org/EIPS/eip-155
class ETHSignRequest extends $pb.GeneratedMessage {
  factory ETHSignRequest({
    ETHCoin? coin,
    $core.Iterable<$core.int>? keypath,
    $core.List<$core.int>? nonce,
    $core.List<$core.int>? gasPrice,
    $core.List<$core.int>? gasLimit,
    $core.List<$core.int>? recipient,
    $core.List<$core.int>? value,
    $core.List<$core.int>? data,
    $0.AntiKleptoHostNonceCommitment? hostNonceCommitment,
    $fixnum.Int64? chainId,
    ETHAddressCase? addressCase,
  }) {
    final result = create();
    if (coin != null) result.coin = coin;
    if (keypath != null) result.keypath.addAll(keypath);
    if (nonce != null) result.nonce = nonce;
    if (gasPrice != null) result.gasPrice = gasPrice;
    if (gasLimit != null) result.gasLimit = gasLimit;
    if (recipient != null) result.recipient = recipient;
    if (value != null) result.value = value;
    if (data != null) result.data = data;
    if (hostNonceCommitment != null)
      result.hostNonceCommitment = hostNonceCommitment;
    if (chainId != null) result.chainId = chainId;
    if (addressCase != null) result.addressCase = addressCase;
    return result;
  }

  ETHSignRequest._();

  factory ETHSignRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<ETHCoin>(1, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: ETHCoin.ETH,
        valueOf: ETHCoin.valueOf,
        enumValues: ETHCoin.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'gasPrice', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'gasLimit', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'recipient', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOM<$0.AntiKleptoHostNonceCommitment>(
        9, _omitFieldNames ? '' : 'hostNonceCommitment',
        subBuilder: $0.AntiKleptoHostNonceCommitment.create)
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ETHAddressCase>(
        11, _omitFieldNames ? '' : 'addressCase', $pb.PbFieldType.OE,
        defaultOrMaker: ETHAddressCase.ETH_ADDRESS_CASE_MIXED,
        valueOf: ETHAddressCase.valueOf,
        enumValues: ETHAddressCase.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignRequest clone() => ETHSignRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignRequest copyWith(void Function(ETHSignRequest) updates) =>
      super.copyWith((message) => updates(message as ETHSignRequest))
          as ETHSignRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignRequest create() => ETHSignRequest._();
  @$core.override
  ETHSignRequest createEmptyInstance() => create();
  static $pb.PbList<ETHSignRequest> createRepeated() =>
      $pb.PbList<ETHSignRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHSignRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHSignRequest>(create);
  static ETHSignRequest? _defaultInstance;

  /// Deprecated: use chain_id instead.
  @$pb.TagNumber(1)
  ETHCoin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin(ETHCoin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypath => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get nonce => $_getN(2);
  @$pb.TagNumber(3)
  set nonce($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get gasPrice => $_getN(3);
  @$pb.TagNumber(4)
  set gasPrice($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearGasPrice() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get gasLimit => $_getN(4);
  @$pb.TagNumber(5)
  set gasLimit($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearGasLimit() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get recipient => $_getN(5);
  @$pb.TagNumber(6)
  set recipient($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRecipient() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecipient() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get value => $_getN(6);
  @$pb.TagNumber(7)
  set value($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearValue() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get data => $_getN(7);
  @$pb.TagNumber(8)
  set data($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasData() => $_has(7);
  @$pb.TagNumber(8)
  void clearData() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.AntiKleptoHostNonceCommitment get hostNonceCommitment => $_getN(8);
  @$pb.TagNumber(9)
  set hostNonceCommitment($0.AntiKleptoHostNonceCommitment value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasHostNonceCommitment() => $_has(8);
  @$pb.TagNumber(9)
  void clearHostNonceCommitment() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.AntiKleptoHostNonceCommitment ensureHostNonceCommitment() => $_ensure(8);

  /// If non-zero, `coin` is ignored and `chain_id` is used to identify the network.
  @$pb.TagNumber(10)
  $fixnum.Int64 get chainId => $_getI64(9);
  @$pb.TagNumber(10)
  set chainId($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasChainId() => $_has(9);
  @$pb.TagNumber(10)
  void clearChainId() => $_clearField(10);

  @$pb.TagNumber(11)
  ETHAddressCase get addressCase => $_getN(10);
  @$pb.TagNumber(11)
  set addressCase(ETHAddressCase value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAddressCase() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddressCase() => $_clearField(11);
}

/// TX payload for an EIP-1559 (type 2) transaction: https://eips.ethereum.org/EIPS/eip-1559
class ETHSignEIP1559Request extends $pb.GeneratedMessage {
  factory ETHSignEIP1559Request({
    $fixnum.Int64? chainId,
    $core.Iterable<$core.int>? keypath,
    $core.List<$core.int>? nonce,
    $core.List<$core.int>? maxPriorityFeePerGas,
    $core.List<$core.int>? maxFeePerGas,
    $core.List<$core.int>? gasLimit,
    $core.List<$core.int>? recipient,
    $core.List<$core.int>? value,
    $core.List<$core.int>? data,
    $0.AntiKleptoHostNonceCommitment? hostNonceCommitment,
    ETHAddressCase? addressCase,
  }) {
    final result = create();
    if (chainId != null) result.chainId = chainId;
    if (keypath != null) result.keypath.addAll(keypath);
    if (nonce != null) result.nonce = nonce;
    if (maxPriorityFeePerGas != null)
      result.maxPriorityFeePerGas = maxPriorityFeePerGas;
    if (maxFeePerGas != null) result.maxFeePerGas = maxFeePerGas;
    if (gasLimit != null) result.gasLimit = gasLimit;
    if (recipient != null) result.recipient = recipient;
    if (value != null) result.value = value;
    if (data != null) result.data = data;
    if (hostNonceCommitment != null)
      result.hostNonceCommitment = hostNonceCommitment;
    if (addressCase != null) result.addressCase = addressCase;
    return result;
  }

  ETHSignEIP1559Request._();

  factory ETHSignEIP1559Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignEIP1559Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignEIP1559Request',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'nonce', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'maxPriorityFeePerGas', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'maxFeePerGas', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'gasLimit', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'recipient', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        9, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOM<$0.AntiKleptoHostNonceCommitment>(
        10, _omitFieldNames ? '' : 'hostNonceCommitment',
        subBuilder: $0.AntiKleptoHostNonceCommitment.create)
    ..e<ETHAddressCase>(
        11, _omitFieldNames ? '' : 'addressCase', $pb.PbFieldType.OE,
        defaultOrMaker: ETHAddressCase.ETH_ADDRESS_CASE_MIXED,
        valueOf: ETHAddressCase.valueOf,
        enumValues: ETHAddressCase.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignEIP1559Request clone() =>
      ETHSignEIP1559Request()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignEIP1559Request copyWith(
          void Function(ETHSignEIP1559Request) updates) =>
      super.copyWith((message) => updates(message as ETHSignEIP1559Request))
          as ETHSignEIP1559Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignEIP1559Request create() => ETHSignEIP1559Request._();
  @$core.override
  ETHSignEIP1559Request createEmptyInstance() => create();
  static $pb.PbList<ETHSignEIP1559Request> createRepeated() =>
      $pb.PbList<ETHSignEIP1559Request>();
  @$core.pragma('dart2js:noInline')
  static ETHSignEIP1559Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHSignEIP1559Request>(create);
  static ETHSignEIP1559Request? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chainId => $_getI64(0);
  @$pb.TagNumber(1)
  set chainId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChainId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypath => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get nonce => $_getN(2);
  @$pb.TagNumber(3)
  set nonce($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get maxPriorityFeePerGas => $_getN(3);
  @$pb.TagNumber(4)
  set maxPriorityFeePerGas($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxPriorityFeePerGas() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxPriorityFeePerGas() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get maxFeePerGas => $_getN(4);
  @$pb.TagNumber(5)
  set maxFeePerGas($core.List<$core.int> value) => $_setBytes(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxFeePerGas() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxFeePerGas() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get gasLimit => $_getN(5);
  @$pb.TagNumber(6)
  set gasLimit($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGasLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearGasLimit() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get recipient => $_getN(6);
  @$pb.TagNumber(7)
  set recipient($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRecipient() => $_has(6);
  @$pb.TagNumber(7)
  void clearRecipient() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get value => $_getN(7);
  @$pb.TagNumber(8)
  set value($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearValue() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get data => $_getN(8);
  @$pb.TagNumber(9)
  set data($core.List<$core.int> value) => $_setBytes(8, value);
  @$pb.TagNumber(9)
  $core.bool hasData() => $_has(8);
  @$pb.TagNumber(9)
  void clearData() => $_clearField(9);

  @$pb.TagNumber(10)
  $0.AntiKleptoHostNonceCommitment get hostNonceCommitment => $_getN(9);
  @$pb.TagNumber(10)
  set hostNonceCommitment($0.AntiKleptoHostNonceCommitment value) =>
      $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasHostNonceCommitment() => $_has(9);
  @$pb.TagNumber(10)
  void clearHostNonceCommitment() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.AntiKleptoHostNonceCommitment ensureHostNonceCommitment() => $_ensure(9);

  @$pb.TagNumber(11)
  ETHAddressCase get addressCase => $_getN(10);
  @$pb.TagNumber(11)
  set addressCase(ETHAddressCase value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAddressCase() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddressCase() => $_clearField(11);
}

class ETHSignMessageRequest extends $pb.GeneratedMessage {
  factory ETHSignMessageRequest({
    ETHCoin? coin,
    $core.Iterable<$core.int>? keypath,
    $core.List<$core.int>? msg,
    $0.AntiKleptoHostNonceCommitment? hostNonceCommitment,
    $fixnum.Int64? chainId,
  }) {
    final result = create();
    if (coin != null) result.coin = coin;
    if (keypath != null) result.keypath.addAll(keypath);
    if (msg != null) result.msg = msg;
    if (hostNonceCommitment != null)
      result.hostNonceCommitment = hostNonceCommitment;
    if (chainId != null) result.chainId = chainId;
    return result;
  }

  ETHSignMessageRequest._();

  factory ETHSignMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignMessageRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<ETHCoin>(1, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE,
        defaultOrMaker: ETHCoin.ETH,
        valueOf: ETHCoin.valueOf,
        enumValues: ETHCoin.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'msg', $pb.PbFieldType.OY)
    ..aOM<$0.AntiKleptoHostNonceCommitment>(
        4, _omitFieldNames ? '' : 'hostNonceCommitment',
        subBuilder: $0.AntiKleptoHostNonceCommitment.create)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignMessageRequest clone() =>
      ETHSignMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignMessageRequest copyWith(
          void Function(ETHSignMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ETHSignMessageRequest))
          as ETHSignMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignMessageRequest create() => ETHSignMessageRequest._();
  @$core.override
  ETHSignMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ETHSignMessageRequest> createRepeated() =>
      $pb.PbList<ETHSignMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHSignMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHSignMessageRequest>(create);
  static ETHSignMessageRequest? _defaultInstance;

  /// Deprecated: use chain_id instead.
  @$pb.TagNumber(1)
  ETHCoin get coin => $_getN(0);
  @$pb.TagNumber(1)
  set coin(ETHCoin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoin() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypath => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get msg => $_getN(2);
  @$pb.TagNumber(3)
  set msg($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.AntiKleptoHostNonceCommitment get hostNonceCommitment => $_getN(3);
  @$pb.TagNumber(4)
  set hostNonceCommitment($0.AntiKleptoHostNonceCommitment value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHostNonceCommitment() => $_has(3);
  @$pb.TagNumber(4)
  void clearHostNonceCommitment() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.AntiKleptoHostNonceCommitment ensureHostNonceCommitment() => $_ensure(3);

  /// If non-zero, `coin` is ignored and `chain_id` is used to identify the network.
  @$pb.TagNumber(5)
  $fixnum.Int64 get chainId => $_getI64(4);
  @$pb.TagNumber(5)
  set chainId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasChainId() => $_has(4);
  @$pb.TagNumber(5)
  void clearChainId() => $_clearField(5);
}

class ETHSignResponse extends $pb.GeneratedMessage {
  factory ETHSignResponse({
    $core.List<$core.int>? signature,
  }) {
    final result = create();
    if (signature != null) result.signature = signature;
    return result;
  }

  ETHSignResponse._();

  factory ETHSignResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignResponse clone() => ETHSignResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignResponse copyWith(void Function(ETHSignResponse) updates) =>
      super.copyWith((message) => updates(message as ETHSignResponse))
          as ETHSignResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignResponse create() => ETHSignResponse._();
  @$core.override
  ETHSignResponse createEmptyInstance() => create();
  static $pb.PbList<ETHSignResponse> createRepeated() =>
      $pb.PbList<ETHSignResponse>();
  @$core.pragma('dart2js:noInline')
  static ETHSignResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHSignResponse>(create);
  static ETHSignResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => $_clearField(1);
}

class ETHSignTypedMessageRequest_MemberType extends $pb.GeneratedMessage {
  factory ETHSignTypedMessageRequest_MemberType({
    ETHSignTypedMessageRequest_DataType? type,
    $core.int? size,
    $core.String? structName,
    ETHSignTypedMessageRequest_MemberType? arrayType,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (size != null) result.size = size;
    if (structName != null) result.structName = structName;
    if (arrayType != null) result.arrayType = arrayType;
    return result;
  }

  ETHSignTypedMessageRequest_MemberType._();

  factory ETHSignTypedMessageRequest_MemberType.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignTypedMessageRequest_MemberType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignTypedMessageRequest.MemberType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<ETHSignTypedMessageRequest_DataType>(
        1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: ETHSignTypedMessageRequest_DataType.UNKNOWN,
        valueOf: ETHSignTypedMessageRequest_DataType.valueOf,
        enumValues: ETHSignTypedMessageRequest_DataType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'structName')
    ..aOM<ETHSignTypedMessageRequest_MemberType>(
        4, _omitFieldNames ? '' : 'arrayType',
        subBuilder: ETHSignTypedMessageRequest_MemberType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest_MemberType clone() =>
      ETHSignTypedMessageRequest_MemberType()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest_MemberType copyWith(
          void Function(ETHSignTypedMessageRequest_MemberType) updates) =>
      super.copyWith((message) =>
              updates(message as ETHSignTypedMessageRequest_MemberType))
          as ETHSignTypedMessageRequest_MemberType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest_MemberType create() =>
      ETHSignTypedMessageRequest_MemberType._();
  @$core.override
  ETHSignTypedMessageRequest_MemberType createEmptyInstance() => create();
  static $pb.PbList<ETHSignTypedMessageRequest_MemberType> createRepeated() =>
      $pb.PbList<ETHSignTypedMessageRequest_MemberType>();
  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest_MemberType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ETHSignTypedMessageRequest_MemberType>(create);
  static ETHSignTypedMessageRequest_MemberType? _defaultInstance;

  @$pb.TagNumber(1)
  ETHSignTypedMessageRequest_DataType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ETHSignTypedMessageRequest_DataType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(2)
  set size($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get structName => $_getSZ(2);
  @$pb.TagNumber(3)
  set structName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStructName() => $_has(2);
  @$pb.TagNumber(3)
  void clearStructName() => $_clearField(3);

  @$pb.TagNumber(4)
  ETHSignTypedMessageRequest_MemberType get arrayType => $_getN(3);
  @$pb.TagNumber(4)
  set arrayType(ETHSignTypedMessageRequest_MemberType value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasArrayType() => $_has(3);
  @$pb.TagNumber(4)
  void clearArrayType() => $_clearField(4);
  @$pb.TagNumber(4)
  ETHSignTypedMessageRequest_MemberType ensureArrayType() => $_ensure(3);
}

class ETHSignTypedMessageRequest_Member extends $pb.GeneratedMessage {
  factory ETHSignTypedMessageRequest_Member({
    $core.String? name,
    ETHSignTypedMessageRequest_MemberType? type,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    return result;
  }

  ETHSignTypedMessageRequest_Member._();

  factory ETHSignTypedMessageRequest_Member.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignTypedMessageRequest_Member.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignTypedMessageRequest.Member',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<ETHSignTypedMessageRequest_MemberType>(
        2, _omitFieldNames ? '' : 'type',
        subBuilder: ETHSignTypedMessageRequest_MemberType.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest_Member clone() =>
      ETHSignTypedMessageRequest_Member()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest_Member copyWith(
          void Function(ETHSignTypedMessageRequest_Member) updates) =>
      super.copyWith((message) =>
              updates(message as ETHSignTypedMessageRequest_Member))
          as ETHSignTypedMessageRequest_Member;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest_Member create() =>
      ETHSignTypedMessageRequest_Member._();
  @$core.override
  ETHSignTypedMessageRequest_Member createEmptyInstance() => create();
  static $pb.PbList<ETHSignTypedMessageRequest_Member> createRepeated() =>
      $pb.PbList<ETHSignTypedMessageRequest_Member>();
  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest_Member getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHSignTypedMessageRequest_Member>(
          create);
  static ETHSignTypedMessageRequest_Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  ETHSignTypedMessageRequest_MemberType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ETHSignTypedMessageRequest_MemberType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
  @$pb.TagNumber(2)
  ETHSignTypedMessageRequest_MemberType ensureType() => $_ensure(1);
}

class ETHSignTypedMessageRequest_StructType extends $pb.GeneratedMessage {
  factory ETHSignTypedMessageRequest_StructType({
    $core.String? name,
    $core.Iterable<ETHSignTypedMessageRequest_Member>? members,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (members != null) result.members.addAll(members);
    return result;
  }

  ETHSignTypedMessageRequest_StructType._();

  factory ETHSignTypedMessageRequest_StructType.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignTypedMessageRequest_StructType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignTypedMessageRequest.StructType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<ETHSignTypedMessageRequest_Member>(
        2, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: ETHSignTypedMessageRequest_Member.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest_StructType clone() =>
      ETHSignTypedMessageRequest_StructType()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest_StructType copyWith(
          void Function(ETHSignTypedMessageRequest_StructType) updates) =>
      super.copyWith((message) =>
              updates(message as ETHSignTypedMessageRequest_StructType))
          as ETHSignTypedMessageRequest_StructType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest_StructType create() =>
      ETHSignTypedMessageRequest_StructType._();
  @$core.override
  ETHSignTypedMessageRequest_StructType createEmptyInstance() => create();
  static $pb.PbList<ETHSignTypedMessageRequest_StructType> createRepeated() =>
      $pb.PbList<ETHSignTypedMessageRequest_StructType>();
  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest_StructType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ETHSignTypedMessageRequest_StructType>(create);
  static ETHSignTypedMessageRequest_StructType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ETHSignTypedMessageRequest_Member> get members => $_getList(1);
}

class ETHSignTypedMessageRequest extends $pb.GeneratedMessage {
  factory ETHSignTypedMessageRequest({
    $fixnum.Int64? chainId,
    $core.Iterable<$core.int>? keypath,
    $core.Iterable<ETHSignTypedMessageRequest_StructType>? types,
    $core.String? primaryType,
    $0.AntiKleptoHostNonceCommitment? hostNonceCommitment,
  }) {
    final result = create();
    if (chainId != null) result.chainId = chainId;
    if (keypath != null) result.keypath.addAll(keypath);
    if (types != null) result.types.addAll(types);
    if (primaryType != null) result.primaryType = primaryType;
    if (hostNonceCommitment != null)
      result.hostNonceCommitment = hostNonceCommitment;
    return result;
  }

  ETHSignTypedMessageRequest._();

  factory ETHSignTypedMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHSignTypedMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHSignTypedMessageRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'chainId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'keypath', $pb.PbFieldType.KU3)
    ..pc<ETHSignTypedMessageRequest_StructType>(
        3, _omitFieldNames ? '' : 'types', $pb.PbFieldType.PM,
        subBuilder: ETHSignTypedMessageRequest_StructType.create)
    ..aOS(4, _omitFieldNames ? '' : 'primaryType')
    ..aOM<$0.AntiKleptoHostNonceCommitment>(
        5, _omitFieldNames ? '' : 'hostNonceCommitment',
        subBuilder: $0.AntiKleptoHostNonceCommitment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest clone() =>
      ETHSignTypedMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHSignTypedMessageRequest copyWith(
          void Function(ETHSignTypedMessageRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ETHSignTypedMessageRequest))
          as ETHSignTypedMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest create() => ETHSignTypedMessageRequest._();
  @$core.override
  ETHSignTypedMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ETHSignTypedMessageRequest> createRepeated() =>
      $pb.PbList<ETHSignTypedMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHSignTypedMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHSignTypedMessageRequest>(create);
  static ETHSignTypedMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chainId => $_getI64(0);
  @$pb.TagNumber(1)
  set chainId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChainId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get keypath => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<ETHSignTypedMessageRequest_StructType> get types => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get primaryType => $_getSZ(3);
  @$pb.TagNumber(4)
  set primaryType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPrimaryType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrimaryType() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.AntiKleptoHostNonceCommitment get hostNonceCommitment => $_getN(4);
  @$pb.TagNumber(5)
  set hostNonceCommitment($0.AntiKleptoHostNonceCommitment value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasHostNonceCommitment() => $_has(4);
  @$pb.TagNumber(5)
  void clearHostNonceCommitment() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.AntiKleptoHostNonceCommitment ensureHostNonceCommitment() => $_ensure(4);
}

class ETHTypedMessageValueResponse extends $pb.GeneratedMessage {
  factory ETHTypedMessageValueResponse({
    ETHTypedMessageValueResponse_RootObject? rootObject,
    $core.Iterable<$core.int>? path,
  }) {
    final result = create();
    if (rootObject != null) result.rootObject = rootObject;
    if (path != null) result.path.addAll(path);
    return result;
  }

  ETHTypedMessageValueResponse._();

  factory ETHTypedMessageValueResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHTypedMessageValueResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHTypedMessageValueResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..e<ETHTypedMessageValueResponse_RootObject>(
        1, _omitFieldNames ? '' : 'rootObject', $pb.PbFieldType.OE,
        defaultOrMaker: ETHTypedMessageValueResponse_RootObject.UNKNOWN,
        valueOf: ETHTypedMessageValueResponse_RootObject.valueOf,
        enumValues: ETHTypedMessageValueResponse_RootObject.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'path', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHTypedMessageValueResponse clone() =>
      ETHTypedMessageValueResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHTypedMessageValueResponse copyWith(
          void Function(ETHTypedMessageValueResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ETHTypedMessageValueResponse))
          as ETHTypedMessageValueResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHTypedMessageValueResponse create() =>
      ETHTypedMessageValueResponse._();
  @$core.override
  ETHTypedMessageValueResponse createEmptyInstance() => create();
  static $pb.PbList<ETHTypedMessageValueResponse> createRepeated() =>
      $pb.PbList<ETHTypedMessageValueResponse>();
  @$core.pragma('dart2js:noInline')
  static ETHTypedMessageValueResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHTypedMessageValueResponse>(create);
  static ETHTypedMessageValueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ETHTypedMessageValueResponse_RootObject get rootObject => $_getN(0);
  @$pb.TagNumber(1)
  set rootObject(ETHTypedMessageValueResponse_RootObject value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRootObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootObject() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get path => $_getList(1);
}

class ETHTypedMessageValueRequest extends $pb.GeneratedMessage {
  factory ETHTypedMessageValueRequest({
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  ETHTypedMessageValueRequest._();

  factory ETHTypedMessageValueRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHTypedMessageValueRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHTypedMessageValueRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHTypedMessageValueRequest clone() =>
      ETHTypedMessageValueRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHTypedMessageValueRequest copyWith(
          void Function(ETHTypedMessageValueRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ETHTypedMessageValueRequest))
          as ETHTypedMessageValueRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHTypedMessageValueRequest create() =>
      ETHTypedMessageValueRequest._();
  @$core.override
  ETHTypedMessageValueRequest createEmptyInstance() => create();
  static $pb.PbList<ETHTypedMessageValueRequest> createRepeated() =>
      $pb.PbList<ETHTypedMessageValueRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHTypedMessageValueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHTypedMessageValueRequest>(create);
  static ETHTypedMessageValueRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

enum ETHRequest_Request {
  pub,
  sign,
  signMsg,
  antikleptoSignature,
  signTypedMsg,
  typedMsgValue,
  signEip1559,
  notSet
}

class ETHRequest extends $pb.GeneratedMessage {
  factory ETHRequest({
    ETHPubRequest? pub,
    ETHSignRequest? sign,
    ETHSignMessageRequest? signMsg,
    $0.AntiKleptoSignatureRequest? antikleptoSignature,
    ETHSignTypedMessageRequest? signTypedMsg,
    ETHTypedMessageValueRequest? typedMsgValue,
    ETHSignEIP1559Request? signEip1559,
  }) {
    final result = create();
    if (pub != null) result.pub = pub;
    if (sign != null) result.sign = sign;
    if (signMsg != null) result.signMsg = signMsg;
    if (antikleptoSignature != null)
      result.antikleptoSignature = antikleptoSignature;
    if (signTypedMsg != null) result.signTypedMsg = signTypedMsg;
    if (typedMsgValue != null) result.typedMsgValue = typedMsgValue;
    if (signEip1559 != null) result.signEip1559 = signEip1559;
    return result;
  }

  ETHRequest._();

  factory ETHRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ETHRequest_Request>
      _ETHRequest_RequestByTag = {
    1: ETHRequest_Request.pub,
    2: ETHRequest_Request.sign,
    3: ETHRequest_Request.signMsg,
    4: ETHRequest_Request.antikleptoSignature,
    5: ETHRequest_Request.signTypedMsg,
    6: ETHRequest_Request.typedMsgValue,
    7: ETHRequest_Request.signEip1559,
    0: ETHRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<ETHPubRequest>(1, _omitFieldNames ? '' : 'pub',
        subBuilder: ETHPubRequest.create)
    ..aOM<ETHSignRequest>(2, _omitFieldNames ? '' : 'sign',
        subBuilder: ETHSignRequest.create)
    ..aOM<ETHSignMessageRequest>(3, _omitFieldNames ? '' : 'signMsg',
        subBuilder: ETHSignMessageRequest.create)
    ..aOM<$0.AntiKleptoSignatureRequest>(
        4, _omitFieldNames ? '' : 'antikleptoSignature',
        subBuilder: $0.AntiKleptoSignatureRequest.create)
    ..aOM<ETHSignTypedMessageRequest>(5, _omitFieldNames ? '' : 'signTypedMsg',
        subBuilder: ETHSignTypedMessageRequest.create)
    ..aOM<ETHTypedMessageValueRequest>(
        6, _omitFieldNames ? '' : 'typedMsgValue',
        subBuilder: ETHTypedMessageValueRequest.create)
    ..aOM<ETHSignEIP1559Request>(7, _omitFieldNames ? '' : 'signEip1559',
        subBuilder: ETHSignEIP1559Request.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHRequest clone() => ETHRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHRequest copyWith(void Function(ETHRequest) updates) =>
      super.copyWith((message) => updates(message as ETHRequest)) as ETHRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHRequest create() => ETHRequest._();
  @$core.override
  ETHRequest createEmptyInstance() => create();
  static $pb.PbList<ETHRequest> createRepeated() => $pb.PbList<ETHRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHRequest>(create);
  static ETHRequest? _defaultInstance;

  ETHRequest_Request whichRequest() =>
      _ETHRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ETHPubRequest get pub => $_getN(0);
  @$pb.TagNumber(1)
  set pub(ETHPubRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPub() => $_has(0);
  @$pb.TagNumber(1)
  void clearPub() => $_clearField(1);
  @$pb.TagNumber(1)
  ETHPubRequest ensurePub() => $_ensure(0);

  @$pb.TagNumber(2)
  ETHSignRequest get sign => $_getN(1);
  @$pb.TagNumber(2)
  set sign(ETHSignRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearSign() => $_clearField(2);
  @$pb.TagNumber(2)
  ETHSignRequest ensureSign() => $_ensure(1);

  @$pb.TagNumber(3)
  ETHSignMessageRequest get signMsg => $_getN(2);
  @$pb.TagNumber(3)
  set signMsg(ETHSignMessageRequest value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSignMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearSignMsg() => $_clearField(3);
  @$pb.TagNumber(3)
  ETHSignMessageRequest ensureSignMsg() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.AntiKleptoSignatureRequest get antikleptoSignature => $_getN(3);
  @$pb.TagNumber(4)
  set antikleptoSignature($0.AntiKleptoSignatureRequest value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAntikleptoSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearAntikleptoSignature() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.AntiKleptoSignatureRequest ensureAntikleptoSignature() => $_ensure(3);

  @$pb.TagNumber(5)
  ETHSignTypedMessageRequest get signTypedMsg => $_getN(4);
  @$pb.TagNumber(5)
  set signTypedMsg(ETHSignTypedMessageRequest value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSignTypedMsg() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignTypedMsg() => $_clearField(5);
  @$pb.TagNumber(5)
  ETHSignTypedMessageRequest ensureSignTypedMsg() => $_ensure(4);

  @$pb.TagNumber(6)
  ETHTypedMessageValueRequest get typedMsgValue => $_getN(5);
  @$pb.TagNumber(6)
  set typedMsgValue(ETHTypedMessageValueRequest value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTypedMsgValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearTypedMsgValue() => $_clearField(6);
  @$pb.TagNumber(6)
  ETHTypedMessageValueRequest ensureTypedMsgValue() => $_ensure(5);

  @$pb.TagNumber(7)
  ETHSignEIP1559Request get signEip1559 => $_getN(6);
  @$pb.TagNumber(7)
  set signEip1559(ETHSignEIP1559Request value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSignEip1559() => $_has(6);
  @$pb.TagNumber(7)
  void clearSignEip1559() => $_clearField(7);
  @$pb.TagNumber(7)
  ETHSignEIP1559Request ensureSignEip1559() => $_ensure(6);
}

enum ETHResponse_Response {
  pub,
  sign,
  antikleptoSignerCommitment,
  typedMsgValue,
  notSet
}

class ETHResponse extends $pb.GeneratedMessage {
  factory ETHResponse({
    $1.PubResponse? pub,
    ETHSignResponse? sign,
    $0.AntiKleptoSignerCommitment? antikleptoSignerCommitment,
    ETHTypedMessageValueResponse? typedMsgValue,
  }) {
    final result = create();
    if (pub != null) result.pub = pub;
    if (sign != null) result.sign = sign;
    if (antikleptoSignerCommitment != null)
      result.antikleptoSignerCommitment = antikleptoSignerCommitment;
    if (typedMsgValue != null) result.typedMsgValue = typedMsgValue;
    return result;
  }

  ETHResponse._();

  factory ETHResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ETHResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ETHResponse_Response>
      _ETHResponse_ResponseByTag = {
    1: ETHResponse_Response.pub,
    2: ETHResponse_Response.sign,
    3: ETHResponse_Response.antikleptoSignerCommitment,
    4: ETHResponse_Response.typedMsgValue,
    0: ETHResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ETHResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$1.PubResponse>(1, _omitFieldNames ? '' : 'pub',
        subBuilder: $1.PubResponse.create)
    ..aOM<ETHSignResponse>(2, _omitFieldNames ? '' : 'sign',
        subBuilder: ETHSignResponse.create)
    ..aOM<$0.AntiKleptoSignerCommitment>(
        3, _omitFieldNames ? '' : 'antikleptoSignerCommitment',
        subBuilder: $0.AntiKleptoSignerCommitment.create)
    ..aOM<ETHTypedMessageValueResponse>(
        4, _omitFieldNames ? '' : 'typedMsgValue',
        subBuilder: ETHTypedMessageValueResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHResponse clone() => ETHResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ETHResponse copyWith(void Function(ETHResponse) updates) =>
      super.copyWith((message) => updates(message as ETHResponse))
          as ETHResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHResponse create() => ETHResponse._();
  @$core.override
  ETHResponse createEmptyInstance() => create();
  static $pb.PbList<ETHResponse> createRepeated() => $pb.PbList<ETHResponse>();
  @$core.pragma('dart2js:noInline')
  static ETHResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ETHResponse>(create);
  static ETHResponse? _defaultInstance;

  ETHResponse_Response whichResponse() =>
      _ETHResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.PubResponse get pub => $_getN(0);
  @$pb.TagNumber(1)
  set pub($1.PubResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPub() => $_has(0);
  @$pb.TagNumber(1)
  void clearPub() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PubResponse ensurePub() => $_ensure(0);

  @$pb.TagNumber(2)
  ETHSignResponse get sign => $_getN(1);
  @$pb.TagNumber(2)
  set sign(ETHSignResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearSign() => $_clearField(2);
  @$pb.TagNumber(2)
  ETHSignResponse ensureSign() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.AntiKleptoSignerCommitment get antikleptoSignerCommitment => $_getN(2);
  @$pb.TagNumber(3)
  set antikleptoSignerCommitment($0.AntiKleptoSignerCommitment value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAntikleptoSignerCommitment() => $_has(2);
  @$pb.TagNumber(3)
  void clearAntikleptoSignerCommitment() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.AntiKleptoSignerCommitment ensureAntikleptoSignerCommitment() =>
      $_ensure(2);

  @$pb.TagNumber(4)
  ETHTypedMessageValueResponse get typedMsgValue => $_getN(3);
  @$pb.TagNumber(4)
  set typedMsgValue(ETHTypedMessageValueResponse value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTypedMsgValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearTypedMsgValue() => $_clearField(4);
  @$pb.TagNumber(4)
  ETHTypedMessageValueResponse ensureTypedMsgValue() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
