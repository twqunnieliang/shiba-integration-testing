# Introduction 
A short guide on using Postman, Azure Pipeline, and Shell Script to automate integration testing.

# Getting Started
1) Planned and designed test scripts
    * Design the test coverage.
    * Prepared the golden answer of each API. (status code, response context)
    * Developed test scripts on Postman to validate whether the response status code and content matched the corresponding golden answer.
    * Placed test scripts, golden answers and other related files to the staging server.

![image](https://github.com/twqunnieliang/shiba-integration-testing/blob/main/image/test-coverage.png)
_# test coverage sample_

2) Staging Server & Azure Pipeline
    * Ensured the stable connection between the staging server and Azure Pipeline agent.
    * Sequence diagram
![image](https://github.com/twqunnieliang/shiba-integration-testing/blob/main/image/automated%20integration%20test%20sequence%20diagram.png)
