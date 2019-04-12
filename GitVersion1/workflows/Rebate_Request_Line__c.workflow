<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Rebate_Request_Auto_Inform_Director</fullName>
        <field>Inform_Supervisor__c</field>
        <literalValue>1</literalValue>
        <name>Rebate Request Auto Inform Director</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>CAR_Rebate_Request__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Rebate Request Line above 130 pln notify B2B Director</fullName>
        <actions>
            <name>Rebate_Request_Auto_Inform_Director</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>In order to automate notification of B2B Poultry Director when line rebate request exceeds 130 pln</description>
        <formula>AND(Discount_Value__c&gt;130,CreatedBy.Manager.Manager.Email=&quot;wieslaw_ilkow@cargill.com&quot;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
