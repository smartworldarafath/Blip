.class public abstract Lio/sentry/SentryBaseEvent$Serializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Serializer"
.end annotation


# direct methods
.method public static a(Lio/sentry/SentryBaseEvent;Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "event_id"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v0, "contexts"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "sdk"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "request"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 49
    .line 50
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    const-string v0, "tags"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 69
    .line 70
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    const-string v0, "release"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    const-string v0, "environment"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    const-string v0, "platform"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 113
    .line 114
    .line 115
    :cond_6
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    const-string v0, "user"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 125
    .line 126
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    const-string v0, "server_name"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 141
    .line 142
    .line 143
    :cond_8
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    const-string v0, "dist"

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 155
    .line 156
    .line 157
    :cond_9
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 158
    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_a

    .line 166
    .line 167
    const-string v0, "breadcrumbs"

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 173
    .line 174
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 175
    .line 176
    .line 177
    :cond_a
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 178
    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    const-string v0, "debug_meta"

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 187
    .line 188
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 189
    .line 190
    .line 191
    :cond_b
    iget-object v0, p0, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 192
    .line 193
    if-eqz v0, :cond_c

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_c

    .line 200
    .line 201
    const-string v0, "extra"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 207
    .line 208
    invoke-virtual {p1, p2, p0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 209
    .line 210
    .line 211
    :cond_c
    return-void
.end method
