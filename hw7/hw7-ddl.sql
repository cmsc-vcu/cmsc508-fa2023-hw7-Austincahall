# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int not null,
    skills_name varchar(255) not null,
    skills_description varchar(255) not null,
    skills_tag varchar(255) not null,
    skills_url varchar(255),
    skills_time_commitment int,
    PRIMARY KEY (skills_id)
);


#select * from skills;

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag ) values
(1,'kick boxing', 'skill to fight using hand and feet', 'skill 1'),
(2,'coding', 'ability to problem solve in computer languages', 'skill 2'),
(3,'Spanish speaking', 'ability to talk in spanish with anyone', 'skill 3'),
(4,'singing', 'Being capable of making anyone cover their ears on the metro at ~ 2 in the morning', 'skill 4'),
(5,'rock climbing', 'the ability to defy gravity and go where no man has gone, for good reason mostly', 'skill 5'),
(6,'cooking', 'being capable of feeding oneself or many without the oven, because thats for baking', 'skill 6'),
(7,'hunting', 'rumaging through the forest early at night and not finding anything', 'skill 7'),
(8,'building', 'ability to use nature to construct un-naturally comfy pillows', 'skill 8')



# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int,
    people_first_name varchar(255),
    people_last_name varchar(256) NOT NULL,
    people_email varchar(255),
    people_linkedin_url varchar(255),
    people_headshoturl varchar(255),
    people_discord_handle varchar(255),
    people_brief_bio varchar(255),
    people_date_joined date,
    PRIMARY KEY (people_id)
);
#SELECT * FROM people;

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id,people_first_name,people_discord_handle,people_date_joined, people_last_name) values 
  (1, 'Ted', 'Mosby', '2005-09-19','Person 1'),
  (2, 'Robin', 'Scherbatsky', '2006-09-19','Person 2'),
  (3, 'Marshall', 'Eriksen', '2000-09-19','Person 3'),
  (4, 'Lily', 'Aldrin', '2000-09-19','Person 4'),
  (5, 'Barney', 'Stinson', '2005-09-19','Person 5'),
  (6, 'Tracy', 'McConnell', '2013-05-27','Person 6');

#SELECT * FROM people;

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    peopleskills_id INT AUTO_INCREMENT,
    peopleskills_skills_id INT NOT NULL,
    peopleskills_people_id INT NOT NULL,
    peopleskills_date_acquired DATE NOT NULL,
    PRIMARY KEY (peopleskills_id)
);

#SELECT * FROM peopleskills;

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)



# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

