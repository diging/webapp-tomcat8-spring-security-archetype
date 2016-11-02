# webapp-tomcat8-spring-security-archetype

This Maven archetype creates a basic Spring project using Servlet Spec 3.1 (Tomcat 8) and Spring Security. 

## Installation

  * To use the archetype, clone this repository and run `mvn install` to install the archetype in your local Maven repo. 
  * Then create a project from the new archetype by running:
  
    `mvn archetype:generate -DarchetypeGroupId=edu.asu.diging -DarchetypeArtifactId=webapp-tomcat8-spring-security-archetype -DarchetypeVersion=0.1 -DgroupId=<your-group-id> -DartifactId=<your-artifact-id>`
    
## Note for Eclipse Users

If you are using Eclipse and want to use Eclipse's New Project wizard, do the following:

  * Run `mvn install` on the project to install the project in your local Maven repo.
  * Select "File > New > Maven Project".
  * Click "Next" (make sure "Create a simple project" is not checked)
  * From your "Default Local" catalog select the new archetype.
  
If Eclipse throws an error saying a pom.xml is missing, try to restart Eclipse.
