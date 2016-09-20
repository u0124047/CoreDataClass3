# CoreDataClass3
Step1. New 2 Entities [1] UserData & [2] Car

Step2. Add Entities [1] UserData Attributes:
           iid: String
           cname: String
       Add Entities [2] Car Attributes:
           plate: String
       
Step3. Make Entities [1] UserData Relationships:
           Name: own
           Properties: [V] Optional  // each person can have no car
           Destination: Car
           Type: To Many // A person can own many cars
       
       Make Entities [2] Car Relationships:
           Name: belongto
           Properties: [ ] Optional // A car must have an user
           Destination: UserData
           Inverse: own // The inverse relationship is own
           Type: To One // A car is only belonged to an user
Step4. Chose 2 Entities and Editor> Create NSManagerObjectContext SubClass
Step5. ViewController.swift 
       func initData()
