# jsonnet-openapi-spec

###### A [Jsonnet](https://jsonnet.org/) templating library for the [OpenAPI](https://www.openapis.org/) spec.

![ci status](https://github.com/chlorm/jsonnet-openapi-spec/workflows/ci/badge.svg)

##### WARNING: API is incomplete and subject to change.

```jsonnet
local openapi = 'jsonnet-openapi-spec/openapi.libsonnet'

{
  'hello-world.json':
    openapi.new()
    .Info(
      openapi.info.new()
      .Title('Hello World')
      .Version('1')
      .Description('Hello World')
    )
    .Path(
      openapi.pathitem.new('/hello')
      .Get(
        openapi.operation.new('getHello')
        .Response(
          openapi.response.new(200)
          .Content(
            openapi.mediatype.new(openapi.mediatype.plaintext)
            .Schema(
              openapi.schema.new(openapi.schema.string)
              .Example('world')
            )
          )
        )
      )
    ),
}
```
