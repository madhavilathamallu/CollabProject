{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1y61fh2",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_nggd7l",
                "sourceRef": "StartEvent_re9d6s",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_16ky4cb",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_13dqo8a",
                "sourceRef": "UserTask_nu94s9",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_nu94s9",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_trmmyo",
                "sourceRef": "BusinessRuleTask_1y61fh2",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": {
            "incoming": "SequenceFlow_13dqo8a",
            "businessProp": {},
            "name": "End",
            "id": "EndEvent_16ky4cb",
            "type": "bpmn:endEvent"
        },
        "businessRuleTask": {
            "outgoing": "SequenceFlow_trmmyo",
            "incoming": "SequenceFlow_nggd7l",
            "businessProp": {
                "output": "SingleDBObj1",
                "PackageEligibilityInput": [
                    {
                        "name": "StudentGPA",
                        "objectName": "PackageEligibilityInput",
                        "type": null,
                        "value": "gpa"
                    },
                    {
                        "name": "ExtraActivitiesCount",
                        "objectName": "PackageEligibilityInput",
                        "type": null,
                        "value": "activitycount"
                    },
                    {
                        "name": "NHSMembership",
                        "objectName": "PackageEligibilityInput",
                        "type": null,
                        "value": "nhs"
                    }
                ],
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Single.DB.RuleOrder.model/IOFormat.Single.DB.RuleOrder.decisiontable",
                "parameters-collaps": [{
                    "reference": "PackageEligibilityInput",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "PackageEligibilityInput",
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
                            "parentRef": "PackageEligibilityInput"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "PackageEligibilityInput"
                        }
                    ],
                    "listType": "inputList"
                }],
                "decision-model": "{\"name\":\"RuleOrderHitPolicyTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":10879,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Single.DB.RuleOrder\",\"content\":null,\"id\":\"cc58943b-06c6-4090-a7cc-ab5a35ca6229\",\"createdOn\":\"2021-02-06T13:04:29.654+05:30\",\"modifiedOn\":\"2021-02-06T13:04:29.755+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "IOFormat.Single.DB.RuleOrder.model",
                "parameters": [
                    {
                        "name": "StudentGPA",
                        "objectName": "PackageEligibilityInput",
                        "type": null,
                        "value": "gpa"
                    },
                    {
                        "name": "ExtraActivitiesCount",
                        "objectName": "PackageEligibilityInput",
                        "type": null,
                        "value": "activitycount"
                    },
                    {
                        "name": "NHSMembership",
                        "objectName": "PackageEligibilityInput",
                        "type": null,
                        "value": "nhs"
                    }
                ],
                "decisiontable-id": "IOFormat.Single.DB.RuleOrder.decisiontable"
            },
            "name": "RuleOrderBizTask",
            "id": "BusinessRuleTask_1y61fh2",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "startEvent": {
            "outgoing": "SequenceFlow_nggd7l",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_re9d6s",
            "type": "bpmn:startEvent"
        },
        "id": "Process_3sz4mw",
        "userTask": {
            "outgoing": "SequenceFlow_13dqo8a",
            "incoming": "SequenceFlow_trmmyo",
            "businessProp": {
                "assignee-role": {
                    "roleMeta": "",
                    "roleName": "Role1",
                    "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                },
                "formType": "Custom",
                "fromUser": "\"Hit Policy Rule Order\"",
                "form-variables": [{
                    "ref": "Package",
                    "regex": "",
                    "default-value": "",
                    "readonly": false,
                    "label": "Result",
                    "fieldtype": "Text Area",
                    "type": "string",
                    "mandatory": true,
                    "errormsg": ""
                }],
                "subject": "\"Rule Order Hit Policy\"",
                "form-url-type": "\"\"",
                "body-replace-strings": [],
                "form-url": "\"\"",
                "assignee-type": "Role",
                "existingForm": "",
                "email-type": "text/html",
                "attribute-references": [],
                "form-url-helper": "\"\"",
                "formName": "\"Rule Order Hit Policy\"",
                "pre-processor": "$pm.addMemVariable(\"Package\",SingleDBObj1.data);",
                "notify-type": "Message Only"
            },
            "name": "Notify User",
            "id": "UserTask_nu94s9",
            "type": "bpmn:userTask",
            "events": []
        }
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_3sz4mw",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_16ky4cb",
                    "Bounds": {
                        "cx": 863,
                        "cy": 342,
                        "x": 845,
                        "width": 36,
                        "y": 312.5,
                        "height": 59
                    },
                    "id": "EndEvent_16ky4cb_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1y61fh2",
                    "Bounds": {
                        "cx": 345.99999237060547,
                        "cy": 374.99999237060547,
                        "x": 269.0199890136719,
                        "width": 153.9600067138672,
                        "y": 336.8349914550781,
                        "height": 76.33000183105469
                    },
                    "id": "BusinessRuleTask_1y61fh2_ve"
                },
                {
                    "bpmnElement": "StartEvent_re9d6s",
                    "Bounds": {
                        "cx": 149,
                        "cy": 289.5,
                        "x": 131,
                        "width": 36,
                        "y": 260,
                        "height": 59
                    },
                    "id": "StartEvent_re9d6s_ve"
                },
                {
                    "bpmnElement": "UserTask_nu94s9",
                    "Bounds": {
                        "cx": 610.0000228881836,
                        "cy": 227.99999237060547,
                        "x": 533.02001953125,
                        "width": 153.9600067138672,
                        "y": 189.83499145507812,
                        "height": 76.33000183105469
                    },
                    "id": "UserTask_nu94s9_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "167",
                            "y": "278"
                        },
                        {
                            "x": "218.00999450683594",
                            "y": "278"
                        },
                        {
                            "x": "218.00999450683594",
                            "y": "374.99999145507815"
                        },
                        {
                            "x": "269.0199890136719",
                            "y": "374.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_nggd7l",
                    "id": "SequenceFlow_nggd7l_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "686.98001953125",
                            "y": "227.99999145507812"
                        },
                        {
                            "x": "765.990009765625",
                            "y": "227.99999145507812"
                        },
                        {
                            "x": "765.990009765625",
                            "y": "330.5"
                        },
                        {
                            "x": "845",
                            "y": "330.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_13dqo8a",
                    "id": "SequenceFlow_13dqo8a_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "422.9799890136719",
                            "y": "374.99999145507815"
                        },
                        {
                            "x": "478.00000427246096",
                            "y": "374.99999145507815"
                        },
                        {
                            "x": "478.00000427246096",
                            "y": "227.99999145507812"
                        },
                        {
                            "x": "533.02001953125",
                            "y": "227.99999145507812"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_trmmyo",
                    "id": "SequenceFlow_trmmyo_ve"
                }
            ]
        },
        "id": "Process_3sz4mw_ve"
    },
    "collaboration": {}
}