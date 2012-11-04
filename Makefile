CHROME=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

FACEBOOK=facebook_share_intent
YAMMER=yammer_share_intent

$(FACEBOOK).crx: $(FACEBOOK)/*
	$(CHROME) --pack-extension=$(FACEBOOK) --pack-extension-key=$(FACEBOOK).pem

$(YAMMER).crx: $(YAMMER)/*
	$(CHROME) --pack-extension=$(YAMMER) --pack-extension-key=$(YAMMER).pem
