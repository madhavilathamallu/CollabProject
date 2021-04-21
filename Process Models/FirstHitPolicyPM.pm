{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1d94zbs",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_t5k06b",
                "sourceRef": "StartEvent_110dymj",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_qzsevs",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_17aemnb",
                "sourceRef": "BusinessRuleTask_1d94zbs",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_l0d61r",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_12iuspz",
                "sourceRef": "UserTask_qzsevs",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_12iuspz",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_l0d61r",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_17aemnb",
            "incoming": "SequenceFlow_t5k06b",
            "businessProp": {
                "output": "SingleCustomObj",
                "AdvertInput1": [
                    {
                        "name": "Income",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "income1"
                    },
                    {
                        "name": "age",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "age2"
                    },
                    {
                        "name": "children",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "children"
                    },
                    {
                        "name": "dob",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "dob2"
                    }
                ],
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Single.Custom.First.model/IOFormat.Single.Custom.First.decisiontable",
                "parameters-collaps": [{
                    "reference": "AdvertInput1",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "AdvertInput1",
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
                            "parentRef": "AdvertInput1"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "AdvertInput1"
                        }
                    ],
                    "listType": "inputList"
                }],
                "decision-model": "{\"name\":\"FirstHitPolicyTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":11952,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Single.Custom.First\",\"content\":null,\"id\":\"fb8fa879-a1c3-4118-babe-8647366e4240\",\"createdOn\":\"2021-02-06T13:04:29.171+05:30\",\"modifiedOn\":\"2021-02-06T13:04:29.253+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "IOFormat.Single.Custom.First.model",
                "parameters": [
                    {
                        "name": "Income",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "income1"
                    },
                    {
                        "name": "age",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "age2"
                    },
                    {
                        "name": "children",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "children"
                    },
                    {
                        "name": "dob",
                        "objectName": "AdvertInput1",
                        "type": null,
                        "value": "dob2"
                    }
                ],
                "decisiontable-id": "IOFormat.Single.Custom.First.decisiontable"
            },
            "name": "FirstBiztask",
            "id": "BusinessRuleTask_1d94zbs",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_t5k06b",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_110dymj",
            "type": "bpmn:startEvent"
        },
        "id": "Process_5oh62y",
        "userTask": {
            "outgoing": "SequenceFlow_12iuspz",
            "incoming": "SequenceFlow_17aemnb",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "Role1",
                    "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "formType": "Custom",
                "fromUser": "\"FirstHitPolicy\"",
                "form-variables": [
                    {
                        "ref": "Ad",
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
                        "ref": "AdvertisedObjects",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "AdvertisedObjects",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "children",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "children",
                        "fieldtype": "Input",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    },
                    {
                        "ref": "DOB",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Dob",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }
                ],
                "subject": "\"Hit Policy - First\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "\"First Hit Policy\"",
                "pre-processor": "$pm.addMemVariable(\"Ad\",SingleCustomObj.data);\n$pm.addMemVariable(\"AdvertisedObjects\",SingleCustomObj.data.AdvertisedObjects);\n$pm.addMemVariable(\"Children\",SingleCustomObj.data.children);\n$pm.addMemVariable(\"DOB\",SingleCustomObj.data.dob);",
                "notify-type": "Message Only"
            },
            "name": "NotifyUser",
            "id": "UserTask_qzsevs",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_5oh62y",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_l0d61r",
                    "Bounds": {
                        "cx": 793,
                        "cy": 302,
                        "x": 775,
                        "width": 36,
                        "y": 272.5,
                        "height": 59
                    },
                    "id": "EndEvent_l0d61r_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1d94zbs",
                    "Bounds": {
                        "cx": 298,
                        "cy": 300.99999237060547,
                        "x": 221.0199966430664,
                        "width": 153.9600067138672,
                        "y": 262.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1d94zbs_ve"
                },
                {
                    "bpmnElement": "StartEvent_110dymj",
                    "Bounds": {
                        "cx": 140,
                        "cy": 303.5,
                        "x": 122,
                        "width": 36,
                        "y": 274,
                        "height": 59
                    },
                    "id": "StartEvent_110dymj_ve"
                },
                {
                    "bpmnElement": "UserTask_qzsevs",
                    "Bounds": {
                        "cx": 540,
                        "cy": 300.99999237060547,
                        "x": 463.0199966430664,
                        "width": 153.9600067138672,
                        "y": 262.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_qzsevs_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "158",
                            "y": "292"
                        },
                        {
                            "x": "189.5099983215332",
                            "y": "292"
                        },
                        {
                            "x": "189.5099983215332",
                            "y": "300.99999145507815"
                        },
                        {
                            "x": "221.0199966430664",
                            "y": "300.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_t5k06b",
                    "id": "SequenceFlow_t5k06b_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "374.97999664306644",
                            "y": "300.99999145507815"
                        },
                        {
                            "x": "463.0199966430664",
                            "y": "300.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_17aemnb",
                    "id": "SequenceFlow_17aemnb_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "616.9799966430664",
                            "y": "300.99999145507815"
                        },
                        {
                            "x": "695.9899983215332",
                            "y": "300.99999145507815"
                        },
                        {
                            "x": "695.9899983215332",
                            "y": "290.5"
                        },
                        {
                            "x": "775",
                            "y": "290.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_12iuspz",
                    "id": "SequenceFlow_12iuspz_ve"
                }
            ]
        },
        "id": "Process_5oh62y_ve"
    },
    "collaboration": {}
}