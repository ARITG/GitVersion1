<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Notification_ASM</fullName>
        <description>Email Notification ASM</description>
        <protected>false</protected>
        <recipients>
            <field>Approver1__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CPN_India/Route_Approval_CPN_INDIA_ASM</template>
    </alerts>
    <fieldUpdates>
        <fullName>Status</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusInProgress</fullName>
        <field>Status__c</field>
        <literalValue>In Progress</literalValue>
        <name>StatusInProgress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>StatusRejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>StatusRejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_FalsChkbox_Submitted_For_Approval</fullName>
        <field>Submitted_For_Approval__c</field>
        <literalValue>0</literalValue>
        <name>Update FalsChkbox Submitted For Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_TrueChkbox_Submitted_For_Approval</fullName>
        <field>Submitted_For_Approval__c</field>
        <literalValue>1</literalValue>
        <name>Update TrueChkbox Submitted For Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
