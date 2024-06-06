artifacts: 
  files: 
    - app.war
    # - appspec.yml
discard-paths: true
phases: 
  install:
    runtime-versions:
      java: corretto17
    commands: 
      - "apt-get install git unzip -y"
      - "chmod 700 build.sh"
      - "sh build.sh"
      - "mv ROOT.war app.war"
version: 0.2
