{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T08:00:22",
        "displayName": "New Decision Table",
        "hitPolicy": "OUTPUT_ORDER",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule8",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2020-12-02\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "2"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "(Age in [45..60))"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "(YearsOfService <30)"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule7",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2020-12-08\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "2"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "(Age in [18..60))"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "(YearsOfService in [15..30))"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule6",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2020-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "5"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "Age = NO_VALUE"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "(YearsOfService >=30)"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule5",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2020-12-09\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "5"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "(Age >=60)"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "YearsOfService = NO_VALUE"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule4",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"1940-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "5"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "(Age <18)"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "YearsOfService = NO_VALUE"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule3",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2020-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "3"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "Age = NO_VALUE"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "(YearsOfService >=30)"
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
                        "text": "\"2020-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "3"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "(Age >=60)"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "YearsOfService = NO_VALUE"
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
                        "text": "\"2020-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "22"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "HolidayInputs1",
                        "text": "Age = NO_VALUE"
                    },
                    {
                        "domainName": "HolidayInputs2",
                        "text": "YearsOfService = NO_VALUE"
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
                "itemDefinitionId": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays.YearOfHolidays",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "outputHolidays",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "YearOfHolidays",
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays",
                "explicit": true,
                "groupDescription": null,
                "name": "YearOfHolidays",
                "typeRef": "date"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays2.Holidays",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "outputHolidays2",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "Holidays",
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays2",
                "explicit": true,
                "groupDescription": null,
                "name": "Holidays",
                "typeRef": "number"
            }
        ],
        "input": [
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1",
                "format": null,
                "groupLabel": "HolidayInputs1",
                "description": null,
                "allowedAttributes": [{
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Age",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "Age",
                    "id": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1.Age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "HolidayInputs1"
                },
                "inputValues": null,
                "typeRef": "HolidayInputs1"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2",
                "format": null,
                "groupLabel": "HolidayInputs2",
                "description": null,
                "allowedAttributes": [{
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "YearsOfService",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "YearsOfService",
                    "id": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2.YearsOfService",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "HolidayInputs2"
                },
                "inputValues": null,
                "typeRef": "HolidayInputs2"
            }
        ],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Multiple.Custom.OutputOrder",
        "comment": null,
        "id": "IOFormat.Multiple.Custom.OutputOrder.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T07:40:45",
        "displayName": "OutputOrderHitPolicyTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Multiple.Custom.OutputOrder",
        "tables": ["IOFormat.Multiple.Custom.OutputOrder.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Multiple.Custom.OutputOrder",
        "name": "model",
        "id": "IOFormat.Multiple.Custom.OutputOrder.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-09T13:10:45",
        "author": "policyadmin",
        "description": "IOFormat.Multiple.Custom.OutputOrder",
        "id": "IOFormat.Multiple.Custom.OutputOrder"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:43:12",
            "displayName": "HolidayInputs1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "50f0d3f5-d9a9-4c92-97f4-833b900be75c",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "Age",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.Custom.OutputOrder",
                "name": "Age",
                "id": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1.Age",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "IOFormat.Multiple.Custom.OutputOrder",
            "name": "HolidayInputs1",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "Age",
                    "typeRef": "number"
                }],
                "inputType": "Custom"
            },
            "typeRef": "HolidayInputs1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:43:53",
            "displayName": "HolidayInputs2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "fa5c886a-4206-4058-9506-719dd7d1a99e",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "YearsOfService",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.Custom.OutputOrder",
                "name": "YearsOfService",
                "id": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2.YearsOfService",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "IOFormat.Multiple.Custom.OutputOrder",
            "name": "HolidayInputs2",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.OutputOrder.HolidayInputs2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "",
                    "typeRef": "String"
                }],
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
                    "name": "outputOrderHitPolicy"
                }
            },
            "typeRef": "HolidayInputs2"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:44:41",
            "displayName": "outputHolidays1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 1,
            "createdOn": null,
            "parentId": null,
            "itemId": "3a941e4c-f40d-402c-b96a-6308e34aaa23",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "YearOfHolidays",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": null,
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.Custom.OutputOrder",
                "name": "YearOfHolidays",
                "id": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays.YearOfHolidays",
                "isGeoEnabled": false,
                "typeRef": "date"
            }],
            "namespace": "IOFormat.Multiple.Custom.OutputOrder",
            "name": "outputHolidays",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "YearOfHolidays",
                    "typeRef": "date"
                }],
                "inputType": "Custom"
            },
            "typeRef": "outputHolidays"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:45:09",
            "displayName": "outputHolidays2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "69be9681-95bb-43cf-8cdc-5aaabce35d0a",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "Holidays",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Multiple.Custom.OutputOrder",
                "name": "Holidays",
                "id": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays2.Holidays",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "IOFormat.Multiple.Custom.OutputOrder",
            "name": "outputHolidays2",
            "modifiedBy": null,
            "id": "IOFormat.Multiple.Custom.OutputOrder.outputHolidays2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "Holidays",
                    "typeRef": "String"
                }],
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
                    "name": "outputOrderHitPolicy"
                }
            },
            "typeRef": "outputHolidays2"
        }
    ]
}