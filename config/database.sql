CREATE TABLE IF NOT EXISTS `helprequest`  (
  `RequestID` INT NOT NULL,
  `StudentID` INT NOT NULL,
  `DateCreated` DATETIME NOT NULL,
  `Done` BOOLEAN NOT NULL,
  PRIMARY KEY (`RequestID`)
  );

CREATE TABLE IF NOT EXISTS student (
    StudentID 	    INT 			NOT NULL PRIMARY KEY,
    Name 	        VARCHAR(200) 	NOT NULL,
    Email 	        VARCHAR(100)    NOT NULL,
    Password	    varbinary(50)			,
    School 		    VARCHAR(200)	,
    ProfilePic      VARCHAR(200)    ,
    TeacherID       INT             ,
    DateOfBirth     DATE,
    ConteactNumber   VARCHAR(15)    
);

CREATE TABLE IF NOT EXISTS teacher (
    TeacherID       INT             PRIMARY KEY,
    Name 	        VARCHAR(200) 	NOT NULL,
    Email 	        VARCHAR(100)    NOT NULL,
    Password	    varbinary(50)			,
    School 		    VARCHAR(200)	,
    ProfilePic      VARCHAR(200)    ,
    DateOfBirth     DATE,
    ConteactNumber   VARCHAR(15)     
);

CREATE TABLE IF NOT EXISTS progressHistory (
    StudentID 	    INT 			NOT NULL ,
    ProjectID       INT             NOT NULL ,
    DateStated      DATE,
    DateSubmitted   DATE,
    DateCompleted   DATE,
    Submission      VARCHAR(200),
    PRIMARY KEY (StudentID,ProjectID)

);

CREATE TABLE IF NOT EXISTS project (
    ProjectID 	    INT 			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name 	        VARCHAR(50) 	NOT NULL,
    LearningObjectibe   VARCHAR(200),
    ActivityType    VARCHAR(20),
    Year            INT,
    Course          VARCHAR(20),
    Subscription    VARCHAR(20),
    Instructions    LONGTEXT,
    Video           Varchar(200),
    SubjectMatter1  VARCHAR(20),
    SubjectMatter2  VARCHAR(20),
    SubjectMatter3  VARCHAR(20)

);

ALTER TABLE helprequest ADD CONSTRAINT FOREIGN KEY (`StudentID`) REFERENCES student(`StudentID`);
ALTER TABLE student ADD CONSTRAINT FOREIGN KEY (`TeacherID`) REFERENCES teacher(`TeacherID`);
ALTER TABLE progressHistory ADD CONSTRAINT FOREIGN KEY (`StudentID`) REFERENCES student(`StudentID`);
ALTER TABLE progressHistory ADD CONSTRAINT FOREIGN KEY (`ProjectID`) REFERENCES project(`ProjectID`);





INSERT INTO project (ProjectID, Name, LearningObjective)
VALUES ('1','John','<div class="LOcontainer">
        <div class="LOtitleWrapper">
          <div class="LOtitle">Explore Scratch blocks</div>
          <div class="LOText">
            Learn the basic function of some basic scratch blocks such as "Say",
            "wait", "go to" and
          </div>
        </div>
        <div class="LOBlocksContainer">
          <div class="LOBlocksLeft">
            <div class="LOSubtitle">Look Blocks</div>
            <div class="LookBlockWrapper">
              <div class="LookBlockLeft">
                <img
                  src="../Images/Student Areas/Screen Shot 2020-04-29 at 9.09.52 PM@2x.png"
                  alt="#"
                ></img>
              </div>
              <div class="LookBlockRight">
                <img
                  src="../Images/Student Areas/Screen Shot 2020-04-25 at 11.30.04 PM@2x.png"
                  alt="#"
                ></img>
                <img
                  class="LookBlockRightPIC2"
                  src="../Images/Student Areas/Screen Shot 2020-04-25 at 11.32.03 PM@2x.png"
                  alt="#"
                ></img>
              </div>
            </div>
          </div>
          <div class="LOBlocksMiddle">
            <div class="LOSubtitle">Control Blocks</div>
            <div class="ControlBlockWrapper">
              <div class="ControlBlockLeft">
                <img
                  src="../Images/Student Areas/Screen Shot 2020-04-29 at 9.10.19 PM@2x.png"
                  alt="#"
                ></img>
              </div>
              <div class="ControlBlockRight">
                <img
                  src="../Images/Student Areas/Screen Shot 2020-04-25 at 11.30.43 PM@2x.png"
                  alt="#"
                ></img>
              </div>
            </div>
          </div>
          <div class="LOBlocksRight">
            <div class="LOSubtitle">Motion Blocks</div>
            <div class="MotionBlockWrapper">
              <div class="MotionBlockLeft">
                <img
                  src="../Images/Student Areas/Screen Shot 2020-04-29 at 9.10.04 PM@2x.png"
                  alt="#"
                ></img>
              </div>
              <div class="MotionBlockRight">
                <img
                  src="../Images/Student Areas/Screen Shot 2020-04-25 at 11.30.57 PM@2x.png"
                  alt="#"
                ></img>
              </div>
            </div>
          </div>
        </div>
      </div>
      ;');


-- DELETE FROM project
-- WHERE projectID = 1;