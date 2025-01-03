{{ if .Values.admissionWebhook.enabled }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: admission-webhook
  namespace: argocd
  annotations:
    argocd.argoproj.io/sync-wave: "100"
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
{{ .Values.admissionWebhook.spec | toYaml | indent 2 }}
{{- end -}}
