{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1ibrvjt",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1aepwze",
                "sourceRef": "StartEvent_1nr6pc1",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_a8ywst",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1o8a7cs",
                "sourceRef": "BusinessRuleTask_1ibrvjt",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_5vqy88",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_zt1qhv",
                "sourceRef": "UserTask_a8ywst",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_zt1qhv",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_5vqy88",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_1o8a7cs",
            "incoming": "SequenceFlow_1aepwze",
            "businessProp": {
                "output": "MultiCustomObj1",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Multiple.Custom.OutputOrder.model/IOFormat.Multiple.Custom.OutputOrder.decisiontable",
                "parameters-collaps": [
                    {
                        "reference": "HolidayInputs1",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "HolidayInputs1",
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
                                "parentRef": "HolidayInputs1"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "HolidayInputs1"
                            }
                        ],
                        "listType": "inputList"
                    },
                    {
                        "reference": "HolidayInputs2",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "HolidayInputs2",
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
                                "parentRef": "HolidayInputs2"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "HolidayInputs2"
                            }
                        ],
                        "listType": "inputList"
                    }
                ],
                "HolidayInputs2": [{
                    "name": "YearsOfService",
                    "objectName": "HolidayInputs2",
                    "type": null,
                    "value": "yos"
                }],
                "decision-model": "{\"name\":\"OutputOrderHitPolicyTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":15000,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Multiple.Custom.OutputOrder\",\"content\":null,\"id\":\"2afdcd81-ac59-495d-a8c9-b809b6311550\",\"createdOn\":\"2021-02-06T13:04:29.430+05:30\",\"modifiedOn\":\"2021-02-06T13:04:29.598+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "HolidayInputs1": [{
                    "name": "Age",
                    "objectName": "HolidayInputs1",
                    "type": null,
                    "value": "age3"
                }],
                "decisionmodel-id": "IOFormat.Multiple.Custom.OutputOrder.model",
                "ApplicantDetails": [
                    {
                        "name": "name",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "name"
                    },
                    {
                        "name": "dob",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "dob"
                    },
                    {
                        "name": "Citizenship",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "citizen"
                    },
                    {
                        "name": "age",
                        "objectName": "ApplicantDetails",
                        "type": null,
                        "value": "age"
                    }
                ],
                "parameters": [
                    {
                        "name": "Age",
                        "objectName": "HolidayInputs1",
                        "type": null,
                        "value": "age3"
                    },
                    {
                        "name": "YearsOfService",
                        "objectName": "HolidayInputs2",
                        "type": null,
                        "value": "yos"
                    }
                ],
                "decisiontable-id": "IOFormat.Multiple.Custom.OutputOrder.decisiontable"
            },
            "name": "OutputOrderBizTask",
            "id": "BusinessRuleTask_1ibrvjt",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_1aepwze",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1nr6pc1",
            "type": "bpmn:startEvent"
        },
        "id": "Process_8f8svd",
        "userTask": {
            "outgoing": "SequenceFlow_zt1qhv",
            "incoming": "SequenceFlow_1o8a7cs",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "Role1",
                    "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "formType": "Custom",
                "fromUser": "\"Hit Policy - Output Rule Order\"",
                "form-variables": [
                    {
                        "ref": "Holidays",
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
                        "ref": "Holiday",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Holiday",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "YearOfHolidays",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Date",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ],
                "subject": "\"Output Order Hit Policy\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "\"Output Order Hit Policy Update\"",
                "pre-processor": "$pm.addMemVariable(\"Holidays\",MultiCustomObj1.data);\n$pm.addMemVariable(\"Holiday\",MultiCustomObj1.data[0].Holidays);\n$pm.addMemVariable(\"YearOfHolidays\",MultiCustomObj1.data[0].YearOfHolidays);",
                "notify-type": "Message Only"
            },
            "name": "Notify User",
            "id": "UserTask_a8ywst",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_8f8svd",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_5vqy88",
                    "Bounds": {
                        "cx": 865,
                        "cy": 295.5,
                        "x": 847,
                        "width": 36,
                        "y": 266,
                        "height": 59
                    },
                    "id": "EndEvent_5vqy88_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1ibrvjt",
                    "Bounds": {
                        "cx": 404,
                        "cy": 253.99999237060547,
                        "x": 327.0199966430664,
                        "width": 153.9600067138672,
                        "y": 215.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1ibrvjt_ve"
                },
                {
                    "bpmnElement": "StartEvent_1nr6pc1",
                    "Bounds": {
                        "cx": 196,
                        "cy": 252.5,
                        "x": 178,
                        "width": 36,
                        "y": 223,
                        "height": 59
                    },
                    "id": "StartEvent_1nr6pc1_ve"
                },
                {
                    "bpmnElement": "UserTask_a8ywst",
                    "Bounds": {
                        "cx": 641,
                        "cy": 266.99999237060547,
                        "x": 564.0199966430664,
                        "width": 153.9600067138672,
                        "y": 228.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_a8ywst_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "214",
                            "y": "241"
                        },
                        {
                            "x": "270.5099983215332",
                            "y": "241"
                        },
                        {
                            "x": "270.5099983215332",
                            "y": "253.99999145507812"
                        },
                        {
                            "x": "327.0199966430664",
                            "y": "253.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1aepwze",
                    "id": "SequenceFlow_1aepwze_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "480.97999664306644",
                            "y": "253.99999145507812"
                        },
                        {
                            "x": "522.4999966430664",
                            "y": "253.99999145507812"
                        },
                        {
                            "x": "522.4999966430664",
                            "y": "266.99999145507815"
                        },
                        {
                            "x": "564.0199966430664",
                            "y": "266.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1o8a7cs",
                    "id": "SequenceFlow_1o8a7cs_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "717.9799966430664",
                            "y": "266.99999145507815"
                        },
                        {
                            "x": "782.4899983215332",
                            "y": "266.99999145507815"
                        },
                        {
                            "x": "782.4899983215332",
                            "y": "284"
                        },
                        {
                            "x": "847",
                            "y": "284"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_zt1qhv",
                    "id": "SequenceFlow_zt1qhv_ve"
                }
            ]
        },
        "id": "Process_8f8svd_ve"
    },
    "collaboration": {}
}