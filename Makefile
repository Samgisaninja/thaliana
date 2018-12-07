include $(THEOS)/makefiles/common.mk

export TARGET = iphone:clang:11.2:11.0
export ARCHS = arm64

BUNDLE_NAME = thaliana
thaliana_BUNDLE_EXTENSION = bundle
thaliana_FILES = thaliana.m
thaliana_PRIVATE_FRAMEWORKS = ControlCenterUIKit
thaliana_INSTALL_PATH = /Library/ControlCenter/Bundles/

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/bundle.mk
