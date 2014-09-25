@echo off
echo "Preparing Jenkins Agent"
IF NOT DEFINED SLAVE_HOME (
	echo "Need a server url. Usage is: spoon run image-name jekins-url slave-name"
	exit /b 1
)
cd %SLAVE_HOME%

if exist slave.jar del slave.jar

%spn_wget% %1/jnlpJars/slave.jar -O slave.jar

run-agent.bat