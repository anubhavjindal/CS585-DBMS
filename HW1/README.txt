TABLE DESIGN AND ASSUMPTIONS  
- There is one specialisation heirarchy between ROOM and LIBRARY. Since both the hierarchies have only one subtype, 
  we have omitted disjoint/overlap designation.
- To keep track of if a ROOM is LIBRARY or not, we use a isLibrary field whose value is "True" if the ROOM is a 
  LIBRARY else "False"
- A part has a unique id to identify it. i.e. each Arduino Microcontroller can be identified and hence not all Arduino
  Microcontrollers are the same.
- Each project is overseen by a single instructor.
- An instructor specifies no more than 1 textbook. 
- A class will only be offered if atleast one student wants to take it. i.e. each class will have a minimum of 1 student.
- A project will only be offered if atleast one student wants to take it. i.e. each project will have a minimum of 1 student
- An instructor teaches atleast 1 class.
- An instructor specifies no more than 1 textbook.
- A room can either host a class, or multiple projects. It a class is hosted in a room, it cannot host any project. 
- A project will only take place on 1 table and each table will have only 1 storage box.



RELATIONSHIP JUSTIFICATION
- STUDENT and CLASS (M:N) : A student can enroll in many classes and a class can have many students.
- STUDENT and PROJECT (M:N) : A student can enroll in many projects and a project can have many students.
- STUDENT and RATING (1:M) : A student can give many ratings but an individual rating can be given by only 1 student.
- STUDENT and BOOk (1:M) : A student can issue multiple books but a single book can be issued by 1 student.
- PROJECT and PART (1:M) : A project can have multiple parts but an individual part with a unique id can be present in 
  one project.
- ONLINESUPPLIER and PART (1:M) : An online supplier can provide multiple parts but a unique part can come from a single
  online supplier.
- INSTRUCTOR and PROJECT (1:M) : An instructor can oversee multiple projects but a project is overseen but a 1 instructor
- INSTRUCTOR and CLASS (M:N) : An instructor can teach many classes and a class can be taught by multiple instructors.
- TEXTBOOK and INSTRUCTOR (1:M) : A textbook can be specified by many instructors but an instructor specifies 1 textbook.
- TEXTBOOK and CLASS (M:N) : A textbook can be used in multiple classes and a class can have multiple textbooks specified
  by different instructors who teach the class. 
- LIBRARY and BOOK (1:M) : A Library contains many books but a book will be at the same library.
- CLASS and ROOM (1:1) : A class be in organised in 1 room and a room can only host 1 class.
- PROJECT and ROOM (1:M) : A project can be organised in 1 room but a room can have many projects. 
- PROJECT and RATING (1:M) : A project can have multiple ratings but a unique rating will concern only 1 project.
- CLASS and RATING (1:M) : A class can have multiple ratings but a unique rating will concern only 1 class.
- INSTRUCTOR and RATING (1:M) : An instructor can have multiple ratings but a unique rating will concern only 1 instructor.


BRIDGE TABLES
I created 5 bridge tables by breaking down M:N relationships into 2 1:M relationships
- Instructor_teaches : A bridge table between INSTRUCTOR and CLASS
- Student_SignsUp : A bridge table between STUDENT and PROJECT
- Student_Enrolls : A bridge table between STUDENT and CLASS
- Has : A bridge table between CLASS and TEXTBOOK
- RATING : A bridge table between STUDENT, CLASS, INSTRUCTOR, and PROJECT. Apart from Primary Keys and Foreign Keys it 
  has a field of Score which stores the actual result. The R_ID is ClassId if type is CLASS, or it is ProjectId if type
  is PROJECT or it is InstructorId if type is INSTRUCTOR.