include(CheckIncludeFiles)
include(CheckFunctionExists)
include(CheckLibraryExists)
include(CheckSymbolExists)
include(CheckTypeSize)
include(CheckCSourceCompiles)
include(CheckCXXSourceCompiles)

#check_include_files(dlfcn.h  HAVE_DLFCN_H )

set(LOG4CPLUS_HAVE_ERRNO_H 1)
set(LOG4CPLUS_HAVE_ICONV_H 1)
set(LOG4CPLUS_HAVE_LIMITS_H 1)
set(LOG4CPLUS_HAVE_SYS_TYPES_H 1)
set(LOG4CPLUS_HAVE_SYS_SOCKET_H 1)
set(LOG4CPLUS_HAVE_SYS_SYSCALL_H 1)
set(LOG4CPLUS_HAVE_SYS_TIME_H 1)
set(LOG4CPLUS_HAVE_SYS_TIMEB_H 1)
set(LOG4CPLUS_HAVE_SYS_STAT_H 1)
set(LOG4CPLUS_HAVE_SYS_FILE_H 1)
set(LOG4CPLUS_HAVE_SYSLOG_H 1)
set(LOG4CPLUS_HAVE_ARPA_INET_H 1)
set(LOG4CPLUS_HAVE_NETINET_IN_H 1)
set(LOG4CPLUS_HAVE_NETINET_TCP_H 1)
set(LOG4CPLUS_HAVE_NETDB_H 1)
set(LOG4CPLUS_HAVE_UNISTD_H 1)
set(LOG4CPLUS_HAVE_FCNTL_H 1)
set(LOG4CPLUS_HAVE_STDIO_H 1)
set(LOG4CPLUS_HAVE_STDARG_H 1)
set(LOG4CPLUS_HAVE_STDLIB_H 1)
set(LOG4CPLUS_HAVE_TIME_H 1)
set(LOG4CPLUS_HAVE_WCHAR_H 1)
set(LOG4CPLUS_HAVE_POLL_H 1)


# set(HAVE_INTTYPES_H 1)
# set(HAVE_MEMORY_H 1)
# set(HAVE_STDINT_H 1)
# set(HAVE_STRINGS_H 1)
# set(HAVE_STRING_H 1)


#check_include_files("stdlib.h;stdio.h;stdarg.h;string.h;float.h" STDC_HEADERS )

find_library(LIBADVAPI32 advapi32)
find_library(LIBKERNEL32 kernel32)
find_library(LIBNSL nsl)
find_library(LIBRT rt)
find_library(LIBICONV iconv)
find_library(LIBPOSIX4 posix4)
find_library(LIBCPOSIX cposix)
find_library(LIBSOCKET socket)
find_library(LIBWS2_32 ws2_32)

set(LOG4CPLUS_HAVE_GMTIME_R 1)
set(LOG4CPLUS_HAVE_LOCALTIME_R 1)
set(LOG4CPLUS_HAVE_GETTIMEOFDAY 1)
set(LOG4CPLUS_HAVE_GETPID 1)
set(LOG4CPLUS_HAVE_POLL 1)
set(LOG4CPLUS_HAVE_PIPE 1)
#set(LOG4CPLUS_HAVE_PIPE2 )
set(LOG4CPLUS_HAVE_FTIME 1)
set(LOG4CPLUS_HAVE_STAT 1)
set(LOG4CPLUS_HAVE_LSTAT 1)
set(LOG4CPLUS_HAVE_FCNTL 1)
set(LOG4CPLUS_HAVE_FLOCK 1)
set(LOG4CPLUS_HAVE_LOCKF 1)
set(LOG4CPLUS_HAVE_HTONS 1)
set(LOG4CPLUS_HAVE_NTOHS 1)
set(LOG4CPLUS_HAVE_HTONL 1)
set(LOG4CPLUS_HAVE_NTOHL 1)
set(LOG4CPLUS_HAVE_SHUTDOWN 1)
set(LOG4CPLUS_HAVE_VSNPRINTF 1)
#set(LOG4CPLUS_HAVE__VSNPRINTF )
#set(LOG4CPLUS_HAVE_VSPRINTF_S )
#set(LOG4CPLUS_HAVE_VSWPRINTF_S )
#set(LOG4CPLUS_HAVE_VFPRINTF_S )
#set(LOG4CPLUS_HAVE_VFWPRINTF_S )
#set(LOG4CPLUS_HAVE__VSNPRINTF_S )
#set(LOG4CPLUS_HAVE__VSNWPRINTF_S )
set(LOG4CPLUS_HAVE_MBSTOWCS 1)
set(LOG4CPLUS_HAVE_WCSTOMBS 1)


set(LOG4CPLUS_HAVE_ENAMETOOLONG 1)
set(LOG4CPLUS_HAVE_GETTID 1)
set(LOG4CPLUS_HAVE_FUNCTION_MACRO 1)
set(LOG4CPLUS_HAVE_PRETTY_FUNCTION_MACRO 1)
set(LOG4CPLUS_HAVE_FUNC_SYMBOL 1)

set(LOG4CPLUS_HAVE___SYNC_ADD_AND_FETCH 1)
set(LOG4CPLUS_HAVE___SYNC_SUB_AND_FETCH 1)

set(LOG4CPLUS_HAVE_GNU_VARIADIC_MACROS 1)
set(LOG4CPLUS_HAVE_C99_VARIADIC_MACROS 1)

