pipeline {

    agent any

    environment {

        AWS_DEFAULT_REGION='us-east-1'

    }

    stages {

        stage('Test run') {

            steps {

                echo "Production Deployment with Schemachange"

            }

        }

        stage('Get Schemachange') {

            steps {

                sh "git clone https://github.com/Snowflake-Labs/schemachange.git"

            }

        }

        stage('Run schema change') {

            steps {

                withCredentials([aws(accesskeyVaribale:'AWS_ACCESS_KEY_ID',credentialsId:'<aws-creds-uname-in-jenkins>',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]) {

                    sh "python3 -m pip install schemachange --upgrade"

                    sh "python3 schemachange/schemachange/cli.py deploy -f migrations -a ${SF_ACCOUNT} -u ${SF_USERNAME} -r ${SF_ROLE} -w ${SF_WAREHOUSE} -d ${SF_DATABASE} -c ${SF_DATABASE}.SCHEMACHANGE.CHANGE_HISTORY --create-change-history-table"

                }            

            }

        }

    }

}