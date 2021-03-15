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
                script {
                    app = docker.build("hisbu/reactapp-jcde")
                }
            }
        }

        //=====> TEST IMAGE SEBELUM DEPLOY KE PRODUCTION

        //stage lima
        stage ('test docker image'){
            steps{
                sh 'docker run -d --rm --name testimage -p 8080:80 hisbu/reactapp-jcde'
                input message: "Finish test image? (Click proceed to continue)"
            }
        }

        //stage enam
        stage ('clean up docker'){
            steps{
                sh 'docker stop testimage'
            }
        }
    }
}