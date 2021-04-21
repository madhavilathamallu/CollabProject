{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-07T10:13:40",
        "displayName": "New Decision Table",
        "hitPolicy": "UNIQUE",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule2",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Rejected\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "1"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "DBMultiInput1",
                        "text": "(name = \"test\")"
                    },
                    {
                        "domainName": "DBMultiInput1",
                        "text": "(date(dob) = date(\"2020-12-07\"))"
                    },
                    {
                        "domainName": "DBMultiInput2",
                        "text": "Citizenship = false"
                    },
                    {
                        "domainName": "DBMultiInput2",
                        "text": "(age >101)"
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
                        "text": "\"Approved\""
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
                        "domainName": "DBMultiInput1",
                        "text": "(matches(name, \"^[A-Z]+$\"))"
                    },
                    {
                        "domainName": "DBMultiInput1",
                        "text": "(date(dob) between date(\"1970-01-01\") and date(\"2020-12-31\"))"
                    },
                    {
                        "domainName": "DBMultiInput2",
                        "text": "Citizenship = true"
                    },
                    {
                        "domainName": "DBMultiInput2",
                        "text": "(age in [1..120])"
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
                "itemDefinitionId": "com.db.multiobjects.DBMultiOutput1.status",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "DBMultiOutput1",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "status",
                "collection": false,
                "parentId": "com.db.multiobjects.DBMultiOutput1",
                "explicit": true,
                "groupDescription": null,
                "name": "status",
                "typeRef": "string"
            },
            {
                "primitive": false,
                "itemDefinitionId": "com.db.multiobjects.DBMultiOutput2.Rating",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "DBMultiOutput2",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "Rating",
                "collection": false,
                "parentId": "com.db.multiobjects.DBMultiOutput2",
                "explicit": true,
                "groupDescription": null,
                "name": "Rating",
                "typeRef": "number"
            }
        ],
        "input": [
            {
                "primitive": false,
                "itemDefinitionId": "com.db.multiobjects.DBMultiInput1",
                "format": null,
                "groupLabel": "DBMultiInput1",
                "description": null,
                "allowedAttributes": [
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "name",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "com.db.multiobjects.DBMultiInput1",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "name",
                        "id": "com.db.multiobjects.DBMultiInput1.name",
                        "isGeoEnabled": false,
                        "typeRef": "string"
                    },
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "dob",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "com.db.multiobjects.DBMultiInput1",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "dob",
                        "id": "com.db.multiobjects.DBMultiInput1.dob",
                        "isGeoEnabled": false,
                        "typeRef": "date"
                    }
                ],
                "label": null,
                "collection": false,
                "parentId": "com.db.multiobjects.DBMultiInput1",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "DBMultiInput1"
                },
                "inputValues": null,
                "typeRef": "DBMultiInput1"
            },
            {
                "primitive": false,
                "itemDefinitionId": "com.db.multiobjects.DBMultiInput2",
                "format": null,
                "groupLabel": "DBMultiInput2",
                "description": null,
                "allowedAttributes": [
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "Citizenship",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "com.db.multiobjects.DBMultiInput2",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "Citizenship",
                        "id": "com.db.multiobjects.DBMultiInput2.Citizenship",
                        "isGeoEnabled": false,
                        "typeRef": "boolean"
                    },
                    {
                        "allowedValues": {
                            "domainName": null,
                            "text": null
                        },
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "age",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": "com.db.multiobjects.DBMultiInput2",
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "age",
                        "id": "com.db.multiobjects.DBMultiInput2.age",
                        "isGeoEnabled": false,
                        "typeRef": "number"
                    }
                ],
                "label": null,
                "collection": false,
                "parentId": "com.db.multiobjects.DBMultiInput2",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "DBMultiInput2"
                },
                "inputValues": null,
                "typeRef": "DBMultiInput2"
            }
        ],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "com.db.multiobjects",
        "comment": null,
        "id": "com.db.multiobjects.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-07T09:49:31",
        "displayName": "dbmultiobjects",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "com.db.multiobjects",
        "tables": ["com.db.multiobjects.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "com.db.multiobjects",
        "name": "model",
        "id": "com.db.multiobjects.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-07T15:19:31",
        "author": "policyadmin",
        "description": "com.db.multiobjects",
        "id": "com.db.multiobjects"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T10:01:14",
            "displayName": "DBMultiInput1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 1,
            "createdOn": null,
            "parentId": null,
            "itemId": "3e1ac981-a57d-4e5c-847d-a3b6ff44b119",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "name",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.db.multiobjects",
                    "name": "name",
                    "id": "com.db.multiobjects.DBMultiInput1.name",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
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
                    "namespace": "com.db.multiobjects",
                    "name": "dob",
                    "id": "com.db.multiobjects.DBMultiInput1.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                }
            ],
            "namespace": "com.db.multiobjects",
            "name": "DBMultiInput1",
            "modifiedBy": null,
            "id": "com.db.multiobjects.DBMultiInput1",
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
            "typeRef": "DBMultiInput1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T10:01:38",
            "displayName": "DBMultiInput2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "f4c7d7a3-3222-43c1-ab63-bedc86790f1d",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Citizenship",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.db.multiobjects.DBMultiInput2",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.db.multiobjects",
                    "name": "Citizenship",
                    "id": "com.db.multiobjects.DBMultiInput2.Citizenship",
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
                    "parentId": "com.db.multiobjects.DBMultiInput2",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.db.multiobjects",
                    "name": "age",
                    "id": "com.db.multiobjects.DBMultiInput2.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "namespace": "com.db.multiobjects",
            "name": "DBMultiInput2",
            "modifiedBy": null,
            "id": "com.db.multiobjects.DBMultiInput2",
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
            "typeRef": "DBMultiInput2"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T10:02:00",
            "displayName": "DBMultiOutput1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "93c6829d-13ac-4cb8-b344-bae08d83e8c5",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "status",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "com.db.multiobjects.DBMultiOutput1",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "com.db.multiobjects",
                "name": "status",
                "id": "com.db.multiobjects.DBMultiOutput1.status",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "com.db.multiobjects",
            "name": "DBMultiOutput1",
            "modifiedBy": null,
            "id": "com.db.multiobjects.DBMultiOutput1",
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
            "typeRef": "DBMultiOutput1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T10:02:20",
            "displayName": "DBMultiOutput2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "83ad71fa-52ed-4dbd-83d7-b6643fa7f0a8",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "Rating",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "com.db.multiobjects.DBMultiOutput2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "com.db.multiobjects",
                "name": "Rating",
                "id": "com.db.multiobjects.DBMultiOutput2.Rating",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "com.db.multiobjects",
            "name": "DBMultiOutput2",
            "modifiedBy": null,
            "id": "com.db.multiobjects.DBMultiOutput2",
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
            "typeRef": "DBMultiOutput2"
        }
    ]
}