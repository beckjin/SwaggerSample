:: ���ɵ��ĵ�����ÿ����Ŀ�����Ψһ��
SET FILE_NAME=swaggerTest
:: ��Ŀdll��ַ
SET SOURCE_DLL=bin\Release\netcoreapp2.1\publish\SwaggerTest.dll
:: �ĵ����ɵ�Ŀ���ļ���
SET TARGET_DIR=D:\jinbiao\ApiDoc\public\docs\

:: Swagger�ĵ�����

:: ����
SET TITLE=SwaggerTest�ӿ��ĵ�
:: ����
SET DESCRIPTION=SwaggerTest�ӿ��ĵ�����
:: �汾
SET VERSION=1.0.0
:: �ӿڲ��������host��ַ����ͬ��api�����в�ͬ��host
SET HOST=localhost:5000

:: ͨ�� dotnet-nswag ִ����������
dotnet C:\Users\Administrator\Downloads\NSwag\NetCore21\dotnet-nswag.dll webapi2swagger /assembly:"%SOURCE_DLL%" /AspNetCore:true /output:%TARGET_DIR%%FILE_NAME%.json /InfoTitle:"%TITLE%" /InfoDescription:"%DESCRIPTION%" /InfoVersion:%VERSION% /ServiceHost:%HOST% 