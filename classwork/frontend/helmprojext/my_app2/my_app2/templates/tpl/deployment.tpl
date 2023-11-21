{{- define "deployment.tpl"}}
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{.Values.appName}}-app
spec: 
  replicas: 3
  selector:
    matchLabels:
      app: {{.Values.appName}}-app
  template:
    metadata:
      labels:
        app: {{.Values.appName}}-app
    spec:
      containers:
        - name: {{.Values.appName}}-container
          image: {{.Values.image}}:{{.Values.tag}} 
          env:
           {{- range .Values.env }}
           - name: {{ .name }}
             value: "{{ .value }}"
             {{- end }}
          ports:
            - containerPort: {{.Values.containerPort}}
{{- end}}