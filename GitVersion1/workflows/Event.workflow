<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Schedule Event Follow Up</fullName>
        <actions>
            <name>For_Follow_Up_Call_Activity</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>This is a workflow rule that assigns a task to an Event Owner/Assigned To based on the specified reminder date.</description>
        <formula>NOT(ISNULL( Reminder_to_Schedule_Follow_Up__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>For_Follow_Up_Call_Activity</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Event.Reminder_to_Schedule_Follow_Up__c</offsetFromField>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>For Follow Up: Call Activity</subject>
    </tasks>
    <tasks>
        <fullName>For_Follow_Up_Event</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Event.Reminder_to_Schedule_Follow_Up__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>For Follow Up: Call Activity</subject>
    </tasks>
</Workflow>
