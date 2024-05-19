pipeline {
    agent any

    stages {
        stage('Trigger Downstream Jobs') {
            parallel {
                stage('Trigger Downstream Job 1') {
                    steps {
                        script {
                            echo 'Triggering Downstream Job 1...'
                            def job1 = build job: 'Go-Lang-Builder', wait: true
                            if (job1.result == 'SUCCESS') {
                                echo 'Downstream Job 1 completed successfully.'
                            } else {
                                error 'Downstream Job 1 failed!'
                            }
                        }
                    }
                }
                stage('Trigger Downstream Job 2') {
                    steps {
                        script {
                            echo 'Triggering Downstream Job 2...'
                            def job2 = build job: 'Wordpress-PHP-Builder', wait: true
                            if (job2.result == 'SUCCESS') {
                                echo 'Downstream Job 2 completed successfully.'
                            } else {
                                error 'Downstream Job 2 failed!'
                            }
                        }
                    }
                }
                stage('Trigger Downstream Job 3') {
                    steps {
                        script {
                            echo 'Triggering Downstream Job 3...'
                            def job3 = build job: 'Nextjs-Typescript-Builder', wait: true
                            if (job3.result == 'SUCCESS') {
                                echo 'Downstream Job 3 completed successfully.'
                            } else {
                                error 'Downstream Job 3 failed!'
                            }
                        }
                    }
                }
            }
        }
        stage('Execute Task After Jobs') {
            steps {
                echo 'All downstream jobs completed successfully. Executing the task...'
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
