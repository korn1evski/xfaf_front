import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:data/modules/attachments/models/mappers/attachments_mapper.dart';
import 'package:data/modules/attachments/sources/attachments_data_source.dart';
import 'package:data/modules/chat/remote/conversations/models/mappers/conversations_mapper.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/attachments/repository/attachments_repository.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';

class AttachmentsRepositoryImpl extends AttachmentsRepository {

  final AttachmentsDataSource attachmentsDataSource;

  AttachmentsRepositoryImpl({required this.attachmentsDataSource});

  @override
  Future<Either<Failure, List<PictureEntity>>> uploadFiles(List<File> files) async{
    try{
      final response = await attachmentsDataSource.uploadFiles(files);
      final entities = AttachmentsMapper().pictureListFromDto(response);
      return Right(entities);
    } catch(e){
      if(e is DioError){
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<Either<Failure, PictureEntity>> getAttachment(String id) async{
    try{
      final response = await attachmentsDataSource.getAttachment(id);
      final pictureEntity = AttachmentsMapper().pictureEntityFromDto(response);
      return Right(pictureEntity);
    } catch(e){
      if(e is DioError){
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

}