///
//  Generated code. Do not modify.
//  source: shoppingcart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'shoppingcart.pb.dart' as $0;
export 'shoppingcart.pb.dart';

class ShoppingCartClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.AddRequest, $0.AddReply>(
      '/shoppingcart.ShoppingCart/Add',
      ($0.AddRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddReply.fromBuffer(value));
  static final _$remove = $grpc.ClientMethod<$0.RemoveRequest, $0.RemoveReply>(
      '/shoppingcart.ShoppingCart/Remove',
      ($0.RemoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveReply.fromBuffer(value));
  static final _$shoppingCart =
      $grpc.ClientMethod<$0.ShoppingCartRequest, $0.ShoppingCartReply>(
          '/shoppingcart.ShoppingCart/ShoppingCart',
          ($0.ShoppingCartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ShoppingCartReply.fromBuffer(value));

  ShoppingCartClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.AddReply> add($0.AddRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$add, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RemoveReply> remove($0.RemoveRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$remove, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.ShoppingCartReply> shoppingCart(
      $0.ShoppingCartRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$shoppingCart, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class ShoppingCartServiceBase extends $grpc.Service {
  $core.String get $name => 'shoppingcart.ShoppingCart';

  ShoppingCartServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddRequest, $0.AddReply>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddRequest.fromBuffer(value),
        ($0.AddReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveRequest, $0.RemoveReply>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveRequest.fromBuffer(value),
        ($0.RemoveReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ShoppingCartRequest, $0.ShoppingCartReply>(
            'ShoppingCart',
            shoppingCart_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.ShoppingCartRequest.fromBuffer(value),
            ($0.ShoppingCartReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddReply> add_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddRequest> request) async {
    return add(call, await request);
  }

  $async.Future<$0.RemoveReply> remove_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RemoveRequest> request) async {
    return remove(call, await request);
  }

  $async.Stream<$0.ShoppingCartReply> shoppingCart_Pre($grpc.ServiceCall call,
      $async.Future<$0.ShoppingCartRequest> request) async* {
    yield* shoppingCart(call, await request);
  }

  $async.Future<$0.AddReply> add($grpc.ServiceCall call, $0.AddRequest request);
  $async.Future<$0.RemoveReply> remove(
      $grpc.ServiceCall call, $0.RemoveRequest request);
  $async.Stream<$0.ShoppingCartReply> shoppingCart(
      $grpc.ServiceCall call, $0.ShoppingCartRequest request);
}
