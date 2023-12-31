{{- define "service.tpl"}}
apiVersion: v1
kind: Service
metadata:
    name: {{.Values.appName}}-svc
spec:
    type: ClusterIP
    selector:
        app: {{.Values.appName}}-app
    ports:
        - protocol: TCP
          port: 3002
          targetPort: {{.Values.containerPort}}
{{- end}}