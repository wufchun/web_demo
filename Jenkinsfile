pipeline {
    agent any
    stages {
        stage('拉取代码') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git_ssh', url: 'git@github.com:wufchun/web_demo.git']])
            }
        }
    stage('编译构建') {
        steps {
            sh 'mvn clean package'
         }
      }
    stage('项目部署') {
        steps {
           deploy adapters: [tomcat8(credentialsId: 'tomcat', path: '', url: 'http://192.168.31.101:8080/')], contextPath: null, war: 'target/*.war'
            }
        }
    }
}