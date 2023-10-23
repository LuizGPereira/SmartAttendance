import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UserByExternalIdCall {
  static Future<ApiCallResponse> call({
    String? externalId = '123',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User By External Id',
      apiUrl: 'http://157.230.212.240:8000/usuario/external_id/${externalId}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userPrivateId(dynamic response) => getJsonField(
        response,
        r'''$["id"]''',
      );
  static dynamic userName(dynamic response) => getJsonField(
        response,
        r'''$["usuario_nome"]''',
      );
  static dynamic userType(dynamic response) => getJsonField(
        response,
        r'''$["usuario_tipo"]''',
      );
  static dynamic userPublicId(dynamic response) => getJsonField(
        response,
        r'''$["id_externo"]''',
      );
}

class TurmasByUserPrivateIdCall {
  static Future<ApiCallResponse> call({
    int? privateId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Turmas By User Private Id',
      apiUrl: 'http://157.230.212.240:8000/usuario/${privateId}/listar_turma/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic turmas(dynamic response) => getJsonField(
        response,
        r'''$["Turmas"]''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
