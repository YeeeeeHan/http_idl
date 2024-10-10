
## DEPRECATED, USE gen.sh
# #./generator/gen_go.sh idl/aic/data/aic_api/*.proto

# set -e

# IDLROOTDIR=$(cd $(dirname $0); cd ..; pwd)
# CURDIR=$(cd $(dirname $0); pwd)
# OUT_DIR=$GOPATH/src
# PWD=$(pwd)

# sysname=$(uname -s)

# protoc=${CURDIR}/bin/protoc
# protoc_gen_go=${CURDIR}/bin/protoc-gen-go


# echo "start generate root:$IDLROOTDIR"
# echo "OUT_DIR:$OUT_DIR"

# for proto_file in $@; do
#   abs_file_path=${PWD}/${proto_file}
#   echo "proto file:$abs_file_path ..."

#   $protoc --plugin=$protoc_gen_go --proto_path=$IDLROOTDIR/idl --proto_path=$GOPATH/pkg/protobuf/src --gogoslick_out=$OUT_DIR $abs_file_path

# done