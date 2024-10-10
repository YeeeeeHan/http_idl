#./generator/gen.sh idl/aic/data/aic_api/*.proto

set -e

IDLROOTDIR=$(cd $(dirname $0); cd ..; pwd)
CURDIR=$(cd $(dirname $0); pwd)
OUT_DIR=$GOPATH/src
PWD=$(pwd)
sysname=$(uname -s)

if [[ ${sysname} == "Darwin" ]]; then
  protoc=${CURDIR}/bin/mac/protoc
else
  protoc=${CURDIR}/bin/linux/protoc
fi


echo "start generate root:$IDLROOTDIR"
echo "OUT_DIR:$OUT_DIR"

for proto_file in $@; do
  abs_file_path=${PWD}/${proto_file}
  echo "proto file:$abs_file_path ..."

  $protoc --proto_path=$IDLROOTDIR/idl --proto_path=$GOPATH/pkg/protobuf/src --go_out=$OUT_DIR $abs_file_path

done

set -e

IDLROOTDIR=$(cd $(dirname $0); cd ..; pwd)
CURDIR=$(cd $(dirname $0); pwd)
OUT_DIR=$JSPATH/src/github.com/aic/aic_fe/src/protoc
PWD=$(pwd)


protoc_gen_ts=${CURDIR}/bin/protoc-gen-ts


echo "start generate root:$IDLROOTDIR"
echo "OUT_DIR:$OUT_DIR"

for proto_file in $@; do
  abs_file_path=${PWD}/${proto_file}
  echo "proto file:$abs_file_path ..."

  $protoc --plugin=$protoc_gen_js --proto_path=$IDLROOTDIR/idl --proto_path=$GOPATH/pkg/protobuf/src --ts_out=$OUT_DIR $abs_file_path

done