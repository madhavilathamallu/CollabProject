{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T08:22:26",
        "displayName": "New Decision Table",
        "hitPolicy": "RULE_ORDER",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule4",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"5% Work-On-Campus\""
                }],
                "inputEntry": [
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(StudentGPA <=3.0)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "ExtraActivitiesCount = NO_VALUE"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "NHSMembership = NO_VALUE"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule3",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"20% Work-On-Campus\""
                }],
                "inputEntry": [
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(StudentGPA >3.0)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(ExtraActivitiesCount >=2)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "NHSMembership = false"
                    }
                ],
                "operationEntry": {
                    "replaceEntries": [],
                    "isWebhookCallable": {}
                }
            },
            {
                "comments": "Rule2",
                "outputEntry": [{
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"30% Loan\""
                }],
                "inputEntry": [
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(StudentGPA >3.0)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(ExtraActivitiesCount >=4)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "NHSMembership = true"
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
                    "text": "\"20% Scholarship\""
                }],
                "inputEntry": [
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(StudentGPA >3.5)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "(ExtraActivitiesCount >=4)"
                    },
                    {
                        "domainName": "PackageEligibilityInput",
                        "text": "NHSMembership = true"
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
            "itemDefinitionId": "IOFormat.Single.DB.RuleOrder.EligibilityOutput.FinancialPackage",
            "outputValues": null,
            "groupLabel": "EligibilityOutput",
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
            "parentId": "IOFormat.Single.DB.RuleOrder.EligibilityOutput",
            "explicit": true,
            "groupDescription": null,
            "name": "FinancialPackage",
            "typeRef": "string"
        }],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput",
            "format": null,
            "groupLabel": "PackageEligibilityInput",
            "description": null,
            "allowedAttributes": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "StudentGPA",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "StudentGPA",
                    "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput.StudentGPA",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "ExtraActivitiesCount",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "ExtraActivitiesCount",
                    "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput.ExtraActivitiesCount",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "NHSMembership",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "NHSMembership",
                    "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput.NHSMembership",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "PackageEligibilityInput"
            },
            "inputValues": null,
            "typeRef": "PackageEligibilityInput"
        }],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Single.DB.RuleOrder",
        "comment": null,
        "id": "IOFormat.Single.DB.RuleOrder.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T07:17:27",
        "displayName": "RuleOrderHitPolicyTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Single.DB.RuleOrder",
        "tables": ["IOFormat.Single.DB.RuleOrder.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Single.DB.RuleOrder",
        "name": "model",
        "id": "IOFormat.Single.DB.RuleOrder.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-09T12:47:27",
        "author": "policyadmin",
        "description": "IOFormat.Single.DB.RuleOrder",
        "id": "IOFormat.Single.DB.RuleOrder"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:34:55",
            "displayName": "PackageEligibilityInput",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "2fd698b3-dca8-4812-a821-7488e2b5a067",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "StudentGPA",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.RuleOrder",
                    "name": "StudentGPA",
                    "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput.StudentGPA",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "ExtraActivitiesCount",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.RuleOrder",
                    "name": "ExtraActivitiesCount",
                    "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput.ExtraActivitiesCount",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "NHSMembership",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.DB.RuleOrder",
                    "name": "NHSMembership",
                    "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput.NHSMembership",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "namespace": "IOFormat.Single.DB.RuleOrder",
            "name": "PackageEligibilityInput",
            "modifiedBy": null,
            "id": "IOFormat.Single.DB.RuleOrder.PackageEligibilityInput",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {},
                    {}
                ],
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
                    "name": "ruleOrderHitPolicy"
                }
            },
            "typeRef": "PackageEligibilityInput"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:35:38",
            "displayName": "EligibilityOutput",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "3ad662ac-a87f-49fa-87e7-66ce768f4554",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "FinancialPackage",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Single.DB.RuleOrder.EligibilityOutput",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Single.DB.RuleOrder",
                "name": "FinancialPackage",
                "id": "IOFormat.Single.DB.RuleOrder.EligibilityOutput.FinancialPackage",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "IOFormat.Single.DB.RuleOrder",
            "name": "EligibilityOutput",
            "modifiedBy": null,
            "id": "IOFormat.Single.DB.RuleOrder.EligibilityOutput",
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
                    "name": "ruleOrderHitPolicy"
                }
            },
            "typeRef": "EligibilityOutput"
        }
    ]
}