<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>CPN_India_Approval_email</fullName>
        <description>CPN India Approval email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CPN_India/CPN_India_Approval_Email</template>
    </alerts>
    <alerts>
        <fullName>CPN_India_Recall_Email_Alert</fullName>
        <description>CPN India Recall Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <field>Approver_1__c</field>
            <type>userLookup</type>
        </recipients>
        <recipients>
            <field>Approver_2__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CPN_India/CPN_India_Approval_Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approve_Planning_Month</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Approve Planning Month</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Cres_SetPlanMonthName</fullName>
        <field>Name</field>
        <formula>text(Plan_Year__c)+&quot;-&quot;+text(Month_Planned__c)+&quot;-&quot;+ Target__r.Name</formula>
        <name>Cres_SetPlanMonthName</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Reject_Planning_Month</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Reject Planning Month</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Plan_Day_Name</fullName>
        <field>Name</field>
        <formula>Related_Planning_Month__r.Name+&quot;-&quot;+TEXT(Plan_Date__c)</formula>
        <name>Set Plan Day Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Planning_to_Status_to_In_Progress</fullName>
        <field>Status__c</field>
        <literalValue>In Progress</literalValue>
        <name>Update Planning to Status to In Progress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Cres Rename Plan Month</fullName>
        <actions>
            <name>Cres_SetPlanMonthName</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Planning_Month__c.Month_Planned__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Planning_Month__c.Plan_Year__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Planning_Month__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Plan Month</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Cres_Rename Plan Day</fullName>
        <actions>
            <name>Set_Plan_Day_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>if(ISNEW() &amp;&amp;   RecordType.Name==$Label.Cres_Plan_DayRecType ,true,if(OR(RecordType.Name==$Label.Cres_Plan_DayRecType,ISCHANGED( Plan_Date__c )),true,false ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
