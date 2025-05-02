VERSION = 0.14.0
UPSTREAM = https://github.com/prometheus-community/smartctl_exporter

fetch-source:
    git clone --depth 1 --branch v$(VERSION) $(UPSTREAM) smartctl-exporter-$(VERSION)

build:
    cd smartctl-exporter-$(VERSION) && \
    dpkg-buildpackage -us -uc -b

clean:
    rm -rf smartctl-exporter-* *.deb *.buildinfo *.changes *.dsc *.tar.*
