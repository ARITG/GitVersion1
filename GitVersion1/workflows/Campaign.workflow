<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Active_False</fullName>
        <description>when end date is less than or equal to today, uncheck Active flag on campaign</description>
        <field>IsActive</field>
        <literalValue>0</literalValue>
        <name>Update Active - False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Campaign_Active_Flag</fullName>
        <description>Set Active flag to FALSE if today&apos;s Date is greater than End Date of Campaign</description>
        <field>IsActive</field>
        <literalValue>0</literalValue>
        <name>Update Campaign Active Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Campaign_Flag_To_True</fullName>
        <description>Set Active flag to true after Start Date of Campaign</description>
        <field>IsActive</field>
        <literalValue>1</literalValue>
        <name>Update Campaign Flag To True</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Campaign - Active</fullName>
        <active>true</active>
        <booleanFilter>(1) OR (2 AND 3)</booleanFilter>
        <criteriaItems>
            <field>Campaign.IsActive</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.IsActive</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.EndDate</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>Uncheck the Active flag on Campaign Object record when the End Date is less than equal to today&apos;s Date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Campaign_Active_Flag</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Campaign.EndDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Campaign - Inactive</fullName>
        <active>true</active>
        <booleanFilter>(1 AND 2 AND 3) OR (4 AND 5)</booleanFilter>
        <criteriaItems>
            <field>Campaign.IsActive</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>lessOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.EndDate</field>
            <operation>greaterOrEqual</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.IsActive</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Campaign.StartDate</field>
            <operation>greaterThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <description>To set Active flag to True</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Campaign_Flag_To_True</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Campaign.StartDate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
