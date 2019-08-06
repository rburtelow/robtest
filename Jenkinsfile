node {
   stage('init') {
      checkout scm
   }
   stage('build') {
      sh '''
         mvn clean package
         cd target
         mv robtest.war ROOT.war
         
    '''     
   }
   stage('deploy') {
      azureWebAppPublish azureCredentialsId: env.AZURE_CRED_ID,
      resourceGroup: env.RES_GROUP, appName: env.WEB_APP, filePath: "target/ROOT.war"
   }
}
