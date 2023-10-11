pipeline {
    agent { node { label 'AGENT-1' } }
    stages {
        stage('Deploy'){
            steps{
                echo "Deploying..."
            }
        }
    }

    post{
        always{
            echo 'cleaning up workspace'
            deleteDir()
        }
    }
}