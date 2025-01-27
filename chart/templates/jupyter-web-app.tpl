{{- if .Values.jupyterWebApp.enabled }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: jupyter-web-app
  namespace: argocd
  annotations:
    argocd.argoproj.io/sync-wave: "100"
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
{{ .Values.jupyterWebApp.spec | toYaml | indent 2 }}
{{- end }}
