#!/bin/sh

TARGET=$1
if [ -z "$TARGET" ]; then
    echo "Usage: $0 <target>"
    exit 1
fi

SRC="${TARGET%.md}.typ"

articles/typst-to-mathlog $SRC $TARGET
perl -pi -e 's/→/\\to /g; s/↦/\\mapsto /g; s/…/\\cdots /g; s/∀/\\forall /g; s/≤/\\leq /g; s/≥/\\geq /g; s/⟺/\\Longleftrightarrow /g; s/≔/:=/g;' $TARGET
