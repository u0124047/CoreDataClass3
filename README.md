# CoreDataClass3
Step1. New 2 Entities [1] UserData & [2] Car<br>

Step2. Add Entities [1] UserData Attributes:<br>
           iid: String<br>
           cname: String<br>
       Add Entities [2] Car Attributes:<br>
           plate: String<br>
       
Step3. Make Entities [1] UserData Relationships:<br>
           Name: own<br>
           Properties: [V] Optional  // each person can have no car<br>
           Destination: Car<br>
           Type: To Many // A person can own many cars<br>
       Make Entities [2] Car Relationships:<br>
           Name: belongto<br>
           Properties: [ ] Optional // A car must have an user<br>
           Destination: UserData<br>
           Inverse: own // The inverse relationship is own<br>
           Type: To One // A car is only belonged to an user<br>
           
Step4. Chose 2 Entities and Editor> Create NSManagerObjectContext SubClass<br>
Step5. ViewController.swift <br>
       func initData()<br>
