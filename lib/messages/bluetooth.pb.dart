// This is a generated file - do not edit.
//
// Generated from bluetooth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BluetoothToggleEnabledRequest extends $pb.GeneratedMessage {
  factory BluetoothToggleEnabledRequest() => create();

  BluetoothToggleEnabledRequest._();

  factory BluetoothToggleEnabledRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothToggleEnabledRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothToggleEnabledRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothToggleEnabledRequest clone() =>
      BluetoothToggleEnabledRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothToggleEnabledRequest copyWith(
          void Function(BluetoothToggleEnabledRequest) updates) =>
      super.copyWith(
              (message) => updates(message as BluetoothToggleEnabledRequest))
          as BluetoothToggleEnabledRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothToggleEnabledRequest create() =>
      BluetoothToggleEnabledRequest._();
  @$core.override
  BluetoothToggleEnabledRequest createEmptyInstance() => create();
  static $pb.PbList<BluetoothToggleEnabledRequest> createRepeated() =>
      $pb.PbList<BluetoothToggleEnabledRequest>();
  @$core.pragma('dart2js:noInline')
  static BluetoothToggleEnabledRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothToggleEnabledRequest>(create);
  static BluetoothToggleEnabledRequest? _defaultInstance;
}

class BluetoothUpgradeInitRequest extends $pb.GeneratedMessage {
  factory BluetoothUpgradeInitRequest({
    $core.int? firmwareLength,
  }) {
    final result = create();
    if (firmwareLength != null) result.firmwareLength = firmwareLength;
    return result;
  }

  BluetoothUpgradeInitRequest._();

  factory BluetoothUpgradeInitRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothUpgradeInitRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothUpgradeInitRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'firmwareLength', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothUpgradeInitRequest clone() =>
      BluetoothUpgradeInitRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothUpgradeInitRequest copyWith(
          void Function(BluetoothUpgradeInitRequest) updates) =>
      super.copyWith(
              (message) => updates(message as BluetoothUpgradeInitRequest))
          as BluetoothUpgradeInitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothUpgradeInitRequest create() =>
      BluetoothUpgradeInitRequest._();
  @$core.override
  BluetoothUpgradeInitRequest createEmptyInstance() => create();
  static $pb.PbList<BluetoothUpgradeInitRequest> createRepeated() =>
      $pb.PbList<BluetoothUpgradeInitRequest>();
  @$core.pragma('dart2js:noInline')
  static BluetoothUpgradeInitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothUpgradeInitRequest>(create);
  static BluetoothUpgradeInitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get firmwareLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set firmwareLength($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFirmwareLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirmwareLength() => $_clearField(1);
}

class BluetoothChunkRequest extends $pb.GeneratedMessage {
  factory BluetoothChunkRequest({
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  BluetoothChunkRequest._();

  factory BluetoothChunkRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothChunkRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothChunkRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothChunkRequest clone() =>
      BluetoothChunkRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothChunkRequest copyWith(
          void Function(BluetoothChunkRequest) updates) =>
      super.copyWith((message) => updates(message as BluetoothChunkRequest))
          as BluetoothChunkRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothChunkRequest create() => BluetoothChunkRequest._();
  @$core.override
  BluetoothChunkRequest createEmptyInstance() => create();
  static $pb.PbList<BluetoothChunkRequest> createRepeated() =>
      $pb.PbList<BluetoothChunkRequest>();
  @$core.pragma('dart2js:noInline')
  static BluetoothChunkRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothChunkRequest>(create);
  static BluetoothChunkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
}

class BluetoothSuccess extends $pb.GeneratedMessage {
  factory BluetoothSuccess() => create();

  BluetoothSuccess._();

  factory BluetoothSuccess.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothSuccess.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothSuccess',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothSuccess clone() => BluetoothSuccess()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothSuccess copyWith(void Function(BluetoothSuccess) updates) =>
      super.copyWith((message) => updates(message as BluetoothSuccess))
          as BluetoothSuccess;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothSuccess create() => BluetoothSuccess._();
  @$core.override
  BluetoothSuccess createEmptyInstance() => create();
  static $pb.PbList<BluetoothSuccess> createRepeated() =>
      $pb.PbList<BluetoothSuccess>();
  @$core.pragma('dart2js:noInline')
  static BluetoothSuccess getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothSuccess>(create);
  static BluetoothSuccess? _defaultInstance;
}

class BluetoothRequestChunkResponse extends $pb.GeneratedMessage {
  factory BluetoothRequestChunkResponse({
    $core.int? offset,
    $core.int? length,
  }) {
    final result = create();
    if (offset != null) result.offset = offset;
    if (length != null) result.length = length;
    return result;
  }

  BluetoothRequestChunkResponse._();

  factory BluetoothRequestChunkResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothRequestChunkResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothRequestChunkResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothRequestChunkResponse clone() =>
      BluetoothRequestChunkResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothRequestChunkResponse copyWith(
          void Function(BluetoothRequestChunkResponse) updates) =>
      super.copyWith(
              (message) => updates(message as BluetoothRequestChunkResponse))
          as BluetoothRequestChunkResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothRequestChunkResponse create() =>
      BluetoothRequestChunkResponse._();
  @$core.override
  BluetoothRequestChunkResponse createEmptyInstance() => create();
  static $pb.PbList<BluetoothRequestChunkResponse> createRepeated() =>
      $pb.PbList<BluetoothRequestChunkResponse>();
  @$core.pragma('dart2js:noInline')
  static BluetoothRequestChunkResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothRequestChunkResponse>(create);
  static BluetoothRequestChunkResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get offset => $_getIZ(0);
  @$pb.TagNumber(1)
  set offset($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get length => $_getIZ(1);
  @$pb.TagNumber(2)
  set length($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearLength() => $_clearField(2);
}

enum BluetoothRequest_Request { upgradeInit, chunk, toggleEnabled, notSet }

class BluetoothRequest extends $pb.GeneratedMessage {
  factory BluetoothRequest({
    BluetoothUpgradeInitRequest? upgradeInit,
    BluetoothChunkRequest? chunk,
    BluetoothToggleEnabledRequest? toggleEnabled,
  }) {
    final result = create();
    if (upgradeInit != null) result.upgradeInit = upgradeInit;
    if (chunk != null) result.chunk = chunk;
    if (toggleEnabled != null) result.toggleEnabled = toggleEnabled;
    return result;
  }

  BluetoothRequest._();

  factory BluetoothRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BluetoothRequest_Request>
      _BluetoothRequest_RequestByTag = {
    1: BluetoothRequest_Request.upgradeInit,
    2: BluetoothRequest_Request.chunk,
    3: BluetoothRequest_Request.toggleEnabled,
    0: BluetoothRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<BluetoothUpgradeInitRequest>(1, _omitFieldNames ? '' : 'upgradeInit',
        subBuilder: BluetoothUpgradeInitRequest.create)
    ..aOM<BluetoothChunkRequest>(2, _omitFieldNames ? '' : 'chunk',
        subBuilder: BluetoothChunkRequest.create)
    ..aOM<BluetoothToggleEnabledRequest>(
        3, _omitFieldNames ? '' : 'toggleEnabled',
        subBuilder: BluetoothToggleEnabledRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothRequest clone() => BluetoothRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothRequest copyWith(void Function(BluetoothRequest) updates) =>
      super.copyWith((message) => updates(message as BluetoothRequest))
          as BluetoothRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothRequest create() => BluetoothRequest._();
  @$core.override
  BluetoothRequest createEmptyInstance() => create();
  static $pb.PbList<BluetoothRequest> createRepeated() =>
      $pb.PbList<BluetoothRequest>();
  @$core.pragma('dart2js:noInline')
  static BluetoothRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothRequest>(create);
  static BluetoothRequest? _defaultInstance;

  BluetoothRequest_Request whichRequest() =>
      _BluetoothRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BluetoothUpgradeInitRequest get upgradeInit => $_getN(0);
  @$pb.TagNumber(1)
  set upgradeInit(BluetoothUpgradeInitRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUpgradeInit() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpgradeInit() => $_clearField(1);
  @$pb.TagNumber(1)
  BluetoothUpgradeInitRequest ensureUpgradeInit() => $_ensure(0);

  @$pb.TagNumber(2)
  BluetoothChunkRequest get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk(BluetoothChunkRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => $_clearField(2);
  @$pb.TagNumber(2)
  BluetoothChunkRequest ensureChunk() => $_ensure(1);

  @$pb.TagNumber(3)
  BluetoothToggleEnabledRequest get toggleEnabled => $_getN(2);
  @$pb.TagNumber(3)
  set toggleEnabled(BluetoothToggleEnabledRequest value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasToggleEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearToggleEnabled() => $_clearField(3);
  @$pb.TagNumber(3)
  BluetoothToggleEnabledRequest ensureToggleEnabled() => $_ensure(2);
}

enum BluetoothResponse_Response { success, requestChunk, notSet }

class BluetoothResponse extends $pb.GeneratedMessage {
  factory BluetoothResponse({
    BluetoothSuccess? success,
    BluetoothRequestChunkResponse? requestChunk,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (requestChunk != null) result.requestChunk = requestChunk;
    return result;
  }

  BluetoothResponse._();

  factory BluetoothResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BluetoothResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, BluetoothResponse_Response>
      _BluetoothResponse_ResponseByTag = {
    1: BluetoothResponse_Response.success,
    2: BluetoothResponse_Response.requestChunk,
    0: BluetoothResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BluetoothResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'shiftcrypto.bitbox02'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<BluetoothSuccess>(1, _omitFieldNames ? '' : 'success',
        subBuilder: BluetoothSuccess.create)
    ..aOM<BluetoothRequestChunkResponse>(
        2, _omitFieldNames ? '' : 'requestChunk',
        subBuilder: BluetoothRequestChunkResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothResponse clone() => BluetoothResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BluetoothResponse copyWith(void Function(BluetoothResponse) updates) =>
      super.copyWith((message) => updates(message as BluetoothResponse))
          as BluetoothResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BluetoothResponse create() => BluetoothResponse._();
  @$core.override
  BluetoothResponse createEmptyInstance() => create();
  static $pb.PbList<BluetoothResponse> createRepeated() =>
      $pb.PbList<BluetoothResponse>();
  @$core.pragma('dart2js:noInline')
  static BluetoothResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BluetoothResponse>(create);
  static BluetoothResponse? _defaultInstance;

  BluetoothResponse_Response whichResponse() =>
      _BluetoothResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BluetoothSuccess get success => $_getN(0);
  @$pb.TagNumber(1)
  set success(BluetoothSuccess value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
  @$pb.TagNumber(1)
  BluetoothSuccess ensureSuccess() => $_ensure(0);

  @$pb.TagNumber(2)
  BluetoothRequestChunkResponse get requestChunk => $_getN(1);
  @$pb.TagNumber(2)
  set requestChunk(BluetoothRequestChunkResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRequestChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestChunk() => $_clearField(2);
  @$pb.TagNumber(2)
  BluetoothRequestChunkResponse ensureRequestChunk() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
