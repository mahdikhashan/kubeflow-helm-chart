{{ if .Values.notebookController.enabled }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: notebook-controller
  namespace: argocd
  annotations:
    argocd.argoproj.io/sync-wave: "100"
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
{{ .Values.notebookController.spec | toYaml | indent 2 }}
{{- end -}}
