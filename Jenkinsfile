node {
    def image
    def registry = 'fake.docker.registry.com'

    stage('Clone') {
        checkout scm
    }

    stage('Build') {
        def sha = sh(returnStdout: true, script: 'git rev-parse HEAD').trim().take(6)
        image = "${registry}/jenkins-test:${sha}"
        sh "docker build -t ${image} ."
    }

    stage('Push') {
        sh "docker push ${image}"
    }
}
