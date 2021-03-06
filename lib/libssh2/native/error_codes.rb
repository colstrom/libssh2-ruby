# The following is a map of the errors from key to the
# error code. This is extracted directly from libssh2.h
LIBSSH_ERRORS_BY_KEY = {
  "ERROR_SOCKET_NONE"               => -1,
  "ERROR_BANNER_RECV"               => -2,
  "ERROR_BANNER_SEND"               => -3,
  "ERROR_INVALID_MAC"               => -4,
  "ERROR_KEX_FAILURE"               => -5,
  "ERROR_ALLOC"                     => -6,
  "ERROR_SOCKET_SEND"               => -7,
  "ERROR_KEY_EXCHANGE_FAILURE"      => -8,
  "ERROR_TIMEOUT"                   => -9,
  "ERROR_HOSTKEY_INIT"              => -10,
  "ERROR_HOSTKEY_SIGN"              => -11,
  "ERROR_DECRYPT"                   => -12,
  "ERROR_SOCKET_DISCONNECT"         => -13,
  "ERROR_PROTO"                     => -14,
  "ERROR_PASSWORD_EXPIRED"          => -15,
  "ERROR_FILE"                      => -16,
  "ERROR_METHOD_NONE"               => -17,
  "ERROR_AUTHENTICATION_FAILED"     => -18,
  "ERROR_PUBLICKEY_UNRECOGNIZED"    => -18,
  "ERROR_PUBLICKEY_UNVERIFIED"      => -19,
  "ERROR_CHANNEL_OUTOFORDER"        => -20,
  "ERROR_CHANNEL_FAILURE"           => -21,
  "ERROR_CHANNEL_REQUEST_DENIED"    => -22,
  "ERROR_CHANNEL_UNKNOWN"           => -23,
  "ERROR_CHANNEL_WINDOW_EXCEEDED"   => -24,
  "ERROR_CHANNEL_PACKET_EXCEEDED"   => -25,
  "ERROR_CHANNEL_CLOSED"            => -26,
  "ERROR_CHANNEL_EOF_SENT"          => -27,
  "ERROR_SCP_PROTOCOL"              => -28,
  "ERROR_ZLIB"                      => -29,
  "ERROR_SOCKET_TIMEOUT"            => -30,
  "ERROR_SFTP_PROTOCOL"             => -31,
  "ERROR_REQUEST_DENIED"            => -32,
  "ERROR_METHOD_NOT_SUPPORTED"      => -33,
  "ERROR_INVAL"                     => -34,
  "ERROR_INVALID_POLL_TYPE"         => -35,
  "ERROR_PUBLICKEY_PROTOCOL"        => -36,
  "ERROR_EAGAIN"                    => -37,
  "ERROR_BUFFER_TOO_SMALL"          => -38,
  "ERROR_BAD_USE"                   => -39,
  "ERROR_COMPRESS"                  => -40,
  "ERROR_OUT_OF_BOUNDARY"           => -41,
  "ERROR_AGENT_PROTOCOL"            => -42,
  "ERROR_SOCKET_RECV"               => -43,
  "ERROR_ENCRYPT"                   => -44,
  "ERROR_BAD_SOCKET"                => -45
}

# Also provide a lookup by code
LIBSSH_ERRORS_BY_CODE = LIBSSH_ERRORS_BY_KEY.invert

# Define the errors as constants on LibSSH2::Native so they
# can be referenced by the code more easily.
module LibSSH2
  module Native
    LIBSSH_ERRORS_BY_KEY.each do |key, value|
      const_set(key, value)
    end
  end
end
