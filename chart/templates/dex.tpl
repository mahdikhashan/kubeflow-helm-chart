{{ if .Values.dex.enabled }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: dex
  namespace: argocd
  annotations:
    argocd.argoproj.io/sync-wave: "8"
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
{{ .Values.dex.spec | toYaml | indent 2 }}
{{- end -}}
