{{- define "labels" }}
    app: {{ .Release.Name }}
    tier: queue
{{- end }}

Renders a value that contains template.
{{- define "common.tplvalues.render" -}}
    {{- if typeIs "string" .value }}
        {{- tpl .value .context }}
    {{- else }}
        {{- tpl (.value | toYaml) .context }}
    {{- end }}
{{- end -}}