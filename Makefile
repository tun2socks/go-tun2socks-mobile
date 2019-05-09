GOMOBILE=gomobile
GOBIND=$(GOMOBILE) bind
BUILDDIR=$(shell pwd)/build
ARTIFACT=$(BUILDDIR)/Tun2socks.framework
LDFLAGS='-s -w'
IMPORT_PATH=github.com/eycorsican/go-tun2socks-ios

BUILD_CMD="cd $(BUILDDIR) && $(GOBIND) -a -ldflags $(LDFLAGS) -target=ios -tags ios -o $(ARTIFACT) $(IMPORT_PATH)"

all: $(ARTIFACT)

$(ARTIFACT):
	mkdir -p $(BUILDDIR)
	eval $(BUILD_CMD)

clean:
	rm -rf $(BUILDDIR)
