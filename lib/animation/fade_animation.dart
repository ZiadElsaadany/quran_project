// import 'dart:convert';
// import 'dart:io';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:eve/peresentation/models/list_models.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import '../../utilities/constants/api_constants.dart';
// import '../../utilities/constants/string_constants.dart';
// import '../album_order/album_details_row_cubit.dart';
// import '../auth_cubit/auth_cubit.dart';
//
// part 'lists_state.dart';
//
// class ListsCubit extends Cubit<ListsState> {
//   ListsCubit() : super(ListsInitial());
//   ListResponseModel? dataAllMenues;
//   AlbumSize? currentSize;
//   BaseIdNameModel? boxYesOrNo;
//   BaseIdNameModel? withEditOrNot;
//   BaseIdNameModel? withPageDesigner;
//   Extension? extension;
//   BaseIdNameModel? withExtensionOrNot;
//   Album? albumTypeList;
//   BaseIdNameModel? pages;
//
//   DrillingType? drillingType;
//
//   ColorResp? colorResp;
//   BaseIdNameModel? showDateForSend;
//   BaseIdNameModel? photoForFamily;
//   BaseIdNameModel? with_or_without_accessories;
//   Si