{
    "decisiontable": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T08:22:15",
        "displayName": "New Decision Table",
        "hitPolicy": "UNIQUE",
        "description": "Design a new Decision Table by adding inputs and outputs.",
        "rules": [
            {
                "comments": "Rule3",
                "outputEntry": [
                    {
                        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "attributeName": null,
                        "id": null,
                        "text": "\"Not Compliant\""
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
                        "domainName": "PersonLoanCompliance1",
                        "text": "CreditRatingfromBureau = NO_VALUE"
                    },
                    {
                        "domainName": "PersonLoanCompliance1",
                        "text": "CreditCardBalance = NO_VALUE"
                    },
                    {
                        "domainName": "PersonLoanCompliance2",
                        "text": "(EducationLoanBalance >=50000)"
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
                        "text": "\"Not Compliant\""
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
                        "domainName": "PersonLoanCompliance1",
                        "text": "(Not(CreditRatingfromBureau, A))"
                    },
                    {
                        "domainName": "PersonLoanCompliance1",
                        "text": "CreditCardBalance = NO_VALUE"
                    },
                    {
                        "domainName": "PersonLoanCompliance2",
                        "text": "EducationLoanBalance = NO_VALUE"
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
                        "text": "\"Compliant\""
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
                        "domainName": "PersonLoanCompliance1",
                        "text": "(CreditRatingfromBureau = \"A\")"
                    },
                    {
                        "domainName": "PersonLoanCompliance1",
                        "text": "(CreditCardBalance <10000)"
                    },
                    {
                        "domainName": "PersonLoanCompliance2",
                        "text": "(EducationLoanBalance <50000)"
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
                "itemDefinitionId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput.Compliance",
                "outputValues": null,
                "groupLabel": "ComplianceOutput",
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
                "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput",
                "explicit": true,
                "groupDescription": null,
                "name": "Compliance",
                "typeRef": "string"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput.Eligibilty",
                "outputValues": null,
                "groupLabel": "ComplianceOutput",
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
                "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput",
                "explicit": true,
                "groupDescription": null,
                "name": "Eligibilty",
                "typeRef": "boolean"
            }
        ],
        "input": [
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1",
                "format": null,
                "groupLabel": "PersonLoanCompliance1",
                "description": null,
                "allowedAttributes": [
                    {
                        "allowedValues": null,
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "CreditRatingfromBureau",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": null,
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "CreditRatingfromBureau",
                        "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1.CreditRatingfromBureau",
                        "isGeoEnabled": false,
                        "typeRef": "string"
                    },
                    {
                        "allowedValues": null,
                        "domainReference": null,
                        "lastModifiedDate": null,
                        "displayName": "CreditCardBalance",
                        "author": null,
                        "isCollection": false,
                        "description": null,
                        "collection": false,
                        "parentId": null,
                        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                        "itemComponent": [],
                        "namespace": null,
                        "name": "CreditCardBalance",
                        "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1.CreditCardBalance",
                        "isGeoEnabled": false,
                        "typeRef": "number"
                    }
                ],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "PersonLoanCompliance1"
                },
                "inputValues": null,
                "typeRef": "PersonLoanCompliance1"
            },
            {
                "primitive": false,
                "itemDefinitionId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance2",
                "format": null,
                "groupLabel": "PersonLoanCompliance2",
                "description": null,
                "allowedAttributes": [{
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "EducationLoanBalance",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": null,
                    "name": "EducationLoanBalance",
                    "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance2.EducationLoanBalance",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }],
                "label": null,
                "collection": false,
                "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance2",
                "explicit": true,
                "groupDescription": null,
                "inputExpression": {
                    "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "attributeName": null,
                    "id": null,
                    "text": "PersonLoanCompliance2"
                },
                "inputValues": null,
                "typeRef": "PersonLoanCompliance2"
            }
        ],
        "operations": {
            "webhookData": [],
            "replaceInputs": []
        },
        "outputLabel": null,
        "name": "decisiontable",
        "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
        "comment": null,
        "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.decisiontable"
    },
    "decisionmodel": {
        "modifiedUserName": "policyadmin",
        "lastModifiedDate": "2020-12-09T07:27:25",
        "displayName": "AnyhitpolicyTestUpdated",
        "expressionLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "description": "model",
        "published": true,
        "decisionModelNamespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
        "tables": ["IOFormat.Custom.Multiple.AnyhitpolicyTest.decisiontable"],
        "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
        "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
        "name": "model",
        "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.model",
        "category": null
    },
    "namespace": {
        "lastModifiedDate": "2020-12-09T12:57:25",
        "author": "policyadmin",
        "description": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
        "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest"
    },
    "itemdefinitions": [
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:29:16",
            "displayName": "PersonLoanCompliance1",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 1,
            "createdOn": null,
            "parentId": null,
            "itemId": "33b4931b-9b25-4706-8fc5-738b71f3f4b6",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "CreditRatingfromBureau",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
                    "name": "CreditRatingfromBureau",
                    "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1.CreditRatingfromBureau",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "CreditCardBalance",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": null,
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
                    "name": "CreditCardBalance",
                    "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1.CreditCardBalance",
                    "isGeoEnabled": false,
                    "typeRef": "number"
                }
            ],
            "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
            "name": "PersonLoanCompliance1",
            "modifiedBy": null,
            "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance1",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "CreditRatingfromBureau",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "CreditCardBalance",
                        "typeRef": "number"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "PersonLoanCompliance1"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:29:52",
            "displayName": "PersonLoanCompliance2",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "a8ba029d-e675-4100-9eda-0a0c13066040",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [{
                "allowedValues": null,
                "domainReference": null,
                "lastModifiedDate": null,
                "displayName": "EducationLoanBalance",
                "author": null,
                "isCollection": false,
                "description": null,
                "collection": false,
                "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance2",
                "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                "itemComponent": [],
                "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
                "name": "EducationLoanBalance",
                "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance2.EducationLoanBalance",
                "isGeoEnabled": false,
                "typeRef": "number"
            }],
            "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
            "name": "PersonLoanCompliance2",
            "modifiedBy": null,
            "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.PersonLoanCompliance2",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [{
                    "displayName": "EducationLoanBalance",
                    "typeRef": "number"
                }],
                "inputType": "Custom"
            },
            "typeRef": "PersonLoanCompliance2"
        },
        {
            "allowedValues": null,
            "domainReference": null,
            "lastModifiedDate": "2020-12-09T07:30:41",
            "displayName": "ComplianceOutput",
            "author": "policyadmin",
            "isCollection": false,
            "description": null,
            "collection": false,
            "version": 0,
            "createdOn": null,
            "parentId": null,
            "itemId": "5b6f26ca-921c-4e80-af36-6812af76c05e",
            "modifiedOn": null,
            "createdBy": null,
            "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
            "itemComponent": [
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Compliance",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
                    "name": "Compliance",
                    "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput.Compliance",
                    "isGeoEnabled": false,
                    "typeRef": "string"
                },
                {
                    "allowedValues": null,
                    "domainReference": null,
                    "lastModifiedDate": null,
                    "displayName": "Eligibilty",
                    "author": null,
                    "isCollection": false,
                    "description": null,
                    "collection": false,
                    "parentId": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput",
                    "typeLanguage": "http://www.omg.org/spec/DMN/20180521/FEEL/",
                    "itemComponent": [],
                    "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
                    "name": "Eligibilty",
                    "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput.Eligibilty",
                    "isGeoEnabled": false,
                    "typeRef": "boolean"
                }
            ],
            "namespace": "IOFormat.Custom.Multiple.AnyhitpolicyTest",
            "name": "ComplianceOutput",
            "modifiedBy": null,
            "id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.ComplianceOutput",
            "isGeoEnabled": false,
            "properties": {
                "customItemComponents": [
                    {
                        "displayName": "Compliance",
                        "typeRef": "string"
                    },
                    {
                        "displayName": "Eligibilty",
                        "typeRef": "boolean"
                    }
                ],
                "inputType": "Custom"
            },
            "typeRef": "ComplianceOutput"
        }
    ]
}