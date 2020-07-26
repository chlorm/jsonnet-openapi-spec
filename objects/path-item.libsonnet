// Copyright (c) 2020, Cody Opel <cwopel@chlorm.net>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

{
  // https://swagger.io/specification/#pathItemObject
  new():: {
    Summary(s):: self {
      assert std.isString(s),
      summary: s,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    Delete(operationObject):: self {
      assert std.isObject(operationObject),
      delete: operationObject,
    },

    Get(operationObject):: self {
      assert std.isObject(operationObject),
      get: operationObject,
    },

    Head(operationObject):: self {
      assert std.isObject(operationObject),
      head: operationObject,
    },

    Options(operationObject):: self {
      assert std.isObject(operationObject),
      options: operationObject,
    },

    Patch(operationObject):: self {
      assert std.isObject(operationObject),
      patch: operationObject,
    },

    Post(operationObject):: self {
      assert std.isObject(operationObject),
      post: operationObject,
    },

    Put(operationObject):: self {
      assert std.isObject(operationObject),
      put: operationObject,
    },

    Trace(operationObject):: self {
      assert std.isObject(operationObject),
      trace: operationObject,
    },

    Server(serverObject):: self {
      assert std.isObject(serverObject),
      servers+: [serverObject],
    },

    Parameter(parameterObject):: self {
      assert std.isObject(parameterObject),
      parameters+: [parameterObject],
    },
  },
}
