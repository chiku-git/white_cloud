// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_info.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FollowInfoSchema = Schema(
  name: r'FollowInfo',
  id: 8991502931549002178,
  properties: {
    r'followers': PropertySchema(
      id: 0,
      name: r'followers',
      type: IsarType.long,
    ),
    r'following': PropertySchema(
      id: 1,
      name: r'following',
      type: IsarType.long,
    ),
    r'isFollowing': PropertySchema(
      id: 2,
      name: r'isFollowing',
      type: IsarType.bool,
    )
  },
  estimateSize: _followInfoEstimateSize,
  serialize: _followInfoSerialize,
  deserialize: _followInfoDeserialize,
  deserializeProp: _followInfoDeserializeProp,
);

int _followInfoEstimateSize(
  FollowInfo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _followInfoSerialize(
  FollowInfo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.followers);
  writer.writeLong(offsets[1], object.following);
  writer.writeBool(offsets[2], object.isFollowing);
}

FollowInfo _followInfoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FollowInfo();
  object.followers = reader.readLong(offsets[0]);
  object.following = reader.readLong(offsets[1]);
  object.isFollowing = reader.readBool(offsets[2]);
  return object;
}

P _followInfoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FollowInfoQueryFilter
    on QueryBuilder<FollowInfo, FollowInfo, QFilterCondition> {
  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition> followersEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'followers',
        value: value,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition>
      followersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'followers',
        value: value,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition> followersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'followers',
        value: value,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition> followersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'followers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition> followingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'following',
        value: value,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition>
      followingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'following',
        value: value,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition> followingLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'following',
        value: value,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition> followingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'following',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FollowInfo, FollowInfo, QAfterFilterCondition>
      isFollowingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFollowing',
        value: value,
      ));
    });
  }
}

extension FollowInfoQueryObject
    on QueryBuilder<FollowInfo, FollowInfo, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowInfo _$FollowInfoFromJson(Map<String, dynamic> json) => FollowInfo()
  ..followers = (json['followers'] as num).toInt()
  ..following = (json['following'] as num).toInt()
  ..isFollowing = json['is_following'] as bool;

Map<String, dynamic> _$FollowInfoToJson(FollowInfo instance) =>
    <String, dynamic>{
      'followers': instance.followers,
      'following': instance.following,
      'is_following': instance.isFollowing,
    };
