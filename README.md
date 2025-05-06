# Introduction 
A short guide on using Postman, Azure Pipeline, and Shell Script to automate integration testing.

# Getting Started
1) Planned and designed test scripts
    1.1) Prepared the golden answer of each API. (status code, response context)
    1.2) Developed test scripts on Postman to validate whether the response status code and content matched the corresponding golden answer.
    1.3) Placed test scripts, golden answers and other related files onto the staging server.

[test script sample]
![image](https://github.com/twqunnieliang/shiba-integration-testing/blob/main/image/test-coverage.png)

2) Staging Server & Azure Pipeline
    2.1) Ensured the stable connection between the staging server and Azure Pipeline agent.

# Build and Test
TODO: Describe and show how to build your code and run the tests. 
