LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=\
	./src/disco.cpp \
	./src/gpgencrypted.cpp \
	./src/privacymanager.cpp \
	./src/gloox.cpp \
	./src/iodata.cpp \
	./src/connectiontcpbase.cpp \
	./src/connectionbosh.cpp \
	./src/attention.cpp \
	./src/gpgsigned.cpp \
	./src/stanza.cpp \
	./src/tlsgnutlsclient.cpp \
	./src/mucroom.cpp \
	./src/tlsopensslbase.cpp \
	./src/messageeventfilter.cpp \
	./src/dataformfield.cpp \
	./src/base64.cpp \
	./src/siprofileft.cpp \
	./src/util.cpp \
	./src/tlsschannel.cpp \
	./src/subscription.cpp \
	./src/tlsopensslclient.cpp \
	./src/instantmucroom.cpp \
	./src/receipt.cpp \
	./src/registration.cpp \
	./src/tlsopensslserver.cpp \
	./src/iq.cpp \
	./src/connectionsocks5proxy.cpp \
	./src/pubsubitem.cpp \
	./src/vcard.cpp \
	./src/xhtmlim.cpp \
	./src/tlsgnutlsbase.cpp \
	./src/jinglesession.cpp \
	./src/stanzaextensionfactory.cpp \
	./src/connectiontcpclient.cpp \
	./src/capabilities.cpp \
	./src/logsink.cpp \
	./src/tlsgnutlsserveranon.cpp \
	./src/connectiontlsserver.cpp \
	./src/socks5bytestreamserver.cpp \
	./src/error.cpp \
	./src/pubsubevent.cpp \
	./src/nonsaslauth.cpp \
	./src/rostermanager.cpp \
	./src/clientbase.cpp \
	./src/privacyitem.cpp \
	./src/mucinvitationhandler.cpp \
	./src/simanager.cpp \
	./src/inbandbytestream.cpp \
	./src/dns.cpp \
	./src/connectiontls.cpp \
	./src/compressiondefault.cpp \
	./src/connectionhttpproxy.cpp \
	./src/annotations.cpp \
	./src/carbons.cpp \
	./src/jingleiceudp.cpp \
	./src/delayeddelivery.cpp \
	./src/connectiontcpserver.cpp \
	./src/mutex.cpp \
	./src/chatstate.cpp \
	./src/uniquemucroom.cpp \
	./src/jinglepluginfactory.cpp \
	./src/vcardupdate.cpp \
	./src/dataformfieldcontainer.cpp \
	./src/socks5bytestreammanager.cpp \
	./src/jid.cpp \
	./src/socks5bytestream.cpp \
	./src/prep.cpp \
	./src/sha.cpp \
	./src/tag.cpp \
	./src/lastactivity.cpp \
	./src/client.cpp \
	./src/flexoff.cpp \
	./src/jinglefiletransfer.cpp \
	./src/bookmarkstorage.cpp \
	./src/amp.cpp \
	./src/atomicrefcount.cpp \
	./src/component.cpp \
	./src/pubsubmanager.cpp \
	./src/md5.cpp \
	./src/rosteritem.cpp \
	./src/oob.cpp \
	./src/search.cpp \
	./src/dataform.cpp \
	./src/forward.cpp \
	./src/presence.cpp \
	./src/chatstatefilter.cpp \
	./src/messageevent.cpp \
	./src/vcardmanager.cpp \
	./src/tlsdefault.cpp \
	./src/dataformitem.cpp \
	./src/compressionzlib.cpp \
	./src/nickname.cpp \
	./src/messagefilter.cpp \
	./src/tlsgnutlsclientanon.cpp \
	./src/softwareversion.cpp \
	./src/privatexml.cpp \
	./src/mucmessagesession.cpp \
	./src/linklocalclient.cpp \
	./src/shim.cpp \
	./src/linklocalmanager.cpp \
	./src/message.cpp \
	./src/jinglesessionmanager.cpp \
	./src/adhoc.cpp \
	./src/messagesession.cpp \
	./src/parser.cpp \
	./src/featureneg.cpp \
	./src/dataformreported.cpp \
	./src/jinglecontent.cpp \
	./src/eventdispatcher.cpp

LOCAL_CFLAGS := -O2 -g -D__ANDROID__
#LOCAL_CFLAGS += -DHAVE_CONFIG_H -D_U_="__attribute__((unused))"

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/src

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := libgloox

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:=\
	./src/examples/register_example.cpp 

LOCAL_SHARED_LIBRARIES += libgloox
LOCAL_MODULE := register_example

ifneq ($(TARGET_SIMULATOR),true)
LOCAL_C_INCLUDES += bionic		# very important!
LOCAL_C_INCLUDES += external/stlport/stlport 
LOCAL_SHARED_LIBRARIES += libstlport libdl
endif

include $(BUILD_EXECUTABLE)
