<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Account_Availability_A</fullName>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <field>Availability_on_Market__c</field>
        <literalValue>Available</literalValue>
        <name>Account Availability_A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Related_Account_Name__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Availability_ASF</fullName>
        <field>Availability_on_Market__c</field>
        <literalValue>ASF/A-H1N1, Bird Flu, BSE - no potential</literalValue>
        <name>Account Availability ASF</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Related_Account_Name__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Availability_D</fullName>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <field>Availability_on_Market__c</field>
        <literalValue>Service by Dealer - no potential</literalValue>
        <name>Account Availability_D</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Related_Account_Name__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Availability_Doub</fullName>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <field>Availability_on_Market__c</field>
        <literalValue>Doubled account - no potential</literalValue>
        <name>Account Availability Doub</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Related_Account_Name__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Availability_Int</fullName>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <field>Availability_on_Market__c</field>
        <literalValue>Long Term Integration - no potential</literalValue>
        <name>Account Availability_Int</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Related_Account_Name__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Account Availability ASF</fullName>
        <actions>
            <name>Account_Availability_ASF</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <formula>AND(ISCHANGED(Segm_9Box_recomm__c),
ISPICKVAL(Segm_9Box_recomm__c,&quot;ASF/A-H1N1, Bird Flu, BSE - no potential&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Availability Dea</fullName>
        <actions>
            <name>Account_Availability_D</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <formula>AND(ISCHANGED(Segm_9Box_recomm__c),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Service by Dealer - no potential&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Availability Doub</fullName>
        <actions>
            <name>Account_Availability_Doub</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <formula>AND(ISCHANGED(Segm_9Box_recomm__c),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Doubled account - no potential&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Availability Int</fullName>
        <actions>
            <name>Account_Availability_Int</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <formula>AND(ISCHANGED(Segm_9Box_recomm__c),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Long Term Integration - no potential&quot;)
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Account Availability Yes</fullName>
        <actions>
            <name>Account_Availability_A</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Update Account &apos;Availability_on_Market__c&apos; field based on Survey response.</description>
        <formula>AND(ISCHANGED(Segm_9Box_recomm__c),
OR(
ISPICKVAL(Segm_9Box_recomm__c,&quot;Limited&quot;),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Selected&quot;),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Extensive&quot;),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Advisory Not Needed&quot;),
ISPICKVAL(Segm_9Box_recomm__c,&quot;Self Mixing&quot;)
))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
