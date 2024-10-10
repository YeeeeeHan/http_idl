
## DEPRECATED, USE gen.sh

# #./generator/gen_ts.sh idl/aic/data/aic_api/*.proto
# # https://www.npmjs.com/package/ts-protoc-gen

# set -e

# IDLROOTDIR=$(cd $(dirname $0); cd ..; pwd)
# CURDIR=$(cd $(dirname $0); pwd)
# OUT_DIR=$JSPATH/src/github.com/aic/aic_fe/src/protoc
# PWD=$(pwd)
# PROTOC_GEN_TS_PATH="./node_modules/.bin/protoc-gen-ts"

# sysname=$(uname -s)

# protoc=${CURDIR}/bin/protoc
# protoc_gen_ts=${CURDIR}/bin/protoc-gen-ts


# echo "start generate root:$IDLROOTDIR"
# echo "OUT_DIR:$OUT_DIR"

# for proto_file in $@; do
#   abs_file_path=${PWD}/${proto_file}
#   echo "proto file:$abs_file_path ..."

#   $protoc --plugin="protoc-gen-ts=${PROTOC_GEN_TS_PATH}" --proto_path=$IDLROOTDIR/idl --proto_path=$GOPATH/pkg/protobuf/src  --js_out="import_style=commonjs,binary:${OUT_DIR}" --ts_out="${OUT_DIR}" $abs_file_path

# done