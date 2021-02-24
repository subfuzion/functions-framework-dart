import 'package:functions_framework/functions_framework.dart';
import 'package:json_annotation/json_annotation.dart';

part 'functions.g.dart';

@JsonSerializable(nullable: false)
class RedisCommandRequest {
  final String command;
  final String data;

  RedisCommandRequest({this.command, this.data});

  factory RedisCommandRequest.fromJson(Map<String, dynamic> json) =>
      _$RedisCommandRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RedisCommandRequestToJson(this);

  @override
  bool operator ==(Object other) =>
      other is RedisCommandResponse &&
          other.command == command &&
          other.data == data;

  @override
  int get hashCode => command.hashCode ^ data.hashCode;
}

@JsonSerializable(nullable: false)
class RedisCommandResponse {
  final String command;
  final String data;

  RedisCommandResponse({this.command, this.data});

  factory RedisCommandResponse.fromJson(Map<String, dynamic> json) =>
      _$RedisCommandResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RedisCommandResponseToJson(this);

  @override
  bool operator ==(Object other) =>
      other is RedisCommandResponse &&
      other.command == command &&
      other.data == data;

  @override
  int get hashCode => command.hashCode ^ data.hashCode;
}

@CloudFunction()
RedisCommandResponse function(RedisCommandRequest request) {
  final command = request.command as String;
  final data = 'hello';
  final json = RedisCommandResponse(command: command, data: data);
  return json;
}
