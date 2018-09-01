:: 生成的文档名，每个项目最好是唯一的
SET FILE_NAME=swaggerTest
:: 项目dll地址
SET SOURCE_DLL=bin\Release\netcoreapp2.1\publish\SwaggerTest.dll
:: 文档生成的目标文件夹
SET TARGET_DIR=D:\jinbiao\ApiDoc\public\docs\

:: Swagger文档配置

:: 标题
SET TITLE=SwaggerTest接口文档
:: 描述
SET DESCRIPTION=SwaggerTest接口文档描述
:: 版本
SET VERSION=1.0.0
:: 接口测试请求的host地址，不同的api服务有不同的host
SET HOST=localhost:5000

:: 通过 dotnet-nswag 执行生成命令
dotnet C:\Users\Administrator\Downloads\NSwag\NetCore21\dotnet-nswag.dll webapi2swagger /assembly:"%SOURCE_DLL%" /AspNetCore:true /output:%TARGET_DIR%%FILE_NAME%.json /InfoTitle:"%TITLE%" /InfoDescription:"%DESCRIPTION%" /InfoVersion:%VERSION% /ServiceHost:%HOST% 