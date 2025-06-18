pipeline {
    agent any
      environment {
        PROJECT = 'expense'
        COMPONENT = 'backend'
        appVersion = ''
      }

      parameters {
        string(name: 'ACTION', defaultValue: 'DEPLOY', description: 'THIS IS FOR DEPLOYING CONFIRMATION')
        choices(name: 'ENV', choices: ['DEV', 'TEST', 'PROD'], description: 'CHOOSE THE ENV')
        booleanparam(name: 'single-stage', defaultValue: true, description: 'choosing pipeline type')
      }

        options {
            disableConcurrentBuilds()
            timeout(time: 5, unit: 'MINUTES')
        }

      
        stages {
            stage('Read version' ) {
                steps {
                    script {
                        def packageJson = readJSON file: 'package.json'
                        appVersion = packageJson.version
                        echo "Version is: $appVersion"
                    }

                }
            }
            stage('dependents') {
                steps {
                    script {
                        sh """
                        npm install
                        """
                    }
                }
            }
            stage('docker build') {
                steps {
                    script {
                        sh """
                        docker build -t backend:1.0 .
                        """
                    }
                }
            }
            stage('rename the tag') {
                steps {
                    script {
                        sh """
                        docker tag backend:1.0 lakshmikanth333/nodedocker:2.0
                        """
                    }
                }
            }
        }
        post {
            success {
                echo "pipeline succeeded"
            }
            failure {
                echo "pipeline failed"
            }
            always {
                echo "doesnt matter too me, i alwys show up phew wheew a h yo"
                deletedir()
            }
        }
}


