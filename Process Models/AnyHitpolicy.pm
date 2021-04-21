{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_ystxjb",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1tro5mu",
                "sourceRef": "StartEvent_20vma3",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1v00b79",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_pmrceb",
                "sourceRef": "BusinessRuleTask_ystxjb",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_h4yic",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_lglwl5",
                "sourceRef": "UserTask_1v00b79",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_lglwl5",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_h4yic",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_pmrceb",
            "incoming": "SequenceFlow_1tro5mu",
            "businessProp": {
                "output": "MultiCustomObj",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Custom.Multiple.AnyhitpolicyTest.model/IOFormat.Custom.Multiple.AnyhitpolicyTest.decisiontable",
                "parameters-collaps": [
                    {
                        "reference": "PersonLoanCompliance1",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "PersonLoanCompliance1",
                        "label": [
                            "Name",
                            "Value"
                        ],
                        "type": "attributeGroup",
                        "primaryPanal": [
                            {
                                "reference": "name",
                                "configurations": {"disableEdit": true},
                                "type": "inputWithoutLable",
                                "maxLength": 30,
                                "events": {},
                                "parentRef": "PersonLoanCompliance1"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "PersonLoanCompliance1"
                            }
                        ],
                        "listType": "inputList"
                    },
                    {
                        "reference": "PersonLoanCompliance2",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "PersonLoanCompliance2",
                        "label": [
                            "Name",
                            "Value"
                        ],
                        "type": "attributeGroup",
                        "primaryPanal": [
                            {
                                "reference": "name",
                                "configurations": {"disableEdit": true},
                                "type": "inputWithoutLable",
                                "maxLength": 30,
                                "events": {},
                                "parentRef": "PersonLoanCompliance2"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "PersonLoanCompliance2"
                            }
                        ],
                        "listType": "inputList"
                    }
                ],
                "decision-model": "{\"name\":\"AnyhitpolicyTestUpdated.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":11482,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Custom.Multiple.AnyhitpolicyTest\",\"content\":null,\"id\":\"55277391-60f8-4e30-bcce-c7edef461240\",\"createdOn\":\"2021-02-06T13:04:28.451+05:30\",\"modifiedOn\":\"2021-02-06T13:04:28.709+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.model",
                "PersonLoanCompliance1": [
                    {
                        "name": "CreditRatingfromBureau",
                        "objectName": "PersonLoanCompliance1",
                        "type": null,
                        "value": "crating"
                    },
                    {
                        "name": "CreditCardBalance",
                        "objectName": "PersonLoanCompliance1",
                        "type": null,
                        "value": "cbal"
                    }
                ],
                "parameters": [
                    {
                        "name": "CreditRatingfromBureau",
                        "objectName": "PersonLoanCompliance1",
                        "type": null,
                        "value": "crating"
                    },
                    {
                        "name": "CreditCardBalance",
                        "objectName": "PersonLoanCompliance1",
                        "type": null,
                        "value": "cbal"
                    },
                    {
                        "name": "EducationLoanBalance",
                        "objectName": "PersonLoanCompliance2",
                        "type": null,
                        "value": "ebal"
                    }
                ],
                "decisiontable-id": "IOFormat.Custom.Multiple.AnyhitpolicyTest.decisiontable",
                "PersonLoanCompliance2": [{
                    "name": "EducationLoanBalance",
                    "objectName": "PersonLoanCompliance2",
                    "type": null,
                    "value": "ebal"
                }]
            },
            "name": "AnyBzTask",
            "id": "BusinessRuleTask_ystxjb",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1tro5mu",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_20vma3",
            "type": "bpmn:startEvent"
        },
        "id": "Process_ey4pnq",
        "userTask": {
            "outgoing": "SequenceFlow_lglwl5",
            "incoming": "SequenceFlow_pmrceb",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "Role1",
                    "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "formType": "Custom",
                "fromUser": "\"Hit Policy - Any\"",
                "form-variables": [
                    {
                        "ref": "Result",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Result",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "Compliance",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Compliance",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "eligibility",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Eligibility",
                        "fieldtype": "Input",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ],
                "subject": "\"Hit Policy - Any\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "\"Any Hit Poicy Update\"",
                "pre-processor": "$pm.addMemVariable(\"Result\",MultiCustomObj.data);\n$pm.addMemVariable(\"Compliance\",MultiCustomObj.data.Compliance);\n$pm.addMemVariable(\"eligibility\",MultiCustomObj.data.Eligibilty);\n",
                "notify-type": "Message Only"
            },
            "name": "NotifyUser",
            "id": "UserTask_1v00b79",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_ey4pnq",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_h4yic",
                    "Bounds": {
                        "cx": 835,
                        "cy": 328.5,
                        "x": 817,
                        "width": 36,
                        "y": 299,
                        "height": 59
                    },
                    "id": "EndEvent_h4yic_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_ystxjb",
                    "Bounds": {
                        "cx": 355,
                        "cy": 299.49999237060547,
                        "x": 278.0199966430664,
                        "width": 153.9600067138672,
                        "y": 261.3349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_ystxjb_ve"
                },
                {
                    "bpmnElement": "StartEvent_20vma3",
                    "Bounds": {
                        "cx": 175,
                        "cy": 312.5,
                        "x": 157,
                        "width": 36,
                        "y": 283,
                        "height": 59
                    },
                    "id": "StartEvent_20vma3_ve"
                },
                {
                    "bpmnElement": "UserTask_1v00b79",
                    "Bounds": {
                        "cx": 626,
                        "cy": 316.99999237060547,
                        "x": 549.0199966430664,
                        "width": 153.9600067138672,
                        "y": 278.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1v00b79_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "193",
                            "y": "301"
                        },
                        {
                            "x": "235.5099983215332",
                            "y": "301"
                        },
                        {
                            "x": "235.5099983215332",
                            "y": "299.49999145507815"
                        },
                        {
                            "x": "278.0199966430664",
                            "y": "299.49999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1tro5mu",
                    "id": "SequenceFlow_1tro5mu_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "431.97999664306644",
                            "y": "299.49999145507815"
                        },
                        {
                            "x": "490.4999966430664",
                            "y": "299.49999145507815"
                        },
                        {
                            "x": "490.4999966430664",
                            "y": "316.99999145507815"
                        },
                        {
                            "x": "549.0199966430664",
                            "y": "316.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_pmrceb",
                    "id": "SequenceFlow_pmrceb_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "702.9799966430664",
                            "y": "316.99999145507815"
                        },
                        {
                            "x": "817",
                            "y": "317"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_lglwl5",
                    "id": "SequenceFlow_lglwl5_ve"
                }
            ]
        },
        "id": "Process_ey4pnq_ve"
    },
    "collaboration": {}
}