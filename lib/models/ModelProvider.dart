/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'CartModel.dart';
import 'LikedProducts.dart';
import 'OrderList.dart';

export 'CartModel.dart';
export 'LikedProducts.dart';
export 'OrderList.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "7b5de28acb3c5ec2ac923641caf60232";
  @override
  List<ModelSchema> modelSchemas = [
    CartModel.schema,
    LikedProducts.schema,
    OrderList.schema
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "CartModel":
        {
          return CartModel.classType;
        }
        break;
      case "LikedProducts":
        {
          return LikedProducts.classType;
        }
        break;
      case "OrderList":
        {
          return OrderList.classType;
        }
        break;
      default:
        {
          throw Exception(
              "Failed to find model in model provider for model name: " +
                  modelName);
        }
    }
  }
}
