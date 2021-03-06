# - Try to find Grpc
# Once done, this will define
#
#  Grpc_FOUND - system has Grpc
#  Grpc_INCLUDE_DIRS - the Grpc include directories
#  Grpc_LIBRARIES - link these to use Grpc

SET(Grpc_FOUND FALSE)


if(NOT Grpc_ROOT)
    set(Grpc_ROOT /opt/grpc_v1.7.2)
endif()


if (NOT (EXISTS ${Grpc_ROOT}))
    return()
endif()


set (Grpc_INCLUDE_DIRS
        ${Grpc_ROOT}/include
        ${Grpc_ROOT}/third_party/protobuf/src
#        ${Grpc_ROOT}/third_party/boringssl/include
        )


set (Grpc_LIBRARIES
        ${Grpc_ROOT}/libs/opt/libgrpc++.a
        ${Grpc_ROOT}/libs/opt/libgrpc.a
        ${Grpc_ROOT}/libs/opt/libgrpc_unsecure.a
        ${Grpc_ROOT}/libs/opt/libgrpc++_reflection.a
        ${Grpc_ROOT}/third_party/zlib/libz.a
        ${Grpc_ROOT}/third_party/protobuf/src/.libs/libprotobuf.a
        )

message("Found Grpc (include ${Grpc_INCLUDE_DIRS}; library: ${Grpc_LIBRARIES})")
set(Grpc_FOUND TRUE)
