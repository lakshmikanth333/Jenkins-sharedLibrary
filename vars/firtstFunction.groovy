def call(Map configMap) {
    pipeline {
        environment {
            PROJECT = configMap.get('project')
        }
        agent any
        stages {
            stage('first') {
                steps {
                    script {
                        sh """
                        echo "hell"
                        """
                    }
                }
            }
        }
    }
}