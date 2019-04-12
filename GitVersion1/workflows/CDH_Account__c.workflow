<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Updata_Ext_Territory_ID</fullName>
        <field>CDH_Territory__c</field>
        <formula>CDH_Territory_Lookup__r.CDH_External_Territory_ID__c</formula>
        <name>Updata Ext Territory ID</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_CAN_Business</fullName>
        <field>CDH_CAN_Business__c</field>
        <name>Update CAN Business</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
