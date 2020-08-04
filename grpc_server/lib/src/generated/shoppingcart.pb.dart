///
//  Generated code. Do not modify.
//  source: shoppingcart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AddRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddRequest', package: const $pb.PackageName('shoppingcart'), createEmptyInstance: create)
    ..aOS(1, 'fontFamily', protoName: 'fontFamily')
    ..hasRequiredFields = false
  ;

  AddRequest._() : super();
  factory AddRequest() => create();
  factory AddRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddRequest clone() => AddRequest()..mergeFromMessage(this);
  AddRequest copyWith(void Function(AddRequest) updates) => super.copyWith((message) => updates(message as AddRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRequest create() => AddRequest._();
  AddRequest createEmptyInstance() => create();
  static $pb.PbList<AddRequest> createRepeated() => $pb.PbList<AddRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRequest>(create);
  static AddRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fontFamily => $_getSZ(0);
  @$pb.TagNumber(1)
  set fontFamily($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFontFamily() => $_has(0);
  @$pb.TagNumber(1)
  void clearFontFamily() => clearField(1);
}

class AddReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddReply', package: const $pb.PackageName('shoppingcart'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AddReply._() : super();
  factory AddReply() => create();
  factory AddReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddReply clone() => AddReply()..mergeFromMessage(this);
  AddReply copyWith(void Function(AddReply) updates) => super.copyWith((message) => updates(message as AddReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddReply create() => AddReply._();
  AddReply createEmptyInstance() => create();
  static $pb.PbList<AddReply> createRepeated() => $pb.PbList<AddReply>();
  @$core.pragma('dart2js:noInline')
  static AddReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddReply>(create);
  static AddReply _defaultInstance;
}

class RemoveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RemoveRequest', package: const $pb.PackageName('shoppingcart'), createEmptyInstance: create)
    ..aOS(1, 'fontFamily', protoName: 'fontFamily')
    ..hasRequiredFields = false
  ;

  RemoveRequest._() : super();
  factory RemoveRequest() => create();
  factory RemoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RemoveRequest clone() => RemoveRequest()..mergeFromMessage(this);
  RemoveRequest copyWith(void Function(RemoveRequest) updates) => super.copyWith((message) => updates(message as RemoveRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRequest create() => RemoveRequest._();
  RemoveRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveRequest> createRepeated() => $pb.PbList<RemoveRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRequest>(create);
  static RemoveRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fontFamily => $_getSZ(0);
  @$pb.TagNumber(1)
  set fontFamily($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFontFamily() => $_has(0);
  @$pb.TagNumber(1)
  void clearFontFamily() => clearField(1);
}

class RemoveReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RemoveReply', package: const $pb.PackageName('shoppingcart'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveReply._() : super();
  factory RemoveReply() => create();
  factory RemoveReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RemoveReply clone() => RemoveReply()..mergeFromMessage(this);
  RemoveReply copyWith(void Function(RemoveReply) updates) => super.copyWith((message) => updates(message as RemoveReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveReply create() => RemoveReply._();
  RemoveReply createEmptyInstance() => create();
  static $pb.PbList<RemoveReply> createRepeated() => $pb.PbList<RemoveReply>();
  @$core.pragma('dart2js:noInline')
  static RemoveReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveReply>(create);
  static RemoveReply _defaultInstance;
}

class ShoppingCartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShoppingCartRequest', package: const $pb.PackageName('shoppingcart'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ShoppingCartRequest._() : super();
  factory ShoppingCartRequest() => create();
  factory ShoppingCartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShoppingCartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShoppingCartRequest clone() => ShoppingCartRequest()..mergeFromMessage(this);
  ShoppingCartRequest copyWith(void Function(ShoppingCartRequest) updates) => super.copyWith((message) => updates(message as ShoppingCartRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShoppingCartRequest create() => ShoppingCartRequest._();
  ShoppingCartRequest createEmptyInstance() => create();
  static $pb.PbList<ShoppingCartRequest> createRepeated() => $pb.PbList<ShoppingCartRequest>();
  @$core.pragma('dart2js:noInline')
  static ShoppingCartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShoppingCartRequest>(create);
  static ShoppingCartRequest _defaultInstance;
}

class ShoppingCartReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ShoppingCartReply', package: const $pb.PackageName('shoppingcart'), createEmptyInstance: create)
    ..pPS(1, 'fontFamilies', protoName: 'fontFamilies')
    ..hasRequiredFields = false
  ;

  ShoppingCartReply._() : super();
  factory ShoppingCartReply() => create();
  factory ShoppingCartReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShoppingCartReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ShoppingCartReply clone() => ShoppingCartReply()..mergeFromMessage(this);
  ShoppingCartReply copyWith(void Function(ShoppingCartReply) updates) => super.copyWith((message) => updates(message as ShoppingCartReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ShoppingCartReply create() => ShoppingCartReply._();
  ShoppingCartReply createEmptyInstance() => create();
  static $pb.PbList<ShoppingCartReply> createRepeated() => $pb.PbList<ShoppingCartReply>();
  @$core.pragma('dart2js:noInline')
  static ShoppingCartReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShoppingCartReply>(create);
  static ShoppingCartReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fontFamilies => $_getList(0);
}

