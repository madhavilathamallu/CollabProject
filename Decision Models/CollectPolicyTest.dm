{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T06:28:05",
        "displayName": "New Decision Table",
        "hitPolicy": "COLLECT",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule3",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Not Eligible - Cars, video games\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "4"
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Toys\""
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "dob = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "Citizenship = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertisementInputs2",
                        "text": "IncomeStatus = NO_VALUE"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule2",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Eligible To buy\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "5"
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Video Games\""
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "(date(dob) > date(\"2008-01-01\"))"
                    },
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "Citizenship = true"
                    },
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "(age >12)"
                    },
                    {
                        "domainName": "AdvertisementInputs2",
                        "text": "(IncomeStatus = \"Income\")"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule1",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Eligible To Buy\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "5"
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Cars\""
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "(date(dob) > date(\"2002-01-01\"))"
                    },
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "Citizenship = true"
                    },
                    {
                        "domainName": "AdvertisementInputs",
                        "text": "(age >18)"
                    },
                    {
                        "domainName": "AdvertisementInputs2",
                        "text": "(IncomeStatus = \"Income\")"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            }
        ],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1.status",
                "outputValues": null,
                "groupLabel": "AdvertisementOutput1",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1",
                "explicit": true,
                "groupDescription": null,
                "name": "status",
                "typeRef": "string"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1.Rating",
                "outputValues": null,
                "groupLabel": "AdvertisementOutput1",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1",
                "explicit": true,
                "groupDescription": null,
                "name": "Rating",
                "typeRef": "number"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput2.Objects",
                "outputValues": null,
                "groupLabel": "AdvertisementOutput2",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput2",
                "explicit": true,
                "groupDescription": null,
                "name": "Objects",
                "typeRef": "string"
            }
        ],
        "input": [
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.DB.Collect.AdvertisementInputs",
                "format": null,
                "groupLabel": "AdvertisementInputs",
                "description": null,
                "allowedAttributes": [
                    {
                        "allowedValues": null,
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "dob",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": null,
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "dob",
                        "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs.dob",
                        "isGeoEnabled": false,
                        "typeRef": "date"
                    },
                    {
                        "allowedValues": null,
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "Citizenship",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": null,
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "Citizenship",
                        "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs.Citizenship",
                        "isGeoEnabled": false,
                        "typeRef": "boolean"
                    },
                    {
                        "allowedValues": null,
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "age",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": null,
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "age",
                        "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs.age",
                        "isGeoEnabled": false,
                        "typeRef": "number"
                    }
                ],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementInputs",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "AdvertisementInputs"
                },
                "inputValues": null,
                "typeRef": "AdvertisementInputs"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.DB.Collect.AdvertisementInputs2",
                "format": null,
                "groupLabel": "AdvertisementInputs2",
                "description": null,
                "allowedAttributes": [{
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "IncomeStatus",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "IncomeStatus",
                    "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs2.IncomeStatus",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                }],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementInputs2",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "AdvertisementInputs2"
                },
                "inputValues": null,
                "typeRef": "AdvertisementInputs2"
            }
        ],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Multiple.DB.Collect",
        "comment": null,
        "id": "IOFormat.Multiple.DB.Collect.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T05:22:29",
        "displayName": "CollectPolicyTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Multiple.DB.Collect",
        "tables": ["IOFormat.Multiple.DB.Collect.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Multiple.DB.Collect",
        "name": "model",
        "id": "IOFormat.Multiple.DB.Collect.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-09T10:52:29",
        "author": "policyadmin",
        "description": "IOFormat.Multiple.DB.Collect",
        "id": "IOFormat.Multiple.DB.Collect"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T05:33:10",
            "displayName": "AdvertisementInputs1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 1,
            "createdOn": null,
            "parentId": null,
            "itemId": "24e70205-dd6b-449b-9575-e98acc295851",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "dob",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.DB.Collect",
                    "name": "dob",
                    "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Citizenship",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.DB.Collect",
                    "name": "Citizenship",
                    "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs.Citizenship",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "age",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.DB.Collect",
                    "name": "age",
                    "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "namespace": "IOFormat.Multiple.DB.Collect",
            "name": "AdvertisementInputs",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [],
                "inputType": "Database",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2020-12-07T15:29:40.300+05:30",
                    "referenceId": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                    "parentName": "Datasources",
                    "modifiedOn": "2020-12-07T15:29:40.300+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "DMDB.ds",
                    "location": "/inputoutputformat/Datasources",
                    "id": "1ac58efc-902f-4f85-a064-0935f174baa6",
                    "projectId": "15f06cbc-5e0b-478d-bd67-1d15f8983ae0",
                    "properties": {"datasource": {
                        "datasourceType": 0,
                        "datasourceProperties": {
                            "connectionMeta": {
                                "instance": "",
                                "port": "5432",
                                "host": "localhost",
                                "driverName": "Thin",
                                "connectionType": false,
                                "sid": ""
                            },
                            "password": "p@ssW0rd",
                            "databaseName": "MadhuDB",
                            "jdbcString": "jdbc:postgresql://localhost:5432/MadhuDB",
                            "vendor": "PostgreSQL",
                            "poolSize": 3,
                            "isEncrypted": true,
                            "isJdbcUrl": false,
                            "datasourceId": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                            "active": 1,
                            "id": "40d33c6b-385e-4b72-ac5d-49105c9acfd2",
                            "username": "postgres"
                        },
                        "name": "DMDB",
                        "id": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                        "applicationId": "15f06cbc-5e0b-478d-bd67-1d15f8983ae0"
                    }}
                },
                "tableName": {
                    "schema": "public",
                    "name": "DMdatatypeTest"
                }
            },
            "typeRef": "AdvertisementInputs"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T05:33:02",
            "displayName": "AdvertisementInputs2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "f7fe8382-f589-416c-b3db-43226d1a21e8",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "IncomeStatus",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementInputs2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.DB.Collect",
                "name": "IncomeStatus",
                "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs2.IncomeStatus",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "IOFormat.Multiple.DB.Collect",
            "name": "AdvertisementInputs2",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.DB.Collect.AdvertisementInputs2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "IncomeStatus",
                    "typeRef": "string"
                }],
                "inputType": "Custom",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2020-12-07T15:29:40.300+05:30",
                    "referenceId": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                    "parentName": "Datasources",
                    "modifiedOn": "2020-12-07T15:29:40.300+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "DMDB.ds",
                    "location": "/inputoutputformat/Datasources",
                    "id": "1ac58efc-902f-4f85-a064-0935f174baa6",
                    "projectId": "15f06cbc-5e0b-478d-bd67-1d15f8983ae0",
                    "properties": {"datasource": {
                        "datasourceType": 0,
                        "datasourceProperties": {
                            "connectionMeta": {
                                "instance": "",
                                "port": "5432",
                                "host": "localhost",
                                "driverName": "Thin",
                                "connectionType": false,
                                "sid": ""
                            },
                            "password": "p@ssW0rd",
                            "databaseName": "MadhuDB",
                            "jdbcString": "jdbc:postgresql://localhost:5432/MadhuDB",
                            "vendor": "PostgreSQL",
                            "poolSize": 3,
                            "isEncrypted": true,
                            "isJdbcUrl": false,
                            "datasourceId": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                            "active": 1,
                            "id": "40d33c6b-385e-4b72-ac5d-49105c9acfd2",
                            "username": "postgres"
                        },
                        "name": "DMDB",
                        "id": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                        "applicationId": "15f06cbc-5e0b-478d-bd67-1d15f8983ae0"
                    }}
                }
            },
            "typeRef": "AdvertisementInputs2"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T05:34:09",
            "displayName": "AdvertisementOutput1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "9e7e446a-e994-4710-92ce-7d0fe9a0bbbe",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "status",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.DB.Collect",
                    "name": "status",
                    "id": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1.status",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Rating",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Multiple.DB.Collect",
                    "name": "Rating",
                    "id": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1.Rating",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "namespace": "IOFormat.Multiple.DB.Collect",
            "name": "AdvertisementOutput1",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.DB.Collect.AdvertisementOutput1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [],
                "inputType": "Database",
                "datasourceName": {
                    "type": 13,
                    "createdOn": "2020-12-07T15:29:40.300+05:30",
                    "referenceId": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                    "parentName": "Datasources",
                    "modifiedOn": "2020-12-07T15:29:40.300+05:30",
                    "contentAsString": "",
                    "size": 0,
                    "buildProgress": false,
                    "name": "DMDB.ds",
                    "location": "/inputoutputformat/Datasources",
                    "id": "1ac58efc-902f-4f85-a064-0935f174baa6",
                    "projectId": "15f06cbc-5e0b-478d-bd67-1d15f8983ae0",
                    "properties": {"datasource": {
                        "datasourceType": 0,
                        "datasourceProperties": {
                            "connectionMeta": {
                                "instance": "",
                                "port": "5432",
                                "host": "localhost",
                                "driverName": "Thin",
                                "connectionType": false,
                                "sid": ""
                            },
                            "password": "p@ssW0rd",
                            "databaseName": "MadhuDB",
                            "jdbcString": "jdbc:postgresql://localhost:5432/MadhuDB",
                            "vendor": "PostgreSQL",
                            "poolSize": 3,
                            "isEncrypted": true,
                            "isJdbcUrl": false,
                            "datasourceId": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                            "active": 1,
                            "id": "40d33c6b-385e-4b72-ac5d-49105c9acfd2",
                            "username": "postgres"
                        },
                        "name": "DMDB",
                        "id": "7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2",
                        "applicationId": "15f06cbc-5e0b-478d-bd67-1d15f8983ae0"
                    }}
                },
                "tableName": {
                    "schema": "public",
                    "name": "DMdatatypeTest"
                }
            },
            "typeRef": "AdvertisementOutput1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T05:34:38",
            "displayName": "AdvertisementOutput2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "823f618f-af31-405f-90ba-09ef29b910b1",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "Objects",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.DB.Collect.AdvertisementOutput2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.DB.Collect",
                "name": "Objects",
                "id": "IOFormat.Multiple.DB.Collect.AdvertisementOutput2.Objects",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "IOFormat.Multiple.DB.Collect",
            "name": "AdvertisementOutput2",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.DB.Collect.AdvertisementOutput2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "Objects",
                    "typeRef": "string"
                }],
                "inputType": "Custom"
            },
            "typeRef": "AdvertisementOutput2"
        }
    ]
}