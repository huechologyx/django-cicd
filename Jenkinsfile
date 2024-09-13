pipeline{

    agent { node { label 'dev-chatbot-admin-backend' } }

    stages {


        stage('setup python virtual ENV')
        {
            steps{
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''        
             }
        }


        stage('setup gunicorn setup')
        {
            steps{
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }


        // stage('setup nginx')
        // {
        //     steps{
        //         sh '''
        //         chmod +x nginx.sh
        //         ./nginx.sh
        //         '''
        //     }
        
        // }


    }

}
