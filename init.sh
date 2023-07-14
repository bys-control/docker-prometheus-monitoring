#!/bin/bash
set -e

NO_COLOR='\033[0m'
OK_COLOR='\033[32;01m'
ERROR_COLOR='\033[31;01m'
WARN_COLOR='\033[33;01m'

echo -e "\n${WARN_COLOR}===== Descargando plugins para grafana =====${NO_COLOR}"

mkdir -p runtime/grafana/plugins/
pushd runtime/grafana/plugins/
wget https://github.com/flant/grafana-statusmap/releases/download/v0.5.1/flant-statusmap-panel-0.5.1.zip
wget https://github.com/grafana/clock-panel/releases/download/v2.1.3/grafana-clock-panel-2.1.3.zip
wget https://github.com/grafana/piechart-panel/releases/download/v1.6.4/grafana-piechart-panel-1.6.4.zip
wget https://github.com/michaeldmoore/michaeldmoore-multistat-panel/releases/download/v1.7.2/michaeldmoore-multistat-panel-1.7.2.zip
curl -sL https://grafana.com/api/plugins/natel-discrete-panel/versions/0.1.1/download > natel-discrete-panel-0.1.1.zip
curl -sL https://grafana.com/api/plugins/petrslavotinek-carpetplot-panel/versions/0.1.2/download > petrslavotinek-carpetplot-panel-0.1.2.zip
wget https://github.com/VolkovLabs/volkovlabs-echarts-panel/releases/download/v4.5.0/volkovlabs-echarts-panel-4.5.0.zip
popd

