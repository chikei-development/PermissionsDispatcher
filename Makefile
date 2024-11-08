define CMD_ECHO_OFF
@echo off

endef
export CMD_ECHO_OFF

TARGET_SDK=34

classpath.cmd:
	@echo "$${CMD_ECHO_OFF}$${ANDROID_HOME}\\platforms\\android-$(TARGET_SDK)\\android.jar" > classpath.cmd

.PHONY: clean
clean:
	rm classpath.cmd

.PHONY: publish
publish:
	gradlew publishToMavenLocal -x signMavenPublication
