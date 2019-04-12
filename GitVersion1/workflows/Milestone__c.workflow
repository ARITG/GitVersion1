<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Milestone_Assigned</fullName>
        <description>Milestone Assigned</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_To__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Milestone_Assigned</template>
    </alerts>
    <rules>
        <fullName>Milestone Assigned to user</fullName>
        <actions>
            <name>Milestone_Assigned</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send email to Assigned To user</description>
        <formula>OR(IF(ISNEW(), TRUE, FALSE), IF(ISCHANGED( Assigned_To__c ), TRUE, FALSE))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
