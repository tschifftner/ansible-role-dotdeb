#!/bin/sh

DIR=$( dirname $0 )
INVENTORY_FILE="$DIR/inventory"
PLAYBOOK="$DIR/test.yml"

set -ev

# Check syntax
ansible-playbook -i $INVENTORY_FILE $PLAYBOOK --syntax-check

# Run role
ansible-playbook -i $INVENTORY_FILE $PLAYBOOK --connection=local --sudo

# Check idempotence
ansible-playbook -i $INVENTORY_FILE $PLAYBOOK --connection=local --sudo \
| grep -q 'changed=0.*failed=0' \
&& (echo 'Idempotence test: pass' && exit 0) \
|| (echo 'Idempotence test: fail' && exit 1)
