<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Related_Event</fullName>
        <field>Related_Event__c</field>
        <formula>Event_ID__c</formula>
        <name>Related Event</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update Related Event Field</fullName>
        <actions>
            <name>Related_Event</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>NOT(ISNULL( Id))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
