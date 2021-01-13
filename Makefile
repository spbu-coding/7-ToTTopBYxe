CONFIG = CONFIG.cfg
include ${CONFIG}

compile:
	mkdir -p ${BUILD_DIR}
	gcc ${SOURCE_DIR}/* -o ${BUILD_DIR}/${NAME}

all: compile check

check: ${MYDIR}/*
	for test_in in ${TEST_DIR}/test_name.in.* ; do\
		${BUILD_DIR}/${NAME} $${test_in};\
	done

clean:
	rm -rf build/*

