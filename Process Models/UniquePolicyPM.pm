{
    "process": {
        "sequenceFlow": [
            {
                "targetRef": "BusinessRuleTask_1qfvn8v",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_o14gmo",
                "sourceRef": "StartEvent_1rmzydr",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1jxsrxy",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1fri8ux",
                "sourceRef": "ServiceTask_gdhtlx",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_q2vyra",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1hy5v5n",
                "sourceRef": "UserTask_1jxsrxy",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ExclusiveGateway_1vrru7v",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1kjokvh",
                "sourceRef": "BusinessRuleTask_1qfvn8v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_gdhtlx",
                "businessProp": {"condition": "singleDBBizObj.data ==  \"Not Eligible\""},
                "name": "codition1",
                "id": "SequenceFlow_y5zpfv",
                "sourceRef": "ExclusiveGateway_1vrru7v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ServiceTask_a1jrr3",
                "businessProp": {"condition": "singleDBBizObj.data ==  \"Eligible\""},
                "name": "condition2",
                "id": "SequenceFlow_1i2gnfo",
                "sourceRef": "ExclusiveGateway_1vrru7v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "UserTask_1xnhokj",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_si41h5",
                "sourceRef": "ServiceTask_a1jrr3",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_q2vyra",
                "businessProp": {},
                "name": "",
                "id": "SequenceFlow_1oevike",
                "sourceRef": "UserTask_1xnhokj",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "ExclusiveGateway_6empno",
                "businessProp": {"condition": "singleDBBizObj.data == \"{}\""},
                "name": "check",
                "id": "SequenceFlow_1lwtnsf",
                "sourceRef": "ExclusiveGateway_1vrru7v",
                "type": "bpmn:sequenceFlow"
            },
            {
                "targetRef": "EndEvent_99k2a6",
                "businessProp": {"condition": "singleDBBizObj.data == \"{}\""},
                "name": "checknull",
                "id": "SequenceFlow_1h2d6zo",
                "sourceRef": "ExclusiveGateway_6empno",
                "type": "bpmn:sequenceFlow"
            }
        ],
        "endEvent": [
            {
                "incoming": [
                    "SequenceFlow_1hy5v5n",
                    "SequenceFlow_1oevike"
                ],
                "businessProp": {},
                "name": "End",
                "id": "EndEvent_q2vyra",
                "type": "bpmn:endEvent"
            },
            {
                "incoming": "SequenceFlow_1h2d6zo",
                "businessProp": {},
                "name": "End",
                "id": "EndEvent_99k2a6",
                "type": "bpmn:endEvent"
            }
        ],
        "businessRuleTask": {
            "outgoing": "SequenceFlow_1kjokvh",
            "incoming": "SequenceFlow_o14gmo",
            "businessProp": {
                "output": "singleDBBizObj",
                "businessRulePlaceholderUrl": "{{HOST}}/rest/decisiontable/{{CONTEXT}}/{{APPLICATION}}/IOFormat.Single.DB.Unique.model/IOFormat.Single.DB.Unique.decisiontable",
                "parameters-collaps": [{
                    "reference": "ApplicantDetails",
                    "configurations": {
                        "showDelButton": false,
                        "showAddButton": false
                    },
                    "groupLabel": "ApplicantDetails",
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
                            "parentRef": "ApplicantDetails"
                        },
                        {
                            "reference": "value",
                            "type": "inputWithoutLable",
                            "events": {},
                            "parentRef": "ApplicantDetails"
                        }
                    ],
                    "listType": "inputList"
                }],
                "decision-model": "{\"name\":\"UniquePolicyTest.dm\",\"type\":17,\"parentName\":\"Decision Models\",\"location\":\"/DecisionServicesIOFormat/Decision Models\",\"properties\":{},\"meta\":null,\"size\":10491,\"errorMessage\":null,\"parentId\":\"80102bbd-19d7-4a4c-88b4-14b9ecc87976\",\"projectId\":\"fe155aac-c2c6-4498-9142-60ac07952c61\",\"referenceId\":null,\"namespaceId\":\"IOFormat.Single.DB.Unique\",\"content\":null,\"id\":\"6cda7f86-6733-45f6-99d8-f1a5ddd6c151\",\"createdOn\":\"2021-02-06T13:04:29.806+05:30\",\"modifiedOn\":\"2021-02-06T13:04:29.895+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}",
                "decisionmodel-id": "IOFormat.Single.DB.Unique.model",
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
                "inputbiz1": [
                    {
                        "name": "name",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    },
                    {
                        "name": "age",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    },
                    {
                        "name": "dob",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    },
                    {
                        "name": "passfail",
                        "objectName": "inputbiz1",
                        "type": null,
                        "value": null
                    }
                ],
                "parameters": [
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
                "decisiontable-id": "IOFormat.Single.DB.Unique.decisiontable"
            },
            "name": "PolicyEligibleCheck",
            "id": "BusinessRuleTask_1qfvn8v",
            "type": "bpmn:businessRuleTask",
            "events": []
        },
        "serviceTask": [
            {
                "outgoing": "SequenceFlow_1fri8ux",
                "incoming": "SequenceFlow_y5zpfv",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/updateDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/deleteDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertDMdatatypeTest",
                            "selectAllDMdatatypeTest",
                            "updateDMdatatypeTest",
                            "deleteDMdatatypeTest",
                            "selectDMdatatypeTest"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/DMDB/insertDMdatatypeTest\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/DMDB/insertDMdatatypeTest\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "insert",
                    "data-source": "{\"name\":\"DMDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2\",\"createdOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "pre-processor": "$pm.addMemVariable(\"Status\",singleDBBizObj.data);\n\n\n ",
                    "data-source-function": "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "insertDB",
                "id": "ServiceTask_gdhtlx",
                "type": "bpmn:serviceTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_si41h5",
                "incoming": "SequenceFlow_1i2gnfo",
                "businessProp": {
                    "headers": [{
                        "value": "\"application/x-www-form-urlencoded\"",
                        "key": "Content-Type",
                        "allowOverride": false
                    }],
                    "method": "POST",
                    "data-source-function-data": {
                        "values": [
                            "",
                            "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectAllDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectAllDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"updateDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"PUT\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/updateDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"deleteDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"DELETE\",\"dataType\":2,\"body\":[],\"parameters\":[]},\"functionUrl\":\"/deleteDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                            "{\"name\":\"selectDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"GET\",\"dataType\":2,\"body\":[],\"parameters\":[{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"limit\",\"allowOverride\":true,\"advance\":\"limit\"},{\"paramLocation\":3,\"type\":\"Query\",\"value\":\"\",\"key\":\"offset\",\"allowOverride\":true,\"advance\":\"offset\"}]},\"functionUrl\":\"/selectDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}"
                        ],
                        "options": [
                            "Select",
                            "insertDMdatatypeTest",
                            "selectAllDMdatatypeTest",
                            "updateDMdatatypeTest",
                            "deleteDMdatatypeTest",
                            "selectDMdatatypeTest"
                        ]
                    },
                    "placeHolderUrl": "\"{{HOST}}/rest/webservices/{{CONTEXT}}/{{APPLICATION}}/DMDB/insertDMdatatypeTest\"",
                    "parameters-body": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "data-type": 2,
                    "url": "\"http://localhost:3030/rest/webservices/context/application/DMDB/insertDMdatatypeTest\"",
                    "proxy": "false",
                    "bodyFormData": [
                        {
                            "paramLocation": 1,
                            "value": "name",
                            "key": "name",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "01-01-2020",
                            "key": "dob",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "citizen",
                            "key": "Citizenship",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "age",
                            "key": "age",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "Status",
                            "key": "status",
                            "allowOverride": true
                        },
                        {
                            "paramLocation": 1,
                            "value": "0",
                            "key": "Rating",
                            "allowOverride": true
                        }
                    ],
                    "port": "",
                    "response": "insert1",
                    "data-source": "{\"name\":\"DMDB\",\"datasourceType\":0,\"tenantId\":null,\"contextId\":null,\"applicationId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"applicationVersionId\":null,\"datasourceProperties\":null,\"id\":\"7bdabfaf-f8f3-4683-b403-06cdf1e0e1f2\",\"createdOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedOn\":\"2020-12-07T15:29:40.283+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"datasourceMeta\":null}",
                    "reqType": "formData",
                    "host": "",
                    "pre-processor": "$pm.addMemVariable(\"Status\",singleDBBizObj.data);\n",
                    "data-source-function": "{\"name\":\"insertDMdatatypeTest\",\"functionProperties\":{\"headers\":[{\"value\":\"application/x-www-form-urlencoded\",\"key\":\"Content-Type\",\"allowOverride\":false}],\"method\":\"POST\",\"dataType\":2,\"body\":[{\"paramLocation\":1,\"value\":\"\",\"key\":\"name\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"dob\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Citizenship\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"age\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"status\",\"allowOverride\":true},{\"paramLocation\":1,\"value\":\"\",\"key\":\"Rating\",\"allowOverride\":true}],\"parameters\":[]},\"functionUrl\":\"/insertDMdatatypeTest\",\"baseUrl\":\"/DMDB\",\"datasourceType\":0}",
                    "parameters": []
                },
                "name": "insertdbdata",
                "id": "ServiceTask_a1jrr3",
                "type": "bpmn:serviceTask",
                "events": []
            }
        ],
        "exclusiveGateway": [
            {
                "outgoing": [
                    "SequenceFlow_y5zpfv",
                    "SequenceFlow_1i2gnfo",
                    "SequenceFlow_1lwtnsf"
                ],
                "incoming": "SequenceFlow_1kjokvh",
                "businessProp": {},
                "name": "check",
                "id": "ExclusiveGateway_1vrru7v",
                "type": "bpmn:exclusiveGateway"
            },
            {
                "outgoing": "SequenceFlow_1h2d6zo",
                "incoming": "SequenceFlow_1lwtnsf",
                "businessProp": {},
                "name": "nullCheck",
                "id": "ExclusiveGateway_6empno",
                "type": "bpmn:exclusiveGateway"
            }
        ],
        "startEvent": {
            "outgoing": "SequenceFlow_o14gmo",
            "businessProp": {
                "defaultPriority": "Low",
                "due-date": false,
                "due-date-type": "Custom",
                "priority": false,
                "start-payload-variables": []
            },
            "name": "Start",
            "id": "StartEvent_1rmzydr",
            "type": "bpmn:startEvent"
        },
        "id": "Process_12ezt7",
        "userTask": [
            {
                "outgoing": "SequenceFlow_1hy5v5n",
                "incoming": "SequenceFlow_1fri8ux",
                "businessProp": {
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Role1",
                        "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                    },
                    "formType": "Custom",
                    "fromUser": "\"Super Admin\"",
                    "form-variables": [{
                        "ref": "Status",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Policy Suggested",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }],
                    "subject": "\"Policy - not Eligible\"",
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "Unique Hit Policy Output",
                    "pre-processor": "$pm.addMemVariable(\"Status\",singleDBBizObj.data);",
                    "notify-type": "Message Only"
                },
                "name": "Notify User",
                "id": "UserTask_1jxsrxy",
                "type": "bpmn:userTask",
                "events": []
            },
            {
                "outgoing": "SequenceFlow_1oevike",
                "incoming": "SequenceFlow_si41h5",
                "businessProp": {
                    "assignee-role": {
                        "roleMeta": "",
                        "roleName": "Role1",
                        "actualData": "{\"name\":\"Role1.role\",\"type\":14,\"parentName\":\"App Roles\",\"location\":\"/inputoutputformat/App Roles\",\"properties\":{},\"meta\":null,\"size\":0,\"errorMessage\":null,\"parentId\":null,\"projectId\":\"15f06cbc-5e0b-478d-bd67-1d15f8983ae0\",\"referenceId\":\"b9be86be-c554-4f44-9e91-5613653209e3\",\"namespaceId\":null,\"content\":null,\"id\":\"3ae595c1-aa57-4161-9a41-96c29e47360d\",\"createdOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedOn\":\"2020-12-08T18:26:10.367+05:30\",\"modifiedBy\":null,\"createdBy\":null,\"rolePack\":null,\"buildProgress\":false,\"contentAsString\":\"\",\"contentAsBytes\":null}"
                    },
                    "formType": "Custom",
                    "fromUser": "\"Policy Update\"",
                    "form-variables": [{
                        "ref": "Status",
                        "regex": "",
                        "default-value": "",
                        "readonly": false,
                        "label": "Policy Suggested",
                        "fieldtype": "Text Area",
                        "type": "string",
                        "mandatory": true,
                        "errormsg": ""
                    }],
                    "subject": "\"Eligible\"",
                    "form-url-type": "\"\"",
                    "body-replace-strings": [],
                    "form-url": "\"\"",
                    "assignee-type": "Role",
                    "existingForm": "",
                    "email-type": "text/html",
                    "attribute-references": [],
                    "form-url-helper": "\"\"",
                    "formName": "Unique Hit Policy Output",
                    "notify-type": "Message Only"
                },
                "name": "NotifyUser",
                "id": "UserTask_1xnhokj",
                "type": "bpmn:userTask",
                "events": []
            }
        ]
    },
    "BPMNDiagram": {
        "bpmnElement": "Process_12ezt7",
        "BPMNPlane": {
            "BPMNShape": [
                {
                    "bpmnElement": "EndEvent_q2vyra",
                    "Bounds": {
                        "cx": 1104,
                        "cy": 236.171875,
                        "x": 1086,
                        "width": 36,
                        "y": 206.5,
                        "height": 59.34375
                    },
                    "id": "EndEvent_q2vyra_ve"
                },
                {
                    "bpmnElement": "BusinessRuleTask_1qfvn8v",
                    "Bounds": {
                        "cx": 258,
                        "cy": 271.49999618530273,
                        "x": 181.0199966430664,
                        "width": 153.9600067138672,
                        "y": 233.33499908447266,
                        "height": 76.32999420166016
                    },
                    "id": "BusinessRuleTask_1qfvn8v_ve"
                },
                {
                    "bpmnElement": "ServiceTask_gdhtlx",
                    "Bounds": {
                        "cx": 481.99999237060547,
                        "cy": 125.99999618530273,
                        "x": 405.0199890136719,
                        "width": 153.9600067138672,
                        "y": 87.83499908447266,
                        "height": 76.32999420166016
                    },
                    "id": "ServiceTask_gdhtlx_ve"
                },
                {
                    "bpmnElement": "ServiceTask_a1jrr3",
                    "Bounds": {
                        "cx": 624,
                        "cy": 301.9999885559082,
                        "x": 547.0199966430664,
                        "width": 153.9600067138672,
                        "y": 263.8349914550781,
                        "height": 76.32999420166016
                    },
                    "id": "ServiceTask_a1jrr3_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_1vrru7v",
                    "Bounds": {
                        "cx": 482,
                        "cy": 290.1640625,
                        "x": 457,
                        "width": 50,
                        "y": 277,
                        "height": 73.671875
                    },
                    "id": "ExclusiveGateway_1vrru7v_ve"
                },
                {
                    "bpmnElement": "StartEvent_1rmzydr",
                    "Bounds": {
                        "cx": 124,
                        "cy": 271.671875,
                        "x": 106,
                        "width": 36,
                        "y": 242,
                        "height": 59.34375
                    },
                    "id": "StartEvent_1rmzydr_ve"
                },
                {
                    "bpmnElement": "UserTask_1jxsrxy",
                    "Bounds": {
                        "cx": 759.0000228881836,
                        "cy": 125.99999618530273,
                        "x": 682.02001953125,
                        "width": 153.9600067138672,
                        "y": 87.83499908447266,
                        "height": 76.32999420166016
                    },
                    "id": "UserTask_1jxsrxy_ve"
                },
                {
                    "bpmnElement": "UserTask_1xnhokj",
                    "Bounds": {
                        "cx": 824,
                        "cy": 301.9999885559082,
                        "x": 747.0199966430664,
                        "width": 153.9600067138672,
                        "y": 263.8349914550781,
                        "height": 76.32999420166016
                    },
                    "id": "UserTask_1xnhokj_ve"
                },
                {
                    "bpmnElement": "ExclusiveGateway_6empno",
                    "Bounds": {
                        "cx": 523.8906329409525,
                        "cy": 430.3281316306438,
                        "x": 499.6015704409525,
                        "width": 52.796875,
                        "y": 417.1640691306438,
                        "height": 73.671875
                    },
                    "id": "ExclusiveGateway_6empno_ve"
                },
                {
                    "bpmnElement": "EndEvent_99k2a6",
                    "Bounds": {
                        "cx": 671.0000103791549,
                        "cy": 455.0000067604081,
                        "x": 653.0000103791549,
                        "width": 36,
                        "y": 425.3281317604081,
                        "height": 59.34375
                    },
                    "id": "EndEvent_99k2a6_ve"
                }
            ],
            "BPMNEdge": [
                {
                    "waypoint": [
                        {
                            "x": "142",
                            "y": "260"
                        },
                        {
                            "x": "161.5099983215332",
                            "y": "260"
                        },
                        {
                            "x": "161.5099983215332",
                            "y": "271.4999990844727"
                        },
                        {
                            "x": "181.0199966430664",
                            "y": "271.4999990844727"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_o14gmo",
                    "id": "SequenceFlow_o14gmo_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "558.9799890136719",
                            "y": "125.99999908447265"
                        },
                        {
                            "x": "682.02001953125",
                            "y": "125.99999908447265"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1fri8ux",
                    "id": "SequenceFlow_1fri8ux_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "835.98001953125",
                            "y": "125.99999908447265"
                        },
                        {
                            "x": "960.990009765625",
                            "y": "125.99999908447265"
                        },
                        {
                            "x": "960.990009765625",
                            "y": "224.5"
                        },
                        {
                            "x": "1086",
                            "y": "224.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1hy5v5n",
                    "id": "SequenceFlow_1hy5v5n_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "334.97999664306644",
                            "y": "271.4999990844727"
                        },
                        {
                            "x": "395.9899983215332",
                            "y": "271.4999990844727"
                        },
                        {
                            "x": "395.9899983215332",
                            "y": "302"
                        },
                        {
                            "x": "457",
                            "y": "302"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1kjokvh",
                    "id": "SequenceFlow_1kjokvh_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "482",
                            "y": "277"
                        },
                        {
                            "x": "481.9999890136719",
                            "y": "164.16499908447264"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_y5zpfv",
                    "id": "SequenceFlow_y5zpfv_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 502,
                        "cy": 198,
                        "x": 462,
                        "width": 80,
                        "y": 186,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "507",
                            "y": "302"
                        },
                        {
                            "x": "547.0199966430664",
                            "y": "301.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1i2gnfo",
                    "id": "SequenceFlow_1i2gnfo_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 527,
                        "cy": 279,
                        "x": 487,
                        "width": 80,
                        "y": 267,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "700.9799966430664",
                            "y": "301.99999145507815"
                        },
                        {
                            "x": "747.0199966430664",
                            "y": "301.99999145507815"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_si41h5",
                    "id": "SequenceFlow_si41h5_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "900.9799966430664",
                            "y": "301.99999145507815"
                        },
                        {
                            "x": "993.4899983215332",
                            "y": "301.99999145507815"
                        },
                        {
                            "x": "993.4899983215332",
                            "y": "224.5"
                        },
                        {
                            "x": "1086",
                            "y": "224.5"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1oevike",
                    "id": "SequenceFlow_1oevike_ve"
                },
                {
                    "waypoint": [
                        {
                            "x": "482",
                            "y": "327"
                        },
                        {
                            "x": "482",
                            "y": "372.0820317201935"
                        },
                        {
                            "x": "524.6015625890341",
                            "y": "372.0820317201935"
                        },
                        {
                            "x": "524.6015625890341",
                            "y": "417.1640634403871"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1lwtnsf",
                    "id": "SequenceFlow_1lwtnsf_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 507,
                        "cy": 366,
                        "x": 467,
                        "width": 80,
                        "y": 354,
                        "height": 24
                    }}
                },
                {
                    "waypoint": [
                        {
                            "x": "549.6015625890341",
                            "y": "442.1640634403871"
                        },
                        {
                            "x": "601.3007864840945",
                            "y": "442.1640634403871"
                        },
                        {
                            "x": "601.3007864840945",
                            "y": "443.3281317604081"
                        },
                        {
                            "x": "653.0000103791549",
                            "y": "443.3281317604081"
                        }
                    ],
                    "bpmnElement": "SequenceFlow_1h2d6zo",
                    "id": "SequenceFlow_1h2d6zo_ve",
                    "BPMNLabel": {"Bounds": {
                        "cx": 601,
                        "cy": 420,
                        "x": 561,
                        "width": 80,
                        "y": 408,
                        "height": 24
                    }}
                }
            ]
        },
        "id": "Process_12ezt7_ve"
    },
    "collaboration": {}
}