echo "Starting Jenkins Agent"

IF NOT DEFINED SLAVE_HOME (
	echo "Need a server url. Usage is: spoon run image-name jekins-url slave-name"
	exit /b 1
)

cd %SLAVE_HOME%

IF "%1"=="" (
	echo "Need a server url. Usage is: spoon run image-name jekins-url slave-name"
	exit /b 1
)
IF "%2"=="" (
	echo "Needs a slave name"
	exit /b 1
)

if not exist %SLAVE_HOME%\slave.jar (
	echo "Missing %SLAVE_HOME%\slave.jar. Download it please from %1/jnlpJars/slave.jar"
	exit /b 1
)


:start-agent
echo "%JAVA_HOME%\bin\java" -jar  %SLAVE_HOME%\slave.jar -jnlpUrl %1/computer/%2/slave-agent.jnlp
"%JAVA_HOME%\bin\java" -jar %SLAVE_HOME%\slave.jar -jnlpUrl %1/computer/%2/slave-agent.jnlp