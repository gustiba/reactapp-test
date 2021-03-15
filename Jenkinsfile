pipeline {
    agent any

    // environment {
    //     CI = true
    // }

    stages {
        // stages pertama
        stage ('Install depedencies react project'){
            steps{
                echo "Start install depedencies react project"
                sh "npm install"
            }
        }

        // stages kedua
        stage ('Test Project'){
            steps{
                echo "run test script"
                // sh 'chmod +x jenkins/scripts/test.sh'
                // sh './jenkins/scripts/test.sh'
            }
        }

        // stages tiga
        stage ('Build Project'){
            steps{
                sh 'npm run build'
            }
        }


        //stage empat
        stage ('build docker images'){
            steps{
                scripts{
                    app = docker.build("abitsugar/reactapp-test")
                }
            }
        }
    }
}