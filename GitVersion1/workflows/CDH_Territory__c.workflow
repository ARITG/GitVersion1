<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Territory_Owner</fullName>
        <field>Territory_Owner_Full_Name__c</field>
        <formula>CDH_Territory_Owner__r.FirstName + &apos; &apos; + CDH_Territory_Owner__r.LastName</formula>
        <name>Territory Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Copy Territory Owner</fullName>
        <actions>
            <name>Territory_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>CDH_Territory__c.CDH_Territory_Name__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>DEACTIVATED 7/27 as part of CDH Enhancement Project</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
