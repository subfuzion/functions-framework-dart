// Copyright (c) 2020, the Dart project authors.
// Please see the AUTHORS file or details. Use of this source code is
// governed by a BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta_meta.dart';
import 'src/function_config.dart';

enum HttpMethod {
  get,
  head,
  post,
  put,
  delete,
  connect,
  options,
  trace,
  patch,
}

@Target({TargetKind.function})
class CloudFunction {
  //final String target;
  final dynamic method;

  const CloudFunction({this.method = HttpMethod.get});
}
