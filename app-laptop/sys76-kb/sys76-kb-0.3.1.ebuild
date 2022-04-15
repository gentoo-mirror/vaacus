# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

EGO_SUM=(
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/armon/consul-api v0.0.0-20180202201655-eb2c6b5be1b6/go.mod"
	"github.com/coreos/etcd v3.3.10+incompatible/go.mod"
	"github.com/coreos/go-etcd v2.0.0+incompatible/go.mod"
	"github.com/coreos/go-semver v0.2.0/go.mod"
	"github.com/cpuguy83/go-md2man v1.0.10/go.mod"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/hashicorp/hcl v1.0.0/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/magiconair/properties v1.8.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/mapstructure v1.1.2/go.mod"
	"github.com/pelletier/go-toml v1.2.0/go.mod"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/russross/blackfriday v1.5.2/go.mod"
	"github.com/spf13/afero v1.1.2/go.mod"
	"github.com/spf13/cast v1.3.0/go.mod"
	"github.com/spf13/cobra v0.0.5"
	"github.com/spf13/cobra v0.0.5/go.mod"
	"github.com/spf13/jwalterweatherman v1.0.0/go.mod"
	"github.com/spf13/pflag v1.0.3"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/spf13/viper v1.3.2/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/ugorji/go/codec v0.0.0-20181204163529-d75b2dcb6bc8/go.mod"
	"github.com/xordataexchange/crypt v0.0.3-0.20170626215501-b2862e3d0a77/go.mod"
	"golang.org/x/crypto v0.0.0-20181203042331-505ab145d0a9/go.mod"
	"golang.org/x/sys v0.0.0-20181205085412-a5c9d58dba9a/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
)

go-module_set_globals

DESCRIPTION="RGB keyboard controller for System76 laptops"
HOMEPAGE="https://github.com/bambash/sys76-kb"
SRC_URI="https://github.com/bambash/${PN}/archive/refs/tags/v${PV}.tar.gz
		${EGO_SUM_SRC_URI}"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	ego build
}

src_install() {
	dobin sys76-kb
	default
}
