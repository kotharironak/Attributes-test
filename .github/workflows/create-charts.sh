SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUT_DIR="$(dirname $SCRIPT_DIR)/kubernetes/data-services"

print_header() {
    cat "${SCRIPTDIR}/license_header.txt"
    echo
}

print_charts() {
        print_header
        echo '\n'
        echo 'dependencies:'
        echo '  -   name: kafka'
        echo '      repository: "https://storage.googleapis.com/hypertrace-helm-charts"'
        echo '      version: $kafka_version '
        echo '  -   name: kafka'
        echo '      repository: "https://storage.googleapis.com/hypertrace-helm-charts"'
        echo '      version: $zookeeper_version '
        echo '  -   name: kafka'
        echo '      repository: "https://storage.googleapis.com/hypertrace-helm-charts"'
        echo '      version: $pinot_version '
        echo '  -   name: kafka'
        echo '      repository: "https://storage.googleapis.com/hypertrace-helm-charts"'
        echo '      version: $schema_registry_version '
        echo '  -   name: kafka'
        echo '      repository: "https://storage.googleapis.com/hypertrace-helm-charts"'
        echo '      version: $mongodb_version '
} 

main() {
    charts_file="${OUT_DIR}/Charts.yaml"
    mk_kubernetes_manifests > "${charts_file}"
    log "Written ${charts_file}"
}

main