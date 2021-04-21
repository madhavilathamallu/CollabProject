{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T06:52:06",
        "displayName": "New Decision Table",
        "hitPolicy": "FIRST",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule3",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Toys\""
                    },
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
                        "text": "false"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "AdvertInput1",
                        "text": "Income = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "age = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "children = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "dob = NO_VALUE"
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
                        "text": "\"VideoGames\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2008-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "true"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "AdvertInput1",
                        "text": "Income = NO_VALUE"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "(age >12)"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "children = false"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "(date(dob) > date(\"2008-01-01\"))"
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
                        "text": "\"Cars\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"2002-01-01\""
                    },
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "false"
                    }
                ],
                "inputEntry": [
                    {
                        "domainName": "AdvertInput1",
                        "text": "(Income = \"Income\")"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "(age > 18)"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "children = false"
                    },
                    {
                        "domainName": "AdvertInput1",
                        "text": "(date(dob) = date(\"2002-01-01\"))"
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
                "itemDefinitionId": "IOFormat.Single.Custom.First.AdvertOutput1.AdvertisedObjects",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "AdvertOutput1",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "AdvertisedObjects",
                "collection": false,
                "parentId": "IOFormat.Single.Custom.First.AdvertOutput1",
                "explicit": true,
                "groupDescription": null,
                "name": "AdvertisedObjects",
                "typeRef": "string"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Single.Custom.First.AdvertOutput1.dob",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "AdvertOutput1",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "dob",
                "collection": false,
                "parentId": "IOFormat.Single.Custom.First.AdvertOutput1",
                "explicit": true,
                "groupDescription": null,
                "name": "dob",
                "typeRef": "date"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Single.Custom.First.AdvertOutput1.children",
                "outputValues": {
                    "domainName": null,
                    "text": null
                },
                "groupLabel": "AdvertOutput1",
                "description": null,
                "defaultOutputEntry": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": null
                },
                "allowedAttributes": [],
                "label": "children",
                "collection": false,
                "parentId": "IOFormat.Single.Custom.First.AdvertOutput1",
                "explicit": true,
                "groupDescription": null,
                "name": "children",
                "typeRef": "boolean"
            }
        ],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "IOFormat.Single.Custom.First.AdvertInput1",
            "format": null,
            "groupLabel": "AdvertInput1",
            "description": null,
            "allowedAttributes": [
                {
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Income",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "Income",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.Income",
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
                    "displayName": "age",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "age",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": {
                        "domainName": null,
                        "text": null
                    },
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "children",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "children",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.children",
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
                    "displayName": "dob",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "dob",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "AdvertInput1"
            },
            "inputValues": null,
            "typeRef": "AdvertInput1"
        }],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Single.Custom.First",
        "comment": null,
        "id": "IOFormat.Single.Custom.First.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T06:39:06",
        "displayName": "FirstHitPolicyTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Single.Custom.First",
        "tables": ["IOFormat.Single.Custom.First.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Single.Custom.First",
        "name": "model",
        "id": "IOFormat.Single.Custom.First.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-09T12:09:06",
        "author": "policyadmin",
        "description": "IOFormat.Single.Custom.First",
        "id": "IOFormat.Single.Custom.First"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T06:41:52",
            "displayName": "AdvertInput1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "d03defd8-d729-4a93-8ef7-5ad37770cfd8",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Income",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "Income",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.Income",
                    "isGeoEnabled": false,
                    "typeRef": "string"
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
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "age",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "children",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "children",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.children",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
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
                    "parentId": "IOFormat.Single.Custom.First.AdvertInput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "dob",
                    "id": "IOFormat.Single.Custom.First.AdvertInput1.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                }
            ],
            "namespace": "IOFormat.Single.Custom.First",
            "name": "AdvertInput1",
            "modifiedBy": null,
            "id": "IOFormat.Single.Custom.First.AdvertInput1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "Income",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "age",
                        "typeRef": "number"
                    },
                    {
                        "displayName": "children",
                        "typeRef": "boolean"
                    },
                    {
                        "displayName": "dob",
                        "typeRef": "date"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "AdvertInput1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T06:42:55",
            "displayName": "AdvertOutput1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "99edc072-c5ed-4be8-b360-9f4a2cb4f0de",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "AdvertisedObjects",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertOutput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "AdvertisedObjects",
                    "id": "IOFormat.Single.Custom.First.AdvertOutput1.AdvertisedObjects",
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
                    "parentId": "IOFormat.Single.Custom.First.AdvertOutput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "dob",
                    "id": "IOFormat.Single.Custom.First.AdvertOutput1.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "children",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Single.Custom.First.AdvertOutput1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Single.Custom.First",
                    "name": "children",
                    "id": "IOFormat.Single.Custom.First.AdvertOutput1.children",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "namespace": "IOFormat.Single.Custom.First",
            "name": "AdvertOutput1",
            "modifiedBy": null,
            "id": "IOFormat.Single.Custom.First.AdvertOutput1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "AdvertisedObjects",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "dob",
                        "typeRef": "date"
                    },
                    {
                        "displayName": "children",
                        "typeRef": "boolean"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "AdvertOutput1"
        }
    ]
}