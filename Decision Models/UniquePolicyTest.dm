{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-08T14:26:26",
        "displayName": "New Decision Table",
        "hitPolicy": "UNIQUE",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule2",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Not Eligible\""
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "name = NO_VALUE"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(date(dob) > date(\"2020-01-01\"))"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "Citizenship = false"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(age in [1..18])"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule1",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Eligible\""
                }],
                "inputEntry": [
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(matches(name, \"^[A-Z]+$\"))"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(date(dob) between date(\"1980-01-01\") and date(\"1990-12-31\"))"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "Citizenship = true"
                    },
                    {
                        "domainName": "ApplicantDetails",
                        "text": "(age between 30 and 40)"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            }
        ],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [{
            "primitive": false,
            "itemDefinitionId": "IOFormat.Single.DB.Unique.PolicyDetails.PolicySuggested",
            "outputValues": null,
            "groupLabel": "PolicyDetails",
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
            "parentId": "IOFormat.Single.DB.Unique.PolicyDetails",
            "explicit": true,
            "groupDescription": null,
            "name": "PolicySuggested",
            "typeRef": "string"
        }],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "IOFormat.Single.DB.Unique.ApplicantDetails",
            "format": null,
            "groupLabel": "ApplicantDetails",
            "description": null,
            "allowedAttributes": [
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
                    "namespace": null,
                    "name": "name",
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.name",
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
                    "namespace": null,
                    "name": "dob",
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.dob",
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
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.Citizenship",
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
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "IOFormat.Single.DB.Unique.ApplicantDetails",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "ApplicantDetails"
            },
            "inputValues": null,
            "typeRef": "ApplicantDetails"
        }],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Single.DB.Unique",
        "comment": null,
        "id": "IOFormat.Single.DB.Unique.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-08T12:28:40",
        "displayName": "UniquePolicyTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Single.DB.Unique",
        "tables": ["IOFormat.Single.DB.Unique.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Single.DB.Unique",
        "name": "model",
        "id": "IOFormat.Single.DB.Unique.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-08T17:58:40",
        "author": "policyadmin",
        "description": "IOFormat.Single.DB.Unique",
        "id": "IOFormat.Single.DB.Unique"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-08T12:30:44",
            "displayName": "ApplicantDetails",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "10c2284e-019a-49fd-a5c0-28eda2417761",
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
                    "parentId": "IOFormat.Single.DB.Unique.ApplicantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.Unique",
                    "name": "name",
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.name",
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
                    "parentId": "IOFormat.Single.DB.Unique.ApplicantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.Unique",
                    "name": "dob",
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.dob",
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
                    "parentId": "IOFormat.Single.DB.Unique.ApplicantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.Unique",
                    "name": "Citizenship",
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.Citizenship",
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
                    "parentId": "IOFormat.Single.DB.Unique.ApplicantDetails",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.Unique",
                    "name": "age",
                    "id": "IOFormat.Single.DB.Unique.ApplicantDetails.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "namespace": "IOFormat.Single.DB.Unique",
            "name": "ApplicantDetails",
            "modifiedBy": null,
            "id": "IOFormat.Single.DB.Unique.ApplicantDetails",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{}],
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
            "typeRef": "ApplicantDetails"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-08T12:32:42",
            "displayName": "PolicyDetails",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 1,
            "createdOn": null,
            "parentId": null,
            "itemId": "0aa7514b-34b8-46d5-b8f8-cd603a83dcf3",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "PolicySuggested",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": null,
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Single.DB.Unique",
                "name": "PolicySuggested",
                "id": "IOFormat.Single.DB.Unique.PolicyDetails.PolicySuggested",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "IOFormat.Single.DB.Unique",
            "name": "PolicyDetails",
            "modifiedBy": null,
            "id": "IOFormat.Single.DB.Unique.PolicyDetails",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "PolicySuggested",
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
                },
                "tableName": {
                    "schema": "public",
                    "name": "DMdatatypeTest"
                }
            },
            "typeRef": "PolicyDetails"
        }
    ]
}