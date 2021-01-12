echo 'dependencies:'
echo '  -   name: kafka'
echo '      repository: "https://storage.googleapis.com/hypertrace-helm-charts"'
echo "      version: ${{ steps.kafka.outputs.release }}"
