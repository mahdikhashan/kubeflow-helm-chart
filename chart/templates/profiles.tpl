{{ if .Values.profiles.enabled }}
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: profiles
  namespace: argocd
  annotations:
    argocd.argoproj.io/sync-wave: "100"
  finalizers:
    - resources-finalizer.argocd.argoproj.io
spec:
{{ .Values.profiles.spec | toYaml | indent 2 }}
{{- end -}}
