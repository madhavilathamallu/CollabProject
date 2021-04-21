{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-07T08:52:14",
        "displayName": "New Decision Table",
        "hitPolicy": "UNIQUE",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [{
            "comments": "rule1",
            "outputEntry": [
                {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Pass\""
                },
                {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "\"Pass-Pass\""
                }
            ],
            "inputEntry": [
                {
                    "domainName": "inputbiz1",
                    "text": "(starts with(name, \"mad\"))"
                },
                {
                    "domainName": "inputbiz1",
                    "text": "(age in [18..100])"
                },
                {
                    "domainName": "inputbiz1",
                    "text": "(date(dob) > date(\"1980-01-01\"))"
                },
                {
                    "domainName": "inputbiz1",
                    "text": "passfail = true"
                }
            ],
            "operationEntry": {
                "replaceEntries": [],
                "isWebhookCallable": {}
            }
        }],
        "preferredOrientation": "RULE_AS_ROW",
        "output": [
            {
                "primitive": false,
                "itemDefinitionId": "com.inputoutformat.ouptubiz1.result",
                "outputValues": null,
                "groupLabel": "ouptubiz1",
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
                "parentId": "com.inputoutformat.ouptubiz1",
                "explicit": true,
                "groupDescription": null,
                "name": "result",
                "typeRef": "string"
            },
            {
                "primitive": false,
                "itemDefinitionId": "com.inputoutformat.outputbz2.result1",
                "outputValues": null,
                "groupLabel": "outputbz2",
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
                "parentId": "com.inputoutformat.outputbz2",
                "explicit": true,
                "groupDescription": null,
                "name": "result1",
                "typeRef": "string"
            }
        ],
        "input": [{
            "primitive": false,
            "itemDefinitionId": "com.inputoutformat.inputbiz1",
            "format": null,
            "groupLabel": "inputbiz1",
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
                    "id": "com.inputoutformat.inputbiz1.name",
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
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "age",
                    "id": "com.inputoutformat.inputbiz1.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
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
                    "id": "com.inputoutformat.inputbiz1.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "passfail",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "passfail",
                    "id": "com.inputoutformat.inputbiz1.passfail",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "label": null,
            "collection": false,
            "parentId": "com.inputoutformat.inputbiz1",
            "explicit": true,
            "groupDescription": null,
            "inputExpression": {
                "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "attributeName": null,
                "id": null,
                "text": "inputbiz1"
            },
            "inputValues": null,
            "typeRef": "inputbiz1"
        }],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "com.inputoutformat",
        "comment": null,
        "id": "com.inputoutformat.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-07T06:42:26",
        "displayName": "inputoutformatTest",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "com.inputoutformat",
        "tables": ["com.inputoutformat.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "com.inputoutformat",
        "name": "model",
        "id": "com.inputoutformat.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-07T12:12:26",
        "author": "policyadmin",
        "description": "com.inputoutformat",
        "id": "com.inputoutformat"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T06:43:21",
            "displayName": "inputbiz1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "8629282d-1c4b-4d45-9f06-6abfe8793a78",
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
                    "parentId": "com.inputoutformat.inputbiz1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.inputoutformat",
                    "name": "name",
                    "id": "com.inputoutformat.inputbiz1.name",
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
                    "parentId": "com.inputoutformat.inputbiz1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.inputoutformat",
                    "name": "age",
                    "id": "com.inputoutformat.inputbiz1.age",
                    "isGeoEnabled": false,
                    "typeRef": "number"
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
                    "parentId": "com.inputoutformat.inputbiz1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.inputoutformat",
                    "name": "dob",
                    "id": "com.inputoutformat.inputbiz1.dob",
                    "isGeoEnabled": false,
                    "typeRef": "date"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "passfail",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "com.inputoutformat.inputbiz1",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "com.inputoutformat",
                    "name": "passfail",
                    "id": "com.inputoutformat.inputbiz1.passfail",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "namespace": "com.inputoutformat",
            "name": "inputbiz1",
            "modifiedBy": null,
            "id": "com.inputoutformat.inputbiz1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "name",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "age",
                        "typeRef": "number"
                    },
                    {
                        "displayName": "dob",
                        "typeRef": "date"
                    },
                    {
                        "displayName": "passfail",
                        "typeRef": "boolean"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "inputbiz1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T06:43:55",
            "displayName": "ouptubiz1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "468eb047-e9cc-4039-952d-fe89eba9ddbc",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "result",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "com.inputoutformat.ouptubiz1",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "com.inputoutformat",
                "name": "result",
                "id": "com.inputoutformat.ouptubiz1.result",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "com.inputoutformat",
            "name": "ouptubiz1",
            "modifiedBy": null,
            "id": "com.inputoutformat.ouptubiz1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "result",
                    "typeRef": "string"
                }],
                "inputType": "Custom"
            },
            "typeRef": "ouptubiz1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-07T08:48:57",
            "displayName": "outputbz2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "29be8217-577e-4a76-9e53-36a8fb8ab665",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "result1",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "com.inputoutformat.outputbz2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "com.inputoutformat",
                "name": "result1",
                "id": "com.inputoutformat.outputbz2.result1",
                "isGeoEnabled": false,
                "typeRef": "string"
            }],
            "namespace": "com.inputoutformat",
            "name": "outputbz2",
            "modifiedBy": null,
            "id": "com.inputoutformat.outputbz2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "result1",
                    "typeRef": "string"
                }],
                "inputType": "Custom"
            },
            "typeRef": "outputbz2"
        }
    ]
}