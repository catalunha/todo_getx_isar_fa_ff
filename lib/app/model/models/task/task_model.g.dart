// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetTaskModelCollection on Isar {
  IsarCollection<TaskModel> get taskModels {
    return getCollection('TaskModel');
  }
}

final TaskModelSchema = CollectionSchema(
  name: 'TaskModel',
  schema:
      '{"name":"TaskModel","idName":"id","properties":[{"name":"date","type":"Long"},{"name":"description","type":"String"},{"name":"itsDoing","type":"Bool"},{"name":"itsDone","type":"Bool"}],"indexes":[],"links":[]}',
  nativeAdapter: const _TaskModelNativeAdapter(),
  webAdapter: const _TaskModelWebAdapter(),
  idName: 'id',
  propertyIds: {'date': 0, 'description': 1, 'itsDoing': 2, 'itsDone': 3},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 2,
);

class _TaskModelWebAdapter extends IsarWebTypeAdapter<TaskModel> {
  const _TaskModelWebAdapter();

  @override
  Object serialize(IsarCollection<TaskModel> collection, TaskModel object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(
        jsObj, 'date', object.date.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'description', object.description);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'itsDoing', object.itsDoing);
    IsarNative.jsObjectSet(jsObj, 'itsDone', object.itsDone);
    return jsObj;
  }

  @override
  TaskModel deserialize(IsarCollection<TaskModel> collection, dynamic jsObj) {
    final object = TaskModel(
      date: IsarNative.jsObjectGet(jsObj, 'date') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'date'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      description: IsarNative.jsObjectGet(jsObj, 'description') ?? '',
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      itsDoing: IsarNative.jsObjectGet(jsObj, 'itsDoing') ?? false,
      itsDone: IsarNative.jsObjectGet(jsObj, 'itsDone') ?? false,
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'date':
        return (IsarNative.jsObjectGet(jsObj, 'date') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'date'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'description':
        return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'itsDoing':
        return (IsarNative.jsObjectGet(jsObj, 'itsDoing') ?? false) as P;
      case 'itsDone':
        return (IsarNative.jsObjectGet(jsObj, 'itsDone') ?? false) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, TaskModel object) {}
}

class _TaskModelNativeAdapter extends IsarNativeTypeAdapter<TaskModel> {
  const _TaskModelNativeAdapter();

  @override
  void serialize(IsarCollection<TaskModel> collection, IsarRawObject rawObj,
      TaskModel object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.date;
    final _date = value0;
    final value1 = object.description;
    final _description = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_description.length) as int;
    final value2 = object.itsDoing;
    final _itsDoing = value2;
    final value3 = object.itsDone;
    final _itsDone = value3;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeDateTime(offsets[0], _date);
    writer.writeBytes(offsets[1], _description);
    writer.writeBool(offsets[2], _itsDoing);
    writer.writeBool(offsets[3], _itsDone);
  }

  @override
  TaskModel deserialize(IsarCollection<TaskModel> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = TaskModel(
      date: reader.readDateTime(offsets[0]),
      description: reader.readString(offsets[1]),
      id: id,
      itsDoing: reader.readBool(offsets[2]),
      itsDone: reader.readBool(offsets[3]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readDateTime(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      case 3:
        return (reader.readBool(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, TaskModel object) {}
}

extension TaskModelQueryWhereSort
    on QueryBuilder<TaskModel, TaskModel, QWhere> {
  QueryBuilder<TaskModel, TaskModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension TaskModelQueryWhere
    on QueryBuilder<TaskModel, TaskModel, QWhereClause> {
  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension TaskModelQueryFilter
    on QueryBuilder<TaskModel, TaskModel, QFilterCondition> {
  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'date',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> itsDoingEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itsDoing',
      value: value,
    ));
  }

  QueryBuilder<TaskModel, TaskModel, QAfterFilterCondition> itsDoneEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'itsDone',
      value: value,
    ));
  }
}

extension TaskModelQueryLinks
    on QueryBuilder<TaskModel, TaskModel, QFilterCondition> {}

extension TaskModelQueryWhereSortBy
    on QueryBuilder<TaskModel, TaskModel, QSortBy> {
  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByItsDoing() {
    return addSortByInternal('itsDoing', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByItsDoingDesc() {
    return addSortByInternal('itsDoing', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByItsDone() {
    return addSortByInternal('itsDone', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> sortByItsDoneDesc() {
    return addSortByInternal('itsDone', Sort.desc);
  }
}

extension TaskModelQueryWhereSortThenBy
    on QueryBuilder<TaskModel, TaskModel, QSortThenBy> {
  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByItsDoing() {
    return addSortByInternal('itsDoing', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByItsDoingDesc() {
    return addSortByInternal('itsDoing', Sort.desc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByItsDone() {
    return addSortByInternal('itsDone', Sort.asc);
  }

  QueryBuilder<TaskModel, TaskModel, QAfterSortBy> thenByItsDoneDesc() {
    return addSortByInternal('itsDone', Sort.desc);
  }
}

extension TaskModelQueryWhereDistinct
    on QueryBuilder<TaskModel, TaskModel, QDistinct> {
  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDate() {
    return addDistinctByInternal('date');
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByItsDoing() {
    return addDistinctByInternal('itsDoing');
  }

  QueryBuilder<TaskModel, TaskModel, QDistinct> distinctByItsDone() {
    return addDistinctByInternal('itsDone');
  }
}

extension TaskModelQueryProperty
    on QueryBuilder<TaskModel, TaskModel, QQueryProperty> {
  QueryBuilder<TaskModel, DateTime, QQueryOperations> dateProperty() {
    return addPropertyNameInternal('date');
  }

  QueryBuilder<TaskModel, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<TaskModel, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TaskModel, bool, QQueryOperations> itsDoingProperty() {
    return addPropertyNameInternal('itsDoing');
  }

  QueryBuilder<TaskModel, bool, QQueryOperations> itsDoneProperty() {
    return addPropertyNameInternal('itsDone');
  }
}
