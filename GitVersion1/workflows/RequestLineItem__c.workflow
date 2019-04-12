<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Credit</fullName>
        <description>Email Credit Team via workflow</description>
        <protected>false</protected>
        <recipients>
            <recipient>Credit_Team_Poland</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <rules>
        <fullName>Email Credit Team</fullName>
        <actions>
            <name>Email_Credit</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>RequestLineItem__c.Field_Name__c</field>
            <operation>equals</operation>
            <value>Requested_Credit_Limit__c</value>
        </criteriaItems>
        <description>To send email to credit team for &quot;Requested Credit Limit&quot; changes</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
