{{ if .Values.istioBase.enabled }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: istio-base
  namespace: argocd
  annotations:
    argocd.argoproj.io/sync-wave: "3"
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
{{ .Values.istioBase.spec | toYaml | indent 2}}
{{- end -}}
