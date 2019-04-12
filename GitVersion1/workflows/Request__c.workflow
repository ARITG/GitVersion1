<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Data_Steward_Final_Approval_Email_Admin_For_Chile</fullName>
        <description>Data Steward Final Approval | Email Admin For Chile</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Chile_Email_Templates/HTML_Global_Request_Final_Approval_Template_Chile</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Approval_Email_Admin_For_Vietnam</fullName>
        <description>Data Steward Final Approval| Email Admin For Vietnam</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Vietnam/HTML_Global_Request_Final_Approval_Template_Vietnam</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Aproval_Email_Admin</fullName>
        <description>Data Steward Final Aproval | Email Admin</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Global_Email_Templates/HTML_Global_Request_Final_Approval_Template</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Aproval_Email_Admin_For_Canada</fullName>
        <description>Data Steward Final Aproval | Email Admin For Canada</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Canada_Email_Templates/HTML_Global_Request_Final_Approval_Template_Canada</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Rejection_Email_Admin</fullName>
        <description>Data Steward Final Rejection | Email Admin</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Global_Email_Templates/HTML_Global_Request_Final_Rejection_Template</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Rejection_Email_Admin_For_Canada</fullName>
        <description>Data Steward Final Rejection | Email Admin For Canada</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Canada_Email_Templates/HTML_Global_Request_Final_Rejection_Template_Canada</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Rejection_Email_Admin_For_Chile</fullName>
        <description>Data Steward Final Rejection | Email Admin For Chile</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Chile_Email_Templates/HTML_Global_Request_Final_Rejection_Template_Chile</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Final_Rejection_Email_Admin_For_Vietnam</fullName>
        <description>Data Steward Final Rejection | Email Admin For Vietnam</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Vietnam/HTML_Global_Request_Final_Rejection_Template_Vietnam</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Initial_Submission_Email_Admin</fullName>
        <description>Data Steward Initial Submission | Email Admin</description>
        <protected>false</protected>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Global_Email_Templates/HTML_Global_Request_Initial_Submission_Template</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Recall_Email_Admin</fullName>
        <description>Data Steward Recall | Email Admin</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Global_Email_Templates/HTML_Global_Request_Recall_Template</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Recall_Email_Admin_Chile</fullName>
        <description>Data Steward Recall | Email Admin Chile</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Chile_Email_Templates/HTML_Global_Request_Recall_Template_Chile</template>
    </alerts>
    <alerts>
        <fullName>Data_Steward_Recall_Email_Admin_for_Vietnam</fullName>
        <description>Data Steward Recall | Email Admin for Vietnam</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Vietnam/HTML_Global_Request_Recall_Template_Vietnam</template>
    </alerts>
    <alerts>
        <fullName>Email_Credit_Team</fullName>
        <description>Email Credit Team</description>
        <protected>false</protected>
        <recipients>
            <recipient>Credit_Team_Poland</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <alerts>
        <fullName>Email_Credit_Team_Notification</fullName>
        <description>Send email if there Requested Credit Limit field for Prospect conversion account not null</description>
        <protected>false</protected>
        <recipients>
            <recipient>Credit_Team_Poland</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <alerts>
        <fullName>Email_Request_Owner_on_Request_Status</fullName>
        <description>Email Request Owner on Request Status</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <alerts>
        <fullName>Polish_Approval_Alert</fullName>
        <description>Polish Approval Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/HTML_Polish_Approval_Template</template>
    </alerts>
    <alerts>
        <fullName>Polish_Recall_Alert</fullName>
        <description>Polish Recall Alert</description>
        <protected>false</protected>
        <recipients>
            <field>Account_owner_Email_Address__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/HTML_Polish_Recalled_Template</template>
    </alerts>
    <alerts>
        <fullName>Request_Approval_Alert_Polish</fullName>
        <description>Request Approval Alert Polish</description>
        <protected>false</protected>
        <recipients>
            <field>DataSteward_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Request_Approval_Enhanced</template>
    </alerts>
    <alerts>
        <fullName>Test_10</fullName>
        <description>Email Admin | DS log Test 10</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_10</template>
    </alerts>
    <alerts>
        <fullName>Test_11</fullName>
        <description>Email Admin | DS log Test 11</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_11</template>
    </alerts>
    <alerts>
        <fullName>Test_12</fullName>
        <description>Email Admin | DS log Test 12</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_12</template>
    </alerts>
    <alerts>
        <fullName>Test_13</fullName>
        <description>Email Admin | DS log Test 13</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_13</template>
    </alerts>
    <alerts>
        <fullName>Test_14</fullName>
        <description>Email Admin | DS log Test 14</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_14</template>
    </alerts>
    <alerts>
        <fullName>Test_15</fullName>
        <description>Email Admin | DS log Test 15</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_15</template>
    </alerts>
    <alerts>
        <fullName>Test_16</fullName>
        <description>Email Admin | DS log Test 16</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_16</template>
    </alerts>
    <alerts>
        <fullName>Test_17</fullName>
        <description>Email Admin | DS log Test 17</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_17</template>
    </alerts>
    <alerts>
        <fullName>Test_6</fullName>
        <description>Email Admin | DS log Test 6</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_6</template>
    </alerts>
    <alerts>
        <fullName>Test_7</fullName>
        <description>Email Admin | DS log Test 7</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_7</template>
    </alerts>
    <alerts>
        <fullName>Test_8</fullName>
        <description>Email Admin | DS log Test 8</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_8</template>
    </alerts>
    <alerts>
        <fullName>Test_9</fullName>
        <description>Email Admin | DS log Test 9</description>
        <protected>false</protected>
        <recipients>
            <recipient>tomasz_dusza@cargill.com.cargill18</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Polish_email_templates/Test_9</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_Address_update</fullName>
        <field>Account_owner_Email_Address__c</field>
        <formula>Account__r.Owner.Email</formula>
        <name>Email Address update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_Update</fullName>
        <field>Account_Team_Members_Changed__c</field>
        <literalValue>1</literalValue>
        <name>Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request10</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Rejection Actions T10: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request11</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Recall Actions T11: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 11</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request12</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Initial Submission T12: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request13</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Approval Actions T13: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 13</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request14</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Rejection Actions T14: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 14</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request15</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Approval Actions T15: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 15</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request16</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Rejection Actions T16: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 16</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request17</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Recall Actions T17: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 17</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request6</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Initial Submission T6: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request7</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Approval Actions T7: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request8</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Rejection Actions T8: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_udpate_on_Request9</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Approval Actions T9: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field udpate on Request 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request10</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Rejection Actions T10: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 10</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request11</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Recall Actions T11: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 11</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request12</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Initial Submission T12: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 12</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request13</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Approval Actions T13: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 13</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request14</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Rejection Actions T14: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 14</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request15</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Approval Actions T15: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 15</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request16</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Rejection Actions T16: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 16</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request17</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Recall Actions T17: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 17</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request6</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Initial Submission T6: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 6</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request7</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Approval Actions T7: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 7</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request8</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Step Rejection Actions T8: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 8</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request9</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Approval Actions T9: &quot; &amp;   TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request 9</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request_Chile2</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Initial Submission T6: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request_chile3</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Approval Actions T9: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Log_field_update_on_Request_chile4</fullName>
        <field>Req_Processing_Log__c</field>
        <formula>LEFT(&quot;New: &quot; &amp; &quot;Request Final Recall Actions T11: &quot; &amp; TEXT(NOW()) &amp; &quot;.&quot; &amp; BR() &amp; &quot;Previous: &quot; &amp; Req_Processing_Log__c,1500)</formula>
        <name>Log field update on Request</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Ongoing_Approval</fullName>
        <field>Ongoing_Approval__c</field>
        <literalValue>1</literalValue>
        <name>Ongoing Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Draft</fullName>
        <field>Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Status Draft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Managed_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Manager Approved</literalValue>
        <name>Status Managed Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Manager_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Manager Approved</literalValue>
        <name>Status Managed Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Recalled</fullName>
        <description>Set to Draft again to be able to correct request and resubmitt</description>
        <field>Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Status Draft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Status Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_Submitted</fullName>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Status Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DS_Email_Address</fullName>
        <description>Update DS Email Address</description>
        <field>DataSteward_Email__c</field>
        <formula>Account__r.Owner.DataStewardDL__c</formula>
        <name>Update DS Email Address</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lock_Flag</fullName>
        <field>Record_Locked__c</field>
        <literalValue>1</literalValue>
        <name>Update Lock Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lock_Flag_Chile1</fullName>
        <field>Record_Locked__c</field>
        <literalValue>1</literalValue>
        <name>Update Lock Flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Approved</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Draft</fullName>
        <field>Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Update Status to Draft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Rejected</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Status_to_Submitted</fullName>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Update Status to Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account Owner DS Email Update</fullName>
        <actions>
            <name>Update_DS_Email_Address</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Account_Owner__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <description>Get Account owner DS Email address from Account Owner User record</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Account owner Email Address Update</fullName>
        <actions>
            <name>Email_Address_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Request__c.Account_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Credit  Team Notification Rule</fullName>
        <actions>
            <name>Email_Credit_Team_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Rule to send emails to Polish Credit Team on Prospect conversion requests with requested Credit Limit field input</description>
        <formula>AND( Account__r.Requested_Credit_Limit__c &lt;&gt; 0,  Request_Type__c == &apos;Prospect Conversion&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
