<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Crescendo_Sprint_7_Auto_Response_email_to_CQN_NA_when_case_created</fullName>
        <description>Crescendo - Sprint 7 - Auto Response email to CQN NA when case created</description>
        <protected>false</protected>
        <recipients>
            <field>SuppliedEmail</field>
            <type>email</type>
        </recipients>
        <senderAddress>cqncustomerservice_na@cargill.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>CQN_Email_Templates/Crescendo_CQN_Autoresponse_template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Priority_to_High</fullName>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>Update Priority to High</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Crescendo - Sprint 7 - Auto Response email to CQN NA when case created</fullName>
        <actions>
            <name>Crescendo_Sprint_7_Auto_Response_email_to_CQN_NA_when_case_created</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Email</value>
        </criteriaItems>
        <description>Crescendo - Sprint 7 - Auto Response email to CQN NA when case created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Case Priority Field</fullName>
        <actions>
            <name>Update_Priority_to_High</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Case.Priority</field>
            <operation>equals</operation>
            <value>Low</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New (Submitted)</value>
        </criteriaItems>
        <description>Update the case priority field when case is open more than 48 hours</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Case.CreatedDate</offsetFromField>
            <timeLength>48</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
