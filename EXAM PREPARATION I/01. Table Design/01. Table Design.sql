CREATE TABLE users(id INT(11) AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30) UNIQUE NOT NULL,
password VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL);

CREATE TABLE repositories(id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL);

CREATE TABLE repositories_contributors(
repository_id INT(11), 
contributor_id INT(11));

CREATE TABLE issues(id INT(11) PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
issue_status VARCHAR(6) NOT NULL,
repository_id INT(11) NOT NULL,
assignee_id INT(11) NOT NULL);

CREATE TABLE commits(id INT(11) PRIMARY KEY AUTO_INCREMENT,
message VARCHAR(255) NOT NULL,
issue_id INT(11),
repository_id INT(11) NOT NULL,
contributor_id INT(11) NOT NULL);

CREATE TABLE files(id INT(11) PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
size DECIMAL(10,2) NOT NULL,
parent_id INT(11),
commit_id INT(11) NOT NULL);



ALTER TABLE repositories_contributors
ADD CONSTRAINT FK_repositories_contributors_repository_id
FOREIGN KEY (repository_id) REFERENCES repositories(id);

ALTER TABLE repositories_contributors
ADD CONSTRAINT FK_repositories_contributors_user_id
FOREIGN KEY (contributor_id) REFERENCES users(id);



ALTER TABLE issues
ADD CONSTRAINT FK_issues_repositories_id
FOREIGN KEY (repository_id) REFERENCES repositories(id);

ALTER TABLE issues
ADD CONSTRAINT FK_issues_users_id
FOREIGN KEY (assignee_id) REFERENCES users(id);



ALTER TABLE commits
ADD CONSTRAINT FK_commits_issues_id
FOREIGN KEY (issue_id) REFERENCES issues(id);

ALTER TABLE commits
ADD CONSTRAINT FK_commits_repositories_id
FOREIGN KEY (repository_id) REFERENCES repositories(id);

ALTER TABLE commits
ADD CONSTRAINT FK_commits_users_id
FOREIGN KEY (contributor_id) REFERENCES users(id);



ALTER TABLE files
ADD CONSTRAINT FK_files_files_id
FOREIGN KEY (parent_id) REFERENCES files(id);

ALTER TABLE files
ADD CONSTRAINT FK_files_commits_id
FOREIGN KEY (commit_id) REFERENCES commits(id);