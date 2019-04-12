<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Overridden_Field_check</fullName>
        <field>overridden__c</field>
        <literalValue>1</literalValue>
        <name>Overridden Field check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Overridden_Field_check_false</fullName>
        <field>overridden__c</field>
        <literalValue>0</literalValue>
        <name>Overridden Field check false</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Potential_Name_Update</fullName>
        <field>Name</field>
        <formula>TEXT(Master_Potential__r.Species__c)+&quot;-&quot;+TEXT( Master_Potential__r.Estimation_Type__c )+&quot;-&quot;+TEXT( Product_Function__c)+&quot;-&quot;+TEXT(Type__c)</formula>
        <name>Potential Name Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Potential Name</fullName>
        <actions>
            <name>Potential_Name_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Potential Overridden field True</fullName>
        <actions>
            <name>Overridden_Field_check</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Potential__c.Annual_Volume_MT__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Cres_Master_Potential__c.Estimation_Type__c</field>
            <operation>equals</operation>
            <value>Simple Potential Estimate</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Potential Overridden field false</fullName>
        <actions>
            <name>Overridden_Field_check_false</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Potential__c.Annual_Volume_MT__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Cres_Master_Potential__c.Estimation_Type__c</field>
            <operation>equals</operation>
            <value>Simple Potential Estimate</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