#set(LOG4CPLUS_HAVE_CLOCK_GETTIME )
#set(LOG4CPLUS_HAVE_CLOCK_NANOSLEEP )
set(LOG4CPLUS_HAVE_NANOSLEEP 1)

#set(LOG4CPLUS_HAVE_ICONV_OPEN )
#set(LOG4CPLUS_HAVE_ICONV_CLOSE )
#set(LOG4CPLUS_HAVE_ICONV )

#set(LOG4CPLUS_HAVE_GETHOSTBYNAME_R)
set(LOG4CPLUS_HAVE_GETADDRINFO 1)


set(LOG4CPLUS_DECLSPEC_EXPORT "__attribute__ ((visibility(\"default\")))" )
set(LOG4CPLUS_DECLSPEC_IMPORT "__attribute__ ((visibility(\"default\")))" )
set(LOG4CPLUS_DECLSPEC_PRIVATE "__attribute__ ((visibility(\"hidden\")))" )

set(LOG4CPLUS_HAVE_TLS_SUPPORT 1)
set(LOG4CPLUS_THREAD_LOCAL_VAR "__thread")

#set(LOG4CPLUS_HAVE_CXX11_ATOMICS )

#set(socklen_t)

set(HAVE_STDLIB_H              ${LOG4CPLUS_HAVE_STDLIB_H} )
set(HAVE_SYS_STAT_H            ${LOG4CPLUS_HAVE_SYS_STAT_H} )
set(HAVE_SYS_TYPES_H           ${LOG4CPLUS_HAVE_SYS_TYPES_H} )
set(HAVE_SYS_FILE_H            ${LOG4CPLUS_HAVE_SYS_FILE_H} )
set(HAVE_UNISTD_H              ${LOG4CPLUS_HAVE_UNISTD_H} )


set(HAVE_FTIME                 ${LOG4CPLUS_HAVE_FTIME} )
set(HAVE_GETPID                ${LOG4CPLUS_HAVE_GETPID} )
set(HAVE_GETTIMEOFDAY          ${LOG4CPLUS_HAVE_GETTIMEOFDAY} )
set(HAVE_GETADDRINFO           ${LOG4CPLUS_HAVE_GETADDRINFO} )
set(HAVE_GETHOSTBYNAME_R       ${LOG4CPLUS_HAVE_GETHOSTBYNAME_R} )
set(HAVE_GMTIME_R              ${LOG4CPLUS_HAVE_GMTIME_R} )
set(HAVE_HTONL                 ${LOG4CPLUS_HAVE_HTONL} )
set(HAVE_HTONS                 ${LOG4CPLUS_HAVE_HTONS} )
set(HAVE_ICONV_OPEN            ${LOG4CPLUS_HAVE_ICONV_OPEN} )
set(HAVE_ICONV_CLOSE           ${LOG4CPLUS_HAVE_ICONV_CLOSE} )
set(HAVE_ICONV                 ${LOG4CPLUS_HAVE_ICONV} )
set(HAVE_LSTAT                 ${LOG4CPLUS_HAVE_LSTAT} )
set(HAVE_FCNTL                 ${LOG4CPLUS_HAVE_FCNTL} )
set(HAVE_LOCKF                 ${LOG4CPLUS_HAVE_LOCKF} )
set(HAVE_FLOCK                 ${LOG4CPLUS_HAVE_FLOCK} )
set(HAVE_LOCALTIME_R           ${LOG4CPLUS_HAVE_LOCALTIME_R} )
set(HAVE_NTOHL                 ${LOG4CPLUS_HAVE_NTOHL} )
set(HAVE_NTOHS                 ${LOG4CPLUS_HAVE_NTOHS} )
set(HAVE_STAT                  ${LOG4CPLUS_HAVE_STAT} )

set(HAVE_VFPRINTF_S            ${LOG4CPLUS_HAVE_VFPRINTF_S} )
set(HAVE_VFWPRINTF_S           ${LOG4CPLUS_HAVE_VFWPRINTF_S} )
set(HAVE_VSNPRINTF             ${LOG4CPLUS_HAVE_VSNPRINTF} )
set(HAVE_VSPRINTF_S            ${LOG4CPLUS_HAVE_VSPRINTF_S} )
set(HAVE_VSWPRINTF_S           ${LOG4CPLUS_HAVE_VSWPRINTF_S} )
set(HAVE__VSNPRINTF            ${LOG4CPLUS_HAVE__VSNPRINTF} )
set(HAVE__VSNPRINTF_S          ${LOG4CPLUS_HAVE__VSNPRINTF_S} )
set(HAVE__VSNWPRINTF_S         ${LOG4CPLUS_HAVE__VSNWPRINTF_S} )

set(HAVE_FUNCTION_MACRO        ${LOG4CPLUS_HAVE_FUNCTION_MACRO} )
set(HAVE_PRETTY_FUNCTION_MACRO ${LOG4CPLUS_HAVE_PRETTY_FUNCTION_MACRO} )

set(HAVE___SYNC_ADD_AND_FETCH  ${LOG4CPLUS_HAVE___SYNC_ADD_AND_FETCH} )
set(HAVE___SYNC_SUB_AND_FETCH  ${LOG4CPLUS_HAVE___SYNC_SUB_AND_FETCH} )
