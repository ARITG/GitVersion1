<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Budget_Sales_Adv_based_on_OwnerId</fullName>
        <field>sc_Specie_Advisor__c</field>
        <formula>Owner:User.FirstName &amp; &quot; &quot; &amp; Owner:User.LastName</formula>
        <name>Update Budget Sales Adv based on OwnerId</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update_Advisor_Name_from_SFDC_db</fullName>
        <actions>
            <name>Update_Budget_Sales_Adv_based_on_OwnerId</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Since imported Advisor Names are not consistent, we need to overwrite imported advisor name with record Owner Name.</description>
        <formula>ISCHANGED(OwnerId)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
