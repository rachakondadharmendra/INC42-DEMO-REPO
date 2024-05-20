pipeline {
    agent any

    stages {
        stage('Trigger Downstream Jobs') {
            parallel {
                stage('Trigger Downstream GO-LANG-CI Job') {
                    steps {
                        script {
                            echo 'Triggering Downstream GO-LANG-CI Job...'
                            def job1 = build job: 'GO-LANG-CI', wait: true
                            if (job1.result == 'SUCCESS') {
                                echo 'Downstream GO-LANG-CI Job completed successfully.'
                            } else {
                                error 'Downstream GO-LANG-CI Job failed!'
                            }
                        }
                    }
                }
                stage('Trigger Downstream NEXTJS-CI Job') {
                    steps {
                        script {
                            echo 'Triggering Downstream NEXTJS-CI Job...'
                            def job2 = build job: 'NEXTJS-CI', wait: true
                            if (job2.result == 'SUCCESS') {
                                echo 'Downstream NEXTJS-CI Job completed successfully.'
                            } else {
                                error 'Downstream NEXTJS-CI Job failed!'
                            }
                        }
                    }
                }
                stage('Trigger Downstream WORDPRESS-CI Job') {
                    steps {
                        script {
                            echo 'Triggering Downstream WORDPRESS-CI Job...'
                            def job3 = build job: 'WORDPRESS-CI', wait: true
                            if (job3.result == 'SUCCESS') {
                                echo 'Downstream WORDPRESS-CI Job completed successfully.'
                            } else {
                                error 'Downstream WORDPRESS-CI Job failed!'
                            }
                        }
                    }
                }
            }
        }
        stage('Deploy into Remote Server ') {
            steps {
                sshagent(credentials: ['ssh-key']) {
                    sh '''
                        ssh ubuntu@18.61.226.17 bash -c "'
                            cd Docker-files;
                            bash run.sh go-lang-ecr ;
                            bash run.sh nextjs-ecr ;
                            bash run.sh wordpress-ecr ;
                            docker-compose build;
                            docker-compose up -d
                        '"
                    '''
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline completed.'
        }
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
