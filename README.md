# Swagger Codegen Demo

The Swagger Codegen Demo is a tool for automatically compiling client-side API models with a Swagger specification file. To get started, follow these steps:

## Getting started

Create an account on Swagger to access sample APIs and obtain the specifications (https://app.swaggerhub.com/home).

Install Swagger Codegen (brew install swagger-codegen).

(Optional) Create a Swagger configuration file.

Go to https://app.swaggerhub.com/home and search for an open API project for public use.

Export the JSON specification file by clicking on "Export" and choosing "JSON unresolved."

Save the JSON specification file in your project root.

Run the codegen command: "swagger-codegen generate -i [swaggerFile.json] -l [language] -o [output-folder]" (e.g. "swagger-codegen generate -i swaggerSpec.json -l swift5 -o SwiftGen").

This will generate client-side code in the specified language (swift5) and output it in the specified folder (SwiftGen).

Import the folder into your project and start using it.

In real projects, the specification file can be downloaded from an API using the Swagger command line "swagger-cli bundle -o [output-file] [url-of-spec]."

The benefits of using the Swagger Codegen Demo include having a single source of truth for all clients and eliminating the need to generate client-side API code for each client. This ensures that all clients, such as Android and iOS, are on the same page if the backend changes the API format or usage, and testing is simplified.

