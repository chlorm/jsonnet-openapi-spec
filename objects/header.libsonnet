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
  // https://swagger.io/specification/#headerObject
  new(name):: {
    assert std.isString(name),
    // Reserved headers cannot be defined manually.
    assert name != 'Accept' && name != 'Authorization' && name != 'Content-Type',

    description(s):: self {
      assert std.isString(s),
      [name]+: {
        description: s,
      },
    },

    required(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        required: b,
      },
    },

    deprecated(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        deprecated: b,
      },
    },

    allowemptyvalue(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        allowEmptyValue: b,
      },
    },

    style(s):: self {
      assert std.isString(s),
      [name]+: {
        style: s,
      },
    },

    explode(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        explode: b,
      },
    },

    allowreserved(b):: self {
      assert std.isBoolean(b),
      [name]+: {
        allowReserved: b,
      },
    },

    schema(schemaObject):: self {
      assert std.isObject(schemaObject),
      [name]+: {
        schema: schemaObject,
      },
    },

    example(exampleObject):: self {
      assert std.isObject(exampleObject),
      [name]+: {
        examples: exampleObject,
      },
    },

    content(contentObject):: self {
      assert std.isObject(contentObject),
      [name]+: {
        content: contentObject,
      },
    },
  },
}
