<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_to_ProjectGroup_Assigned_To_user</fullName>
        <description>Email to ProjectGroup Assigned To user</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_To__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Group_Assigned</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Project_Group_Assigned_to_User_with_Campaign</fullName>
        <description>Email to Project Group Assigned to User with Campaign</description>
        <protected>false</protected>
        <recipients>
            <field>Campaign_Owner_Email_Id__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Group_Campaign</template>
    </alerts>
    <alerts>
        <fullName>New_Project_Group_has_been_created</fullName>
        <description>New Project Group has been created.</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_To__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/New_Project_Group_Created</template>
    </alerts>
    <alerts>
        <fullName>Project_Group_Completed</fullName>
        <description>Project Group Completed</description>
        <protected>false</protected>
        <recipients>
            <field>Assigned_To__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Group_Status_Completed</template>
    </alerts>
    <alerts>
        <fullName>Weekly_Report_for_Sales_Consultant</fullName>
        <description>Weekly Report for Sales Consultant</description>
        <protected>false</protected>
        <recipients>
            <field>Sales_Consultant_New__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Report_for_Sales_Consultant</template>
    </alerts>
    <fieldUpdates>
        <fullName>Stamp_Campaign_Owner_Email_Id</fullName>
        <description>Stamp Campaign Owner Email Id on Project Group Object</description>
        <field>Campaign_Owner_Email_Id__c</field>
        <formula>Campaign__r.Owner.Email</formula>
        <name>Stamp Campaign Owner Email Id</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Days_open_field_Project_Group</fullName>
        <field>Days_Open__c</field>
        <formula>TODAY () - Project_Delivery_Date__c</formula>
        <name>Update Days open field Project Group</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_invoicing_code</fullName>
        <field>Invoicing_Code__c</field>
        <literalValue>555747.640101.27</literalValue>
        <name>Update invoicing code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_invoicing_code1</fullName>
        <field>Invoicing_Code__c</field>
        <literalValue>555747.640101.27</literalValue>
        <name>Update invoicing code</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Email Alert ProjectGroup with Campaign</fullName>
        <actions>
            <name>Email_to_Project_Group_Assigned_to_User_with_Campaign</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email Assigned To user if a Project Group is  associated with a Campaign</description>
        <formula>OR( IF(ISNEW() &amp;&amp; NOT(ISBLANK(Campaign__c)), True, False) ,  IF(NOT(ISBLANK(Campaign__c)) &amp;&amp; ISCHANGED(Campaign__c), TRUE, FALSE) )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New Project Group Created</fullName>
        <actions>
            <name>New_Project_Group_has_been_created</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project_Group__c.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>CCMAP-130
CCMAP-151
CCMAP-154</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>New ProjectGroup Assigned</fullName>
        <actions>
            <name>Email_to_ProjectGroup_Assigned_To_user</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Email to be sent to Assigned To user of Project Group</description>
        <formula>OR(IF(ISNEW(), TRUE, FALSE), IF(ISCHANGED(Assigned_To__c), TRUE, FALSE))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Payment Method %3D Business Builder</fullName>
        <actions>
            <name>Project_Group_s_Payment_Method_Business</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project_Group__c.Payment_Method__c</field>
            <operation>equals</operation>
            <value>Business Builder</value>
        </criteriaItems>
        <description>CCMAP-176</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Group Completed</fullName>
        <actions>
            <name>Project_Group_Completed</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project_Group__c.Status__c</field>
            <operation>equals</operation>
            <value>Billing Complete</value>
        </criteriaItems>
        <description>CCMAP-154</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Group Days Open</fullName>
        <actions>
            <name>Update_Days_open_field_Project_Group</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project_Group__c.Status__c</field>
            <operation>notEqual</operation>
            <value>Billing Complete</value>
        </criteriaItems>
        <description>CCMAP-170</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stamp Campaign Owner Email Id on Project Group</fullName>
        <actions>
            <name>Stamp_Campaign_Owner_Email_Id</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Stamp Campaign Owner Email Id on Project Group Object. To be used in Workflow.</description>
        <formula>IF( Campaign_Owner_Email_Id__c &lt;&gt;  Campaign__r.Owner.Email , TRUE, FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Invoicing Code</fullName>
        <actions>
            <name>Update_invoicing_code1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project_Group__c.Designate_Payment_Type__c</field>
            <operation>equals</operation>
            <value>Invoice Retailer</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Weekly Report for Sales Consultant</fullName>
        <actions>
            <name>Weekly_Report_for_Sales_Consultant</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project_Group__c.Status__c</field>
            <operation>equals</operation>
            <value>Not Started</value>
        </criteriaItems>
        <description>Weekly Report to be sent to the Sales Consultant based project groups</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Project_Group_s_Payment_Method_Business</fullName>
        <assignedTo>Marketing_Invoicer</assignedTo>
        <assignedToType>role</assignedToType>
        <dueDateOffset>30</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Project_Group__c.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Project Group&apos;s Payment Method has been set to Business Builder</subject>
    </tasks>
</Workflow>
