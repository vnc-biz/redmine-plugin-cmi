
PLUGIN_NAME=cmi
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app		\
	AUTHORS.txt	\
	config		\
	COPYRIGHT.txt	\
	db		\
	init.rb		\
	lib		\
	LICENSE.txt	\
	Rakefile	\
	README.rdoc	\
	test

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
