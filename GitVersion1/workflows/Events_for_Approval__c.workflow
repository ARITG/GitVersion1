<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Status_update_on_Event_Approval_Process</fullName>
        <description>Status update on Event Approval Process - request approved</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <alerts>
        <fullName>Status_update_on_Event_Approval_Process_request_recalled</fullName>
        <description>Status update on Event Approval Process - request recalled</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>LastModifiedById</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <alerts>
        <fullName>Status_update_on_Event_Approval_Process_request_rejected</fullName>
        <description>Status update on Event Approval Process - request rejected</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Status_to_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved by Manager</literalValue>
        <name>Change Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Status_to_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Change Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_Status_to_Submitted</fullName>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Change Status to Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_status_to_draft</fullName>
        <field>Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Change status to draft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
