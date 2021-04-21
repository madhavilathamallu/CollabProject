{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1egkck3",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_18cxthe",
                "sourceRef": "StartEvent_1pucloc",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_ekb389",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_48rzbj",
                "sourceRef": "BusinessRuleTask_1egkck3",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_yderoh",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_210jya",
                "sourceRef": "UserTask_ekb389",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_210jya",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_yderoh",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_48rzbj",
            "incoming": "SequenceFlow_18cxthe",
            "businessProp": {
                "output": "response",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/com.db.multiobjects.model/com.db.multiobjects.decisiontable",
                "parameters-collaps": [
                    {
                        "reference": "DBMultiInput1",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "DBMultiInput1",
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
                                "parentRef": "DBMultiInput1"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "DBMultiInput1"
                            }
                        ],
                        "listType": "inputList"
                    },
                    {
                        "reference": "DBMultiInput2",
                        "configurations": {
                            "showDelButton": false,
                            "showAddButton": false
                        },
                        "groupLabel": "DBMultiInput2",
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
                                "parentRef": "DBMultiInput2"
                            },
                            {
                                "reference": "value",
                                "type": "inputWithoutLable",
                                "events": {},
                                "parentRef": "DBMultiInput2"
                            }
                        ],
                        "listType": "inputList"
                    }
                ],
                "decision-model": "{\"name\":\"dbmultiobjects.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":15356,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"com.db.multiobjects\",\"content\":null,\"id\":\"f8bf11a9-e4f1-41ab-8c0c-7a89f5003d2c\",\"createdOn\":\"2021-02-06T13:04:28.964+05:30\",\"modifiedOn\":\"2021-02-06T13:04:29.117+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "com.db.multiobjects.model",
                "DBMultiInput1": [
                    {
                        "name": "name",
                        "objectName": "DBMultiInput1",
                        "type": null,
                        "value": "name"
                    },
                    {
                        "name": "dob",
                        "objectName": "DBMultiInput1",
                        "type": null,
                        "value": "dob"
                    }
                ],
                "DBMultiInput2": [
                    {
                        "name": "Citizenship",
                        "objectName": "DBMultiInput2",
                        "type": null,
                        "value": "citizen"
                    },
                    {
                        "name": "age",
                        "objectName": "DBMultiInput2",
                        "type": null,
                        "value": "age"
                    }
                ],
                "parameters": [
                    {
                        "name": "name",
                        "objectName": "DBMultiInput1",
                        "type": null,
                        "value": "name"
                    },
                    {
                        "name": "dob",
                        "objectName": "DBMultiInput1",
                        "type": null,
                        "value": "dob"
                    },
                    {
                        "name": "Citizenship",
                        "objectName": "DBMultiInput2",
                        "type": null,
                        "value": "citizen"
                    },
                    {
                        "name": "age",
                        "objectName": "DBMultiInput2",
                        "type": null,
                        "value": "age"
                    }
                ],
                "decisiontable-id": "com.db.multiobjects.decisiontable"
            },
            "name": "bizMulti",
            "id": "BusinessRuleTask_1egkck3",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_18cxthe",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1pucloc",
            "type": "bpmn:startEvent"
        },
        "id": "Process_14uq1rx",
        "userTask": {
            "outgoing": "SequenceFlow_210jya",
            "incoming": "SequenceFlow_48rzbj",
            "businessProp": {
                "formType": "Custom",
                "fromUser": "\"Admin\"",
                "form-variables": [
                    {
                        "ref": "a",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Status",
                        "fieldtype": "Input",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "b",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Rating",
                        "fieldtype": "Input",
                        "type": "number",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ],
                "subject": "\"Test-Test\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Expression",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "\"Multiple Input Output Formats\"",
                "pre-processor": "$pm.addMemVariable(\"a\", response.data.status);\n$pm.addMemVariable(\"b\", response.data.Rating);",
                "notify-type": "Message Only",
                "assignee-exp": "\"test\""
            },
            "name": "UserTask",
            "id": "UserTask_ekb389",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_14uq1rx",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_yderoh",
                    "Bounds": {
                        "cx": 738,
                        "cy": 278,
                        "x": 720,
                        "width": 36,
                        "y": 248.5,
                        "height": 59
                    },
                    "id": "EndEvent_yderoh_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1egkck3",
                    "Bounds": {
                        "cx": 344,
                        "cy": 266.50000762939453,
                        "x": 267.0199966430664,
                        "width": 153.9600067138672,
                        "y": 228.3350067138672,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1egkck3_ve"
                },
                {
                    "bpmnElement": "StartEvent_1pucloc",
                    "Bounds": {
                        "cx": 166,
                        "cy": 279.5,
                        "x": 148,
                        "width": 36,
                        "y": 250,
                        "height": 59
                    },
                    "id": "StartEvent_1pucloc_ve"
                },
                {
                    "bpmnElement": "UserTask_ekb389",
                    "Bounds": {
                        "cx": 572,
                        "cy": 266.50000762939453,
                        "x": 495.0199966430664,
                        "width": 153.9600067138672,
                        "y": 228.3350067138672,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_ekb389_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "184",
                            "y": "268"
                        },
                        {
                            "x": "225.5099983215332",
                            "y": "268"
                        },
                        {
                            "x": "225.5099983215332",
                            "y": "266.5000067138672"
                        },
                        {
                            "x": "267.0199966430664",
                            "y": "266.5000067138672"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_18cxthe",
                    "id": "SequenceFlow_18cxthe_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "420.97999664306644",
                            "y": "266.5000067138672"
                        },
                        {
                            "x": "495.0199966430664",
                            "y": "266.5000067138672"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_48rzbj",
                    "id": "SequenceFlow_48rzbj_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "648.9799966430664",
                            "y": "266.5000067138672"
                        },
                        {
                            "x": "720",
                            "y": "266.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_210jya",
                    "id": "SequenceFlow_210jya_ve"
                }
            ]
        },
        "id": "Process_14uq1rx_ve"
    },
    "collaboration": {}
}