#!/bin/bash
# release.sh
set -e

CHART_NAME="webapp-chart"
REPO_DIR="chart-repo"
REPO_URL="https://your-domain.com/charts"

echo "Packaging chart..."
helm package $CHART_NAME

echo "Moving to repository..."
mv ${CHART_NAME}-*.tgz $REPO_DIR/

echo "Updating repository index..."
helm repo index $REPO_DIR --url $REPO_URL

echo "Chart packaged and repository updated!"