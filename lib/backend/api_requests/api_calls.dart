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
      apiUrl:
          'https://smartattendances.online/usuario/external_id/${externalId}/',
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
    String? privateId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Turmas By User Private Id',
      apiUrl:
          'https://smartattendances.online/usuario/${privateId}/listar_turma/',
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
  static dynamic turmasNome(dynamic response) => getJsonField(
        response,
        r'''$["Turmas"][:]["turma_nome"]''',
        true,
      );
  static dynamic turmasId(dynamic response) => getJsonField(
        response,
        r'''$["Turmas"][:]["id"]''',
      );
}

class HistoricoByTurmaIdCall {
  static Future<ApiCallResponse> call({
    String? privateId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Historico By Turma Id',
      apiUrl:
          'https://smartattendances.online/historico/${privateId}/retornar_historico/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic presencasAluno(dynamic response) => getJsonField(
        response,
        r'''$.presencas_aluno''',
        true,
      );
  static dynamic faltasAluno(dynamic response) => getJsonField(
        response,
        r'''$.faltas_aluno''',
        true,
      );
}

class UserByIdCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User By Id',
      apiUrl: 'https://smartattendances.online/usuario/${id}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class IniciarChamadaCall {
  static Future<ApiCallResponse> call({
    String? turma = '',
    double? raio,
    String? dataFim = '',
    String? latLong = '',
  }) async {
    final ffApiRequestBody = '''
{
  "latitude": 1,
  "longitude": 1,
  "latLong":"${latLong}",
  "turma": ${turma},
  "raio": ${raio},
  "data_fim": "${dataFim}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Iniciar Chamada',
      apiUrl: 'https://smartattendances.online/turma/iniciar_chamada/',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SubirAtestadoCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? atestado,
    String? aluno = '',
    String? chamada = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Subir Atestado',
      apiUrl: 'https://smartattendances.online/atestado/inserir/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'atestado': atestado,
        'aluno': aluno,
        'chamada': chamada,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RecuperarAtestadoCall {
  static Future<ApiCallResponse> call({
    String? presenca = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Recuperar Atestado',
      apiUrl: 'https://smartattendances.online/atestado/${presenca}/retornar/',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListarPresencasByIdChamadaCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar Presencas By IdChamada',
      apiUrl: 'https://smartattendances.online/chamada/${id}/lista_presenca/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditarPresencaCall {
  static Future<ApiCallResponse> call({
    String? aluno = '',
    String? chamada = '',
    String? status = '',
    String? caminhoAtestado = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "${status}",
  "aluno": ${aluno},
  "chamada": ${chamada}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Editar Presenca',
      apiUrl: 'https://smartattendances.online/presenca/editar_presenca/',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListarChamadasDaTurmaCall {
  static Future<ApiCallResponse> call({
    String? usuario = '',
    String? turma = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Listar Chamadas da Turma',
      apiUrl: 'https://smartattendances.online/turma/listar_chamada/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user': usuario,
        'turma': turma,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic chamadas(dynamic response) => getJsonField(
        response,
        r'''$.chamadas''',
        true,
      );
  static dynamic chamadasIds(dynamic response) => getJsonField(
        response,
        r'''$['chamadas'][:]['id']''',
        true,
      );
  static dynamic chamadasInicio(dynamic response) => getJsonField(
        response,
        r'''$['chamadas'][:]['data_inicio']''',
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
