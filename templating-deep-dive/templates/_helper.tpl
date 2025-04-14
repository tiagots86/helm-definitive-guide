{{- define "templating-deep-dive.fullname" -}}
{{- $defaultName := printf "%s-%s" .Release.Name .Chart.Name }}
{{- .Values.CustomName | default $defaultName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "templating-deep-dive.selectorLabels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end -}}