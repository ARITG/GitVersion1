<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>CfrTreadshowaleart</fullName>
        <description>CfrTreadshowaleart</description>
        <protected>false</protected>
        <recipients>
            <recipient>aritri.ganguly@cognizant.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>mallikharjuna.obulapuram@cognizant.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>unfiled$public/TreadshowTemplete</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Coupon_POD_Queue</fullName>
        <description>Email to Coupon POD Queue</description>
        <protected>false</protected>
        <recipients>
            <recipient>Coupon_POD_Group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Assigned_Queue</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Creative_POD_Queue</fullName>
        <description>Email to Creative POD Queue</description>
        <protected>false</protected>
        <recipients>
            <recipient>gwen_hallenbeck@cargill.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Assigned_Queue</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Project_Group_Assigned_to_user_on_Project_Status_Update</fullName>
        <description>Email to Project Group Assigned to user on Project Status Update</description>
        <protected>false</protected>
        <recipients>
            <field>ProjectGroup_Assigned_To_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Status_Updated</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Project_Owner</fullName>
        <description>Email to Project Owner</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Assigned</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Project_Record_Creator</fullName>
        <description>Email to Project Record Creator</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>Marketing_Folder/Project_Assigned</template>
    </alerts>
    <alerts>
        <fullName>Email_to_Tradeshow_POD_Queue</fullName>
        <description>Email to Tradeshow POD Queue</description>
        <protected>false</protected>
        <recipients>
            <recipient>Tradeshow_POD_Group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing_Folder/Project_Assigned_Queue</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_Project_Status_Completed</fullName>
        <description>To change Project Status to completed when Completed% is 100%</description>
        <field>Status__c</field>
        <literalValue>Complete</literalValue>
        <name>Change Project Status - Completed</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_PG_Assigned_to_Email</fullName>
        <description>stamp PG Assigned to field on Project Object</description>
        <field>ProjectGroup_Assigned_To_Email__c</field>
        <formula>Project_Group__r.Assigned_To__r.Email</formula>
        <name>Update PG Assigned to Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>CfrTreadshow</fullName>
        <actions>
            <name>CfrTreadshowaleart</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Project__c.Project_Sub_Type__c</field>
            <operation>equals</operation>
            <value>Tradeshow</value>
        </criteriaItems>
        <description>Trade show project user have to receive an email notification</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change Project Status - Completed</fullName>
        <actions>
            <name>Change_Project_Status_Completed</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Project__c.Completed_Milestones__c</field>
            <operation>equals</operation>
            <value>100</value>
        </criteriaItems>
        <description>To change the Project Status to completed is Milestone Completed% is 100%</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Assigned To Coupon POD Queue</fullName>
        <actions>
            <name>Email_to_Coupon_POD_Queue</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email to be sent when a Project is Assigned to Coupon POD Queue. If any user is added removed from Queue the the same changes are to be done in Email Alert members of this workflow rule (Email to Coupon POD Queue) and Public Group.</description>
        <formula>IF(Owner:Queue.Id == $Label.Coupon_POD_Queue_Id, TRUE, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Assigned To Creative POD Queue</fullName>
        <actions>
            <name>Email_to_Creative_POD_Queue</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email to be sent when a Project is Assigned to Creative POD Queue. If any user is added removed from Queue the the same changes are to be done in Email Alert members of this workflow rule (Email to Creative POD Queue) and Public Group.</description>
        <formula>IF(AND(Owner:Queue.Id ==  $Label.Creative_POD_Queue_ID ,  TEXT(Project_Group__r.Status__c)  = &apos;In Progress&apos;), TRUE, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Assigned To Tradeshow POD Queue</fullName>
        <actions>
            <name>Email_to_Tradeshow_POD_Queue</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Email to be sent when a Project is Assigned to Tradeshow POD Queue. If any user is added removed from Queue the the same changes are to be done in Email Alert members of this workflow rule (Email to Tradeshow POD Queue) and Public Group.</description>
        <formula>IF(Owner:Queue.Id == $Label.Tradeshow_POD_Queue_Id, TRUE, FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Project Assigned To user</fullName>
        <actions>
            <name>Email_to_Project_Owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send email to Project Owner</description>
        <formula>OR(IF(ISNEW() &amp;&amp;  OwnerId &lt;&gt;  $Label.Coupon_POD_Queue_Id &amp;&amp; OwnerId &lt;&gt; $Label.Creative_POD_Queue_ID &amp;&amp; OwnerId &lt;&gt; $Label.Tradeshow_POD_Queue_Id &amp;&amp; OwnerId &lt;&gt; $Label.Fulfillment_Pod_Queue_Id &amp;&amp; OwnerId &lt;&gt; &apos;005j000000GDb6O&apos;, TRUE, FALSE), IF(ISCHANGED(OwnerId) &amp;&amp; OwnerId &lt;&gt;  $Label.Coupon_POD_Queue_Id &amp;&amp; OwnerId &lt;&gt; $Label.Creative_POD_Queue_ID &amp;&amp; OwnerId &lt;&gt; $Label.Tradeshow_POD_Queue_Id &amp;&amp; OwnerId &lt;&gt; $Label.Fulfillment_Pod_Queue_Id &amp;&amp; OwnerId &lt;&gt; &apos;005j000000GDb6O&apos; , TRUE, FALSE))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Project Status Update</fullName>
        <actions>
            <name>Email_to_Project_Group_Assigned_to_user_on_Project_Status_Update</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Send Email to Project Group Assigned to user on Project Status filed update</description>
        <formula>ISCHANGED(Status__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Stamp PG Assigned To email</fullName>
        <actions>
            <name>Update_PG_Assigned_to_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Stamp PG Assigned To user email Id on Project&apos;s ProjectGroup Assigned to Email filed</description>
        <formula>IF(ProjectGroup_Assigned_To_Email__c &lt;&gt;  Project_Group__r.Assigned_To__r.Email, TRUE, FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
