{{- define "chatwoot-bot.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "chatwoot-bot.fullname" -}}
{{- .Release.Name | printf "%s-%s" (include "chatwoot-bot.name" .) -}}
{{- end -}}