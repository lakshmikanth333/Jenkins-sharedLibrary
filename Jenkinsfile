// pipeline {
//     agent any
//       environment {
//         PROJECT = 'expense'
//         COMPONENT = 'backend'
//         ACC= 'aws'
//         appVersion = ''
//       }
//       parameters {
//         string(name: 'action', defaultValue: 'deploy')
//         choice(name: 'env', choices: ['dev', 'test', 'prod'])
//         booleanParam(name: 'single-pipeline', defaultValue: true)
//       }

//         options {
//             disableConcurrentBuilds()
//             timeout(time: 5, unit: 'MINUTES')
//         }

      
//         stages {
//             stage('Read version' ) {
//                 steps {
//                     script {
//                         def packageJson = readJSON file: 'package.json'
//                         appVersion = packageJson.version
//                         echo "Version is: $appVersion"
//                     }

//                 }
//             }
//             stage('dependents') {
//                 steps {
//                     script {
//                         sh """
//                         npm install
//                         """
//                     }
//                 }
//             }
//             stage('docker build') {
//                 steps {
//                     script {
//                         sh """
//                         docker build -t backend:1.0 .
//                         """
//                     }
//                 }
//             }
//             stage('rename the tag') {
//                 steps {
//                     script {
//                         sh """
//                         docker tag backend:1.0 lakshmikanth333/nodedocker:2.0
//                         """
//                     }
//                 }
//             }
//         }
//         post {
//             success {
//                 echo "pipeline succeeded"
//             }
//             failure {
//                 echo "pipeline failed"
//             }
//             always {
//                 echo "doesnt matter too me, i alwys show up phew wheew a h yo"
//                 deletedir()
//             }
//         }
// }


pipeline {
    agent any
    stages {
        stage('echo') {
            steps {
                script {
                    echo "hello world"
                }
            }
        }
    }
}