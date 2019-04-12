<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Email_Alert</fullName>
        <description>Send Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/POLISH_OPPORTUNITY_Email_Alerts</template>
    </alerts>
    <alerts>
        <fullName>Send_Email_Alert_for_Canada</fullName>
        <description>Send Email Alert for Canada</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Canada_Email_Templates/Canada_Opportunity_Email_Alert</template>
    </alerts>
    <alerts>
        <fullName>X1_week_before_estimated_closed_date</fullName>
        <description>1 week before estimated closed date</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/POLISH_OPPORTUNITY_Email_Alerts</template>
    </alerts>
    <alerts>
        <fullName>X1_week_before_estimated_closed_date_for_Chile</fullName>
        <description>1 week before estimated closed date for Chile</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Chile_Email_Templates/Chile_Opportunity_Email_Alert</template>
    </alerts>
    <alerts>
        <fullName>X1_week_before_estimated_closed_date_for_canada1</fullName>
        <description>1 week before estimated closed date for canada</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Canada_Email_Templates/Canada_Opportunity_Email_Alert</template>
    </alerts>
    <fieldUpdates>
        <fullName>Check_Email_alert_sent</fullName>
        <description>Check the check box for email alert</description>
        <field>Email_reminder_sent__c</field>
        <literalValue>1</literalValue>
        <name>Check Email alert sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Opportunity_Actual_Close_Date</fullName>
        <field>Close_Date_Actual__c</field>
        <formula>NOW()</formula>
        <name>Opportunity Actual Close Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Email_Alert_sent</fullName>
        <field>Email_reminder_sent__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Email Alert sent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Date_of_last_email_reminder</fullName>
        <description>Update the last date of Email reminder for opportunity record</description>
        <field>Date_of_last_email_reminder__c</field>
        <formula>Today ()</formula>
        <name>Update Date of last email reminder</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Searchable_Account</fullName>
        <description>For Product Line search</description>
        <field>Search_Account__c</field>
        <formula>Account.Name</formula>
        <name>Update Searchable Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Wipe_Opportunity_Actual_Close_Date</fullName>
        <field>Close_Date_Actual__c</field>
        <name>Wipe Opportunity Actual Close Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Canada Reminder 1 week before close date</fullName>
        <active>true</active>
        <description>Task and email alert 1 week before the Close Date on the Opportunity, assigned/sent to the Opportunity owner as a reminder</description>
        <formula>Not(ISNULL( CloseDate )) &amp;&amp; TEXT(Business_Unit__c) = &apos;Canada&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_week_before_estimated_closed_date_for_canada1</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Close_Date_Reminder</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Canada Send Email Alert</fullName>
        <actions>
            <name>Send_Email_Alert_for_Canada</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Check_Email_alert_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Date_of_last_email_reminder</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Send email alert to opportunity owner  based on their desired frequency</description>
        <formula>TEXT(Business_Unit__c) = &apos;Canada&apos; &amp;&amp;  Email_reminder_sent__c = False   &amp;&amp;     (TODAY() =(IF(ISBLANK(Date_of_last_email_reminder__c), Alert_Start_Date__c, TODAY())))   &amp;&amp;   (Days_Between_Email_Alerts__c &lt;&gt; 0)   &amp;&amp;   Not(ISNULL( Close_Date_Actual__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Chile Reminder 1 week before close date</fullName>
        <active>true</active>
        <description>Task and email alert 1 week before the Close Date on the Opportunity, assigned/sent to the Opportunity owner as a reminder</description>
        <formula>Not(ISNULL( CloseDate )) &amp;&amp; TEXT(Business_Unit__c) = &apos;Chile&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_week_before_estimated_closed_date_for_Chile</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Close_Date_Reminder</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Poland Reminder 1 week before close date</fullName>
        <active>true</active>
        <description>Task and email alert 1 week before the Close Date on the Opportunity, assigned/sent to the Opportunity owner as a reminder</description>
        <formula>Not(ISNULL( CloseDate )) &amp;&amp; TEXT(Business_Unit__c) = &apos;Poland&apos;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>X1_week_before_estimated_closed_date</name>
                <type>Alert</type>
            </actions>
            <actions>
                <name>Estimated_Closed_date_reminder</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Poland Send Email Alert</fullName>
        <actions>
            <name>Send_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Check_Email_alert_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Date_of_last_email_reminder</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Send email alert to opportunity owner  based on their desired frequency</description>
        <formula>TEXT(Business_Unit__c) = &apos;Poland&apos; &amp;&amp;  Email_reminder_sent__c = False 

&amp;&amp;   

(TODAY() =(IF(ISBLANK(Date_of_last_email_reminder__c), Alert_Start_Date__c, TODAY())))

 &amp;&amp;   (Days_Between_Email_Alerts__c &lt;&gt; 0)

 &amp;&amp;   Not(ISNULL( Close_Date_Actual__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Uncheck Email Alert sent</fullName>
        <actions>
            <name>Uncheck_Email_Alert_sent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Uncheck email alert sent field after the specified frequency</description>
        <formula>Email_reminder_sent__c = True &amp;&amp;  (Today () -  (IF(ISNULL(Date_of_last_email_reminder__c), Alert_Start_Date__c, Date_of_last_email_reminder__c)) =  Days_Between_Email_Alerts__c)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lost Opportunity</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Won_Lost__c</field>
            <operation>equals</operation>
            <value>Lost</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Opportunity Actual Close Date</fullName>
        <actions>
            <name>Opportunity_Actual_Close_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Won_Lost__c</field>
            <operation>equals</operation>
            <value>Won,Lost</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Related Account</fullName>
        <actions>
            <name>Update_Searchable_Account</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>for product line search</description>
        <formula>NOT(ISNULL(  Id ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Won Opportunity</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Won_Lost__c</field>
            <operation>equals</operation>
            <value>Won</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Wipe Opportunity Actual Close Date</fullName>
        <actions>
            <name>Wipe_Opportunity_Actual_Close_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Won_Lost__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Close_Date_Reminder</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Close Date Reminder</subject>
    </tasks>
    <tasks>
        <fullName>Estimated_Closed_date_reminder</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Close Date Reminder</subject>
    </tasks>
</Workflow>
