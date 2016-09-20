# CoreDataClass3
Step1.<br>New 2 Entities [1] UserData & [2] Car<br>

Step2.<br>Add Entities [1] UserData Attributes:<br>
           iid: String<br>
           cname: String<br><br>
       Add Entities [2] Car Attributes:<br>
           plate: String<br>
       
Step3.<br>Make Entities [1] UserData Relationships:<br>
           Name: own<br>
           Properties: [V] Optional  // each person can have no car<br>
           Destination: Car<br>
           Type: To Many // A person can own many cars<br><br>
       Make Entities [2] Car Relationships:<br>
           Name: belongto<br>
           Properties: [ ] Optional // A car must have an user<br>
           Destination: UserData<br>
           Inverse: own // The inverse relationship is own<br>
           Type: To One // A car is only belonged to an user<br>
           
Step4.<br>Chose 2 Entities and Editor> Create NSManagerObjectContext SubClass<br>
Step5.<br>ViewController.swift <br>
       func initData()<br>
