{{- /*
Chart specific config file for SCH (Shared Configurable Helpers)

_sch-chart-config.tpl is a config file for the chart to specify additional 
values and/or override values defined in the sch/_config.tpl file.
 
*/ -}}

{{- /*
"sch.chart.config.values" contains the chart specific values used to override or provide
additional configuration values used by the Shared Configurable Helpers.
*/ -}}
{{- define "sch.chart.config.values" -}}
sch:
  chart:
    appName: "ibm-reactive-platform-console"
    components: 
      alertmanager:
        compName: "alertmanager"
        service:
          name: "alertmanager-service"
        deployment:
          name: "alertmanager-deployment"
        configmap:
          name: "alertmanager-configmap"
        persistentVolumeClaim:
          name: "alertmanager-pvc"
        ports:
          httpPort: 10000
          akkaRemotePort: 10001
          akkaHttpPort: 10002
      commercial-credentials:

      es-console:
        compName: "es-console"
        service:
          name: "es-console-service"
        deployment:
          name: "es-console-deployment"
        configmap:
          name: "es-console-configmap"
        service:
          name: "es-console-expose"
        ports:
          httpPort: 10000
          akkaRemotePort: 10001
          akkaHttpPort: 10002
      es-grafana:
        compName: "es-grafana"
        service:
          name: "es-grafana-service"
        deployment:
          name: "es-grafana-deployment"
        configmap:
          name: "es-grafana-configmap-datasource"
        configmap:
          name: "es-grafana-configmap-plugin"
        persistentVolumeClaim:
          name: "es-grafana-pvc"
        ports:
          httpPort: 10000
          akkaRemotePort: 10001
          akkaHttpPort: 10002
      kube-state-metrics:
        compName: "kube-state-metrics"
        service:
          name: "kube-state-metrics-service"
        deployment:
          name: "kube-state-metrics-deployment"
        serviceAccount:
          name: "kube-state-metrics-account"
        cluster-role:
          name: "kube-state-metrics-role:
        cluster-role-binding:
          name: "kube-state-metrics-rolebind"
        ports:
          httpPort: 10000
          akkaRemotePort: 10001
          akkaHttpPort: 10002
      node-exporter:
        compName: "node-exporter"
        service:
          name: "node-exporterservice"
        deployment:
          name: "node-exporter-deployment"
        serviceAccount:
          name: "kube-state-metrics-account"
        cluster-role:
          name: "kube-state-metrics-role:
        cluster-role-binding:
          name: "kube-state-metrics-rolebind"
        ports:
          httpPort: 10000
          akkaRemotePort: 10001
          akkaHttpPort: 10002
    metering:
      productName: "Reactive Platform Lagom Sample"
      productID: "IBM-Reactive-Platform-Lagom-Sample_001_opensource_00000"
      productVersion: "1.0.0"
{{- end -}}

