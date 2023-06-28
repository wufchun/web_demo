<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>演示项目主页</title>
</head>
<body>
这是dev分支代码
<%--如果看到此页面，代表项目部署成功啦！--这是master分支--%>
<%--<a href="/addUser">添加用户</a>--%>
<%--<hr/>--%>
<%--<a href="/updateUser">修改用户</a>--%>
<%--<hr>--%>
<%--<a href="deleteUser">删除用户</a>--%>
<%--<a href="/findUser">查询用户</a>--%>
</body>
</html>
<%--pipeline {--%>
<%--    agent any--%>
<%--    stages {--%>
<%--        stage('拉取代码') {--%>
<%--    steps {--%>
<%--        checkout([$class: 'GitSCM', branches: [[name: '*/master']],--%>
<%--        doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [],--%>
<%--        userRemoteConfigs: [[credentialsId: '68f2087f-a034-4d39-a9ff-1f776dd3dfa8', url:--%>
<%--        'git@192.168.66.100:itheima_group/web_demo.git']]])--%>
<%--            }--%>
<%--         }--%>
<%--    stage('编译构建') {--%>
<%--        steps {--%>
<%--        sh label: '', script: 'mvn clean package'--%>
<%--            }--%>
<%--        }--%>
<%--    stage('项目部署') {--%>
<%--        steps {--%>
<%--            deploy adapters: [tomcat8(credentialsId: 'afc43e5e-4a4e-4de6-984fb1d5a254e434', path: '', url: 'http://192.168.66.102:8080')], contextPath: null,--%>
<%--            war: 'target/*.war'--%>
<%--            }--%>
<%--        }--%>
<%--    }--%>
<%--}--%>



<%--pipeline {--%>
<%--agent any--%>

<%--stages {--%>
<%--stage('pull code') {--%>
<%--steps {--%>
<%--checkout([$class: 'GitSCM', branches: [[name: '*/${branch}']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'b632ed00-fc81-43c8-a746-5aa0673b2658', url: 'git@192.168.66.100:itheima_group/web_demo.git']]])--%>
<%--}--%>
<%--}--%>
<%--stage('code checking') {--%>
<%--steps {--%>

<%--script {--%>
<%--//引入SonarQubeScanner工具--%>
<%--scannerHome = tool 'sonar-scanner'--%>
<%--}--%>
<%--//引入SonarQube的服务器环境--%>
<%--withSonarQubeEnv('sonarqube') {--%>
<%--sh "${scannerHome}/bin/sonar-scanner"--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--stage('build project') {--%>
<%--steps {--%>
<%--sh 'mvn clean package'--%>
<%--}--%>
<%--}--%>
<%--stage('publish project') {--%>
<%--steps {--%>
<%--deploy adapters: [tomcat8(credentialsId: 'fc23e5b7-9930-4dfb-af66-a2a576be52fb', path: '', url: 'http://192.168.66.102:8080')], contextPath: null, war: 'target/*.war'--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--post {--%>
<%--always {--%>
<%--emailext(--%>
<%--subject: '构建通知：${PROJECT_NAME} - Build # ${BUILD_NUMBER} - ${BUILD_STATUS}!',--%>
<%--body: '${FILE,path="email.html"}',--%>
<%--to: '1014671449@qq.com'--%>
<%--)--%>
<%--}--%>
<%--}--%>
<%--}--%>