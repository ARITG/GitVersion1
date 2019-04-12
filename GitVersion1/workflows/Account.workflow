<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Test_0</fullName>
        <description>Email Admin | DS log Test 0</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_0</template>
    </alerts>
    <alerts>
        <fullName>Test_1</fullName>
        <description>Email Admin | DS log Test 1</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_1</template>
    </alerts>
    <alerts>
        <fullName>Test_2</fullName>
        <description>Email Admin | DS log Test 2</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_2</template>
    </alerts>
    <alerts>
        <fullName>Test_3</fullName>
        <description>Email Admin | DS log Test 3</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_3</template>
    </alerts>
    <alerts>
        <fullName>Test_4</fullName>
        <description>Email Admin | DS log Test 4</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_4</template>
    </alerts>
    <alerts>
        <fullName>Test_5</fullName>
        <description>Email Admin | DS log Test 5</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_5</template>
    </alerts>
    <fieldUpdates>
        <fullName>AccountStatusUpdateAcc1</fullName>
        <field>Status__c</field>
        <literalValue>New</literalValue>
        <name>AccountStatusUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Active_Flag</fullName>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Account Active Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Active_Flag_Con_5</fullName>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Account Active Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Account_Status</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Account Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Active_flag_standard_update</fullName>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Active flag standard update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Active_flag_update</fullName>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Active flag update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Active_flag_update_true</fullName>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Active flag update true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ConsumerStatus_field_update</fullName>
        <field>Consumer_Status__c</field>
        <literalValue>Prospecting</literalValue>
        <name>ConsumerStatus field update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ConsumerStatus_field_update_New</fullName>
        <field>Consumer_Status__c</field>
        <literalValue>New</literalValue>
        <name>ConsumerStatus field update New</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Last_Modified_Date</fullName>
        <field>Last_Modified_Date__c</field>
        <formula>LastModifiedDate</formula>
        <name>Last Modified Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_Field_Update</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Initial Submission T0: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Account</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Step Approval Actions T2: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Account0</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Initial Submission T0: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Account1</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Step Approval Actions T1: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Account3</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Approval Actions T3: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Account4</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Approval Actions T4: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Account5</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Recall Actions T5: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Step Approval Actions T2: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account0</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Initial Submission T0: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account1</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Step Approval Actions T1: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account3</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Approval Actions T3: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account4</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Approval Actions T4: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account5</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Recall Actions T5: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account_Account2</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Initial Submission T0: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account_Con_18</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Recall Actions T5: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Account_con_14</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Account Final Approval Actions T4: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prospect_Validated_Flag</fullName>
        <field>Prospect_Validated__c</field>
        <literalValue>1</literalValue>
        <name>Prospect Validated Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prospect_Validated_flag_true</fullName>
        <field>Prospect_Validated__c</field>
        <literalValue>1</literalValue>
        <name>Prospect Validated flag true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Request_Approval</fullName>
        <field>Request_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Request Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Request_Approval_field</fullName>
        <field>Request_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Request Approval field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Request_Approved</fullName>
        <field>Request_Approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Request Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Request_Approved_Con_15</fullName>
        <field>Request_Approved__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Request Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_AccountStatus_To_Rejected</fullName>
        <description>Update Account to Rejected on rejection</description>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update AccountStatus To Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Status</fullName>
        <description>Update_Account_Status field to Approved</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Account Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Status_to_Approved</fullName>
        <description>Flip Account Status to Approved</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Account Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Status_to_Approved_Con_16</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Account Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Status_to_New</fullName>
        <description>Update Account Status to New</description>
        <field>Status__c</field>
        <literalValue>New</literalValue>
        <name>Update Account Status to New</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Status_to_Recalled</fullName>
        <description>Update Account Status to Recalled</description>
        <field>Status__c</field>
        <literalValue>Recalled</literalValue>
        <name>Update Account Status to Recalled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_if_Request_Approved</fullName>
        <field>Request_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Update Account if Request Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Active_checkbox</fullName>
        <description>Sets the Active checkbox to True</description>
        <field>Active__c</field>
        <literalValue>1</literalValue>
        <name>Update Active checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Status</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Update Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Status_CPN_INDIA</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Update Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Competitor_Validated_to_TRUE</fullName>
        <description>update Competitor validated check box to true</description>
        <field>Competitor_Validated__c</field>
        <literalValue>1</literalValue>
        <name>Update Competitor Validated to TRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Consumer_Status</fullName>
        <description>Update Consumer Status to Prospecting.</description>
        <field>Consumer_Status__c</field>
        <literalValue>Prospecting</literalValue>
        <name>Update Consumer Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Customer_Status_To_Full_Customer</fullName>
        <description>Update Customer Status To Full Customer if request approved and Prospect converted to Customer</description>
        <field>Customer_Status__c</field>
        <literalValue>Full Customer</literalValue>
        <name>Update Customer Status To Full Customer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Customer_Status_To_Won</fullName>
        <description>Update Customer Status To won if request approved and Prospect converted to Customer</description>
        <field>Customer_Status__c</field>
        <literalValue>Won</literalValue>
        <name>Update Customer Status To Won</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Prospect_Validated_False</fullName>
        <field>Prospect_Validated__c</field>
        <literalValue>0</literalValue>
        <name>Update Prospect Validated False</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Commercial_Customer</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Sales_status_field_to_Prospect</fullName>
        <description>we are replacing the consumer status field to  sales status filed --- where ever using  consumer status field  update we are updating sales status value

old field update is: ConsumerStatus field update</description>
        <field>Customer_Status__c</field>
        <literalValue>Prospect</literalValue>
        <name>Update Sales status field to Prospect</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Updated_Prospect_Validated_Flag</fullName>
        <field>Prospect_Validated__c</field>
        <literalValue>1</literalValue>
        <name>Updated Prospect Validated Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update</fullName>
        <field>Account_Logged_user_Id__c</field>
        <formula>$User.Id</formula>
        <name>update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Active flag update rule</fullName>
        <actions>
            <name>Active_flag_update_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Prospect_Validated__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Prospect Validated flag update for Commercial Customer</fullName>
        <actions>
            <name>Active_flag_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Prospect_Validated_flag_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND 2</booleanFilter>
        <criteriaItems>
            <field>Account.Account_Type__c</field>
            <operation>notEqual</operation>
            <value>Standard,Competitor,Consumer</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Account_Type__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
