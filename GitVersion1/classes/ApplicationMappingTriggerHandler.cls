/*
    Author              : Tumish Tak
    Email               : Tumish.Tak@cognizant.com
    Company             : Cognizant Technology Solutions
    Date Created        : 30-Jan-2017
    Description         : Handler class to get the value of NIS external system Account Id on corresponding Account in before insert and Update event.
                          Also to check the one to one Mapping for Marketing NIS system.
    Modified By         : -
    Modified Date       : -
*/
public class ApplicationMappingTriggerHandler 
{
    //After Insert Event Handler method
    public void onAfterInsert(List<Application_Mapping__c> appList)
    {    
         map<Id,Application_Mapping__c> amIdAccountIdmap = new map<Id,Application_Mapping__c>();
         set<Id> accIdset = new set<Id>();
         set<Id> UpdateaccIdset = new set<Id>();
         List<Account> accList = new List<Account>();
     List<Account> accUpdateList = new List<Account>();
         
         for(Application_Mapping__c am : appList)
         {   
            //amIdAccountIdset.add(am.Account__c);
            
            if(am.External_System__c == Label.NIS_Label){
               if(!amIdAccountIdmap.containskey(am.Account__c)){
                    amIdAccountIdmap.put(am.Account__c,am);
               } else {
               am.adderror('Duplicate NIS System mapping');
               }
                
            }
         }
 //Fetching existing NIS Accounts Details         
         List<Application_Mapping__c> appMappingList = [select Name,Id,Account__c,External_System__c,External_Record_num__c, Account__r.Name 
                                                        from Application_Mapping__c
                                                        where Account__c IN : amIdAccountIdmap.keyset()];
         
    if(!appMappingList.isEmpty()){
         
    for(Application_Mapping__c aml : appMappingList) {
             
             if(amIdAccountIdmap.containskey(aml.Account__c) && aml.External_System__c == Label.NIS_Label && amIdAccountIdmap.get(aml.Account__c).Id != aml.Id){
                 amIdAccountIdmap.get(aml.Account__c).addError('A NIS System mapping already exists for the Account ' +aml.Account__r.Name+ ' Please navigate to the existing Application Mapping record '+aml.Name+' and update the same instead of creating a new record');
                 amIdAccountIdmap.remove(aml.Account__c);
                 
             }
         }
    }
         
        if(!amIdAccountIdmap.isEmpty()){
          accList = [select Id,NIS_Account_Number__c 
                     from Account
                     where Id IN : amIdAccountIdmap.keyset()];
        
          for(Account ac : accList)
          {
             ac.NIS_Account_Number__c = amIdAccountIdmap.get(ac.id).External_Record_num__c;
         accUpdateList.add(ac);

              
          } 
 
          if(!accUpdateList.isEmpty()){
              Update accUpdateList;
          }
          
        }
    }
    
//Before Update Event Handler method

    public void onAfterUpdate(Map<Id,Application_Mapping__c> appOldMap,Map<Id,Application_Mapping__c> appNewMap)
    {    
         Map<Id,Application_Mapping__c> amapMap = new Map<Id,Application_Mapping__c>();
     map<Id,Id> UpdateAccountmap = new map<Id,Id>();
     map<Id,String> AccountNISmap = new map<Id,string>();   
     List<Account> accList = new List<Account>(); 
     List<Account> accUpdateList = new List<Account>();
     Set<Id> accclearSet = new set<Id>();  
          
         for(Application_Mapping__c am : appNewMap.values())
         {
             if((appOldMap.get(am.id).Account__c != am.Account__C || appOldMap.get(am.id).External_System__c != am.External_System__c || appOldMap.get(am.id).External_Record_num__c != am.External_Record_num__c))
             {
                if(am.External_System__c == Label.NIS_Label){
                    if(!UpdateAccountmap.containskey(am.Account__c)){
                    amapMap.put(am.Id,am);
                    UpdateAccountmap.put(am.Account__c,am.Id);
                    } else {
                        am.adderror('Duplicate NIS System mapping');
                    }
                }
                if(appOldMap.get(am.id).Account__c != am.Account__C || appNewMap.get(am.id).External_System__c != Label.NIS_Label){
                    accclearSet.add(appOldMap.get(am.id).Account__c);
                }            
             }
         }

     //Fetching existing NIS Accounts Details         
         List<Application_Mapping__c> appMappingList = [select Name,Id,Account__c,External_System__c,External_Record_num__c, Account__r.Name 
                                                        from Application_Mapping__c
                                                        where Account__c IN : UpdateAccountmap.Keyset()];
                                                                 
    if(!appMappingList.isEmpty()){
         
    for(Application_Mapping__c aml : appMappingList) {
    
        if(aml.External_System__c == Label.NIS_Label && UpdateAccountmap.get(aml.Account__c) != aml.Id){
            amapMap.get(UpdateAccountmap.get(aml.Account__c)).addError('A NIS System mapping already exists for the Account ' +aml.Account__r.Name+ ' Please navigate to the existing Application Mapping record '+aml.Name+' and update the same instead of creating a new record');
                }else {
            AccountNISmap.put(aml.Account__c,aml.External_Record_num__c);
        
        }       
        }
    
    if(!AccountNISmap.isEmpty()){
          accList = [select Id,NIS_Account_Number__c 
                     from Account
                     where Id IN : AccountNISmap.keyset()];
        
          for(Account ac : accList)
          {
             ac.NIS_Account_Number__c = AccountNISmap.get(ac.id);
         accUpdateList.add(ac);
              
          } 
 
          if(!accUpdateList.isEmpty()){
              Update accUpdateList;
          }
          
        }
        }   
        if(!accclearSet.isEmpty()){
                  List<Account> AccountClearList = [select Id, NIS_Account_Number__c 
                                                        from Account
                                                        where Id IN : accclearSet];
            List<Account> AccountClearUpdList = new List<Account>();
            for(Account ac : AccountClearList ){  
                ac.NIS_Account_Number__c='';
                AccountClearUpdList.add(ac);            
            }
            if(!AccountClearUpdList.isEmpty()){
              Update AccountClearUpdList;
            }                                             
        }      

       }   
       
       public void onAfterDelete(List<Application_Mapping__c> appList)
       {
           set<Id> accIdset = new set<Id>();
           List<Account> accList = new List<Account>();
           
           for(Application_Mapping__c am: appList)
           {
               if(am.External_System__c == Label.NIS_Label)
               {
                   accIdset.add(am.Account__c);
               }
           }
           
           If(!(accIdset.isEmpty()))
           {
               accList = [select Id,NIS_Account_Number__c 
                          from Account
                          where Id IN : accIdset];
                          
               for(Account ac : accList)
               {
                   ac.NIS_Account_Number__c = '';
               }           
           Update accList;               
           }
       }     
}