{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1cug4dk",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_adakuv",
                "sourceRef": "StartEvent_1vhboup",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1dcs7cs",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1s66nsy",
                "sourceRef": "BusinessRuleTask_1cug4dk",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_1brknn0",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1a9lr9t",
                "sourceRef": "UserTask_1dcs7cs",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_1a9lr9t",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_1brknn0",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_1s66nsy",
            "incoming": "SequenceFlow_adakuv",
            "businessProp": {
                "output": "MultiDBObj",
                "AdvertisementInputs": [
                    {
                        "name": "dob",
                        "objectName": "AdvertisementInputs",
                        "type": null,
                        "value": "dob1"
                    },
                    {
                        "name": "Citizenship",
                        "objectName": "AdvertisementInputs",
                        "type": null,
                        "value": "citizen1"
                    },
                    {
                        "name": "age",
                        "objectName": "AdvertisementInputs",
                        "type": null,
                        "value": "age1"
                    }
                ],
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Multiple.DB.Collect.model/IOFormat.Multiple.DB.Collect.decisiontable",
                "parameters-collaps": [
                    {
                        "reference": "AdvertisementInputs",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "AdvertisementInputs",
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
                                "parentRef": "AdvertisementInputs"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "AdvertisementInputs"
                            }
                        ],
                        "listType": "inputList"
                    },
                    {
                        "reference": "AdvertisementInputs2",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "AdvertisementInputs2",
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
                                "parentRef": "AdvertisementInputs2"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "AdvertisementInputs2"
                            }
                        ],
                        "listType": "inputList"
                    }
                ],
                "decision-model": "{\"name\":\"CollectPolicyTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":16698,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Multiple.DB.Collect\",\"content\":null,\"id\":\"d3ed7605-97cb-442c-987b-fd2e87a8b2e8\",\"createdOn\":\"2021-02-06T13:04:28.765+05:30\",\"modifiedOn\":\"2021-02-06T13:04:28.904+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "IOFormat.Multiple.DB.Collect.model",
                "parameters": [
                    {
                        "name": "dob",
                        "objectName": "AdvertisementInputs",
                        "type": null,
                        "value": "dob1"
                    },
                    {
                        "name": "Citizenship",
                        "objectName": "AdvertisementInputs",
                        "type": null,
                        "value": "citizen1"
                    },
                    {
                        "name": "age",
                        "objectName": "AdvertisementInputs",
                        "type": null,
                        "value": "age1"
                    },
                    {
                        "name": "IncomeStatus",
                        "objectName": "AdvertisementInputs2",
                        "type": null,
                        "value": "income"
                    }
                ],
                "AdvertisementInputs2": [{
                    "name": "IncomeStatus",
                    "objectName": "AdvertisementInputs2",
                    "type": null,
                    "value": "income"
                }],
                "decisiontable-id": "IOFormat.Multiple.DB.Collect.decisiontable"
            },
            "name": "AdvertisementBizTask",
            "id": "BusinessRuleTask_1cug4dk",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_adakuv",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1vhboup",
            "type": "bpmn:startEvent"
        },
        "id": "Process_757ncp",
        "userTask": {
            "outgoing": "SequenceFlow_1a9lr9t",
            "incoming": "SequenceFlow_1s66nsy",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "Role1",
                    "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "formType": "Custom",
                "fromUser": "\"Collect Hit Policy\"",
                "form-variables": [
                    {
                        "ref": "Advt",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Advertisement Object",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "Rating",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Rating",
                        "fieldtype": "Text Area",
                        "type": "number",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "Objects",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Objects",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "status",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Status",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ],
                "subject": "\"Collect Hit Policy Update\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "\"Collect Hit Policy\"",
                "pre-processor": "$pm.addMemVariable(\"Advt\",MultiDBObj.data);\n$pm.addMemVariable(\"Rating\",MultiDBObj.data[0].Rating);\n$pm.addMemVariable(\"Objects\",MultiDBObj.data[0].Objects);\n$pm.addMemVariable(\"status\",MultiDBObj.data[0].status);\n\n",
                "notify-type": "Message Only"
            },
            "name": "NotfyUser",
            "id": "UserTask_1dcs7cs",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_757ncp",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_1brknn0",
                    "Bounds": {
                        "cx": 775,
                        "cy": 329.5,
                        "x": 757,
                        "width": 36,
                        "y": 300,
                        "height": 59
                    },
                    "id": "EndEvent_1brknn0_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1cug4dk",
                    "Bounds": {
                        "cx": 307,
                        "cy": 303.99999237060547,
                        "x": 230.0199966430664,
                        "width": 153.9600067138672,
                        "y": 265.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1cug4dk_ve"
                },
                {
                    "bpmnElement": "StartEvent_1vhboup",
                    "Bounds": {
                        "cx": 136,
                        "cy": 297.5,
                        "x": 118,
                        "width": 36,
                        "y": 268,
                        "height": 59
                    },
                    "id": "StartEvent_1vhboup_ve"
                },
                {
                    "bpmnElement": "UserTask_1dcs7cs",
                    "Bounds": {
                        "cx": 551,
                        "cy": 303.99999237060547,
                        "x": 474.0199966430664,
                        "width": 153.9600067138672,
                        "y": 265.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_1dcs7cs_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "154",
                            "y": "286"
                        },
                        {
                            "x": "192.0099983215332",
                            "y": "286"
                        },
                        {
                            "x": "192.0099983215332",
                            "y": "303.99999145507815"
                        },
                        {
                            "x": "230.0199966430664",
                            "y": "303.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_adakuv",
                    "id": "SequenceFlow_adakuv_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "383.97999664306644",
                            "y": "303.99999145507815"
                        },
                        {
                            "x": "474.0199966430664",
                            "y": "303.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1s66nsy",
                    "id": "SequenceFlow_1s66nsy_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "627.9799966430664",
                            "y": "303.99999145507815"
                        },
                        {
                            "x": "692.4899983215332",
                            "y": "303.99999145507815"
                        },
                        {
                            "x": "692.4899983215332",
                            "y": "318"
                        },
                        {
                            "x": "757",
                            "y": "318"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1a9lr9t",
                    "id": "SequenceFlow_1a9lr9t_ve"
                }
            ]
        },
        "id": "Process_757ncp_ve"
    },
    "collaboration": {}
}