if("${TARGET_ARCH}" STREQUAL ANDROID)
    ExternalProject_Add(AwsCrtCpp
            PREFIX ${AWS_DEPS_BUILD_DIR}
            GIT_REPOSITORY ${AWS_CRT_CPP_URL}
            GIT_TAG ${AWS_CRT_CPP_SHA}
            BUILD_IN_SOURCE 0
            UPDATE_COMMAND ""
            CMAKE_ARGS
            -DCMAKE_INSTALL_PREFIX=${AWS_DEPS_INSTALL_DIR}
            -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DBUILD_SHARED_LIBS=${BUILD_SHARED_LIBS}
            -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
            -DANDROID_NATIVE_API_LEVEL=${ANDROID_NATIVE_API_LEVEL}
            -DANDROID_ABI=${ANDROID_ABI}
            -DANDROID_TOOLCHAIN_NAME=${ANDROID_TOOLCHAIN_NAME}
            -DANDROID_STANDALONE_TOOLCHAIN=${ANDROID_STANDALONE_TOOLCHAIN}
            -DANDROID_STL=${ANDROID_STL}
            -DENABLE_HW_OPTIMIZATION=OFF
            -DCMAKE_C_FLAGS=${CMAKE_C_FLAGS}
            -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
            -DBUILD_DEPS=ON
            )
elseif(MSVC)
    ExternalProject_Add(AwsCrtCpp
            PREFIX ${AWS_DEPS_BUILD_DIR}
            GIT_REPOSITORY ${AWS_CRT_CPP_URL}
            GIT_TAG ${AWS_CRT_CPP_SHA}
            BUILD_IN_SOURCE 0
            UPDATE_COMMAND ""
            CMAKE_ARGS
            -DCMAKE_INSTALL_PREFIX=${AWS_DEPS_INSTALL_DIR}
            -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DBUILD_SHARED_LIBS=${BUILD_SHARED_LIBS}
            -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
            -DCMAKE_RUNTIME_OUTPUT_DIRECTORY=${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
            -DCMAKE_C_FLAGS=${CMAKE_C_FLAGS}
            -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
            -DBUILD_DEPS=ON
            )
else()
    ExternalProject_Add(AwsCrtCpp
            PREFIX ${AWS_DEPS_BUILD_DIR}
            GIT_REPOSITORY ${AWS_CRT_CPP_URL}
            GIT_TAG ${AWS_CRT_CPP_SHA}
            BUILD_IN_SOURCE 0
            UPDATE_COMMAND ""
            CMAKE_ARGS
            -DCMAKE_INSTALL_PREFIX=${AWS_DEPS_INSTALL_DIR}
            -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
            -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
            -DBUILD_SHARED_LIBS=${BUILD_SHARED_LIBS}
            -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
            -DCMAKE_C_FLAGS=${CMAKE_C_FLAGS}
            -DCMAKE_CXX_FLAGS=${CMAKE_CXX_FLAGS}
            -DBUILD_DEPS=ON
            )
endif()
