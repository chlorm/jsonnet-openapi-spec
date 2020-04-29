# Copyright (c) 2020, Cody Opel <cwopel@chlorm.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

{
  // https://swagger.io/specification/#componentsObject
  new():: {
    schema(schemaObject):: self {
      assert std.isObject(schemaObject),
      schemas+: schemaObject,
    },

    response(responseObject):: self {
      assert std.isObject(responseObject),
      responses+: responseObject,
    }

    parameter(parameterObject):: self {
      assert std.isObject(parameterObject),
      parameters+: parameterObject,
    }

    example(exampleObject):: self {
      assert std.isObject(exampleObject),
      examples+: examplesObject,
    }

    requestbody(requestBodyObject):: self {
      assert std.isObject(requestBodyObject),
      requestBodies+: requestBodyObject,
    }

    header(headerObject):: self {
      assert std.isObject(headerObject),
      headers+: headerObject,
    }

    securityscheme(securitySchemeObject):: self {
      assert std.isObject(securitySchemeObject),
      securitySchemes+: securitySchemeObject,
    }

    link(linkObject):: self {
      assert std.isObject(linkObject),
      links+: linkObject,
    }

    callback(callbackObject):: self {
      assert std.isObject(callbackObject),
      callbacks+: callbacksObject,
    }
  }
}
