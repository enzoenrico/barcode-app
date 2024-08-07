// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? uid,
    String? name,
    List<ProductStruct>? parts,
  })  : _uid = uid,
        _name = name,
        _parts = parts;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? 'defaultUid';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'defaultName';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "parts" field.
  List<ProductStruct>? _parts;
  List<ProductStruct> get parts => _parts ?? const [];
  set parts(List<ProductStruct>? val) => _parts = val;

  void updateParts(Function(List<ProductStruct>) updateFn) {
    updateFn(_parts ??= []);
  }

  bool hasParts() => _parts != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        uid: data['uid'] as String?,
        name: data['name'] as String?,
        parts: getStructList(
          data['parts'],
          ProductStruct.fromMap,
        ),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'name': _name,
        'parts': _parts?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'parts': serializeParam(
          _parts,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        parts: deserializeStructParam<ProductStruct>(
          data['parts'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        uid == other.uid &&
        name == other.name &&
        listEquality.equals(parts, other.parts);
  }

  @override
  int get hashCode => const ListEquality().hash([uid, name, parts]);
}

ProductStruct createProductStruct({
  String? uid,
  String? name,
}) =>
    ProductStruct(
      uid: uid,
      name: name,
    );
