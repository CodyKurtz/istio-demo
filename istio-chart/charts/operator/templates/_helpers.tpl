{{- define "operatorNamespace" -}}
{{.Values.operatorNamespace | default "istio-operator" }}
{{- end -}}

{{/* Check Global, then local, set default*/}}
{{- define "istioNamespace" -}}
{{- if .Values.global.istioNamespace -}}
    {{ .Values.global.istioNamespace }}
{{- else -}}
    {{.Values.istioNamespace | default "istio-system" }}
{{- end }}
{{- end -}}

{{/* Check Global, then local, set default*/}}
{{- define "tag" -}}
{{- if .Values.global.tag -}}
    {{ .Values.global.tag }}
{{- else -}}
    {{.Values.tag | default "1.5.1" }}
{{- end }}
{{- end -}}

{{/* Check Global, then local, set default*/}}
{{- define "hub" -}}
{{- if .Values.global.hub -}}
    {{ .Values.global.hub }}
{{- else -}}
    {{.Values.hub | default "nexus.tds.td.com:8447/istio" }}
{{- end }}
{{- end -}}