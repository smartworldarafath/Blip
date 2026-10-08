.class public final Lio/sentry/rrweb/RRWebBreadcrumbEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;
    }
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public m:D

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lio/sentry/SentryLevel;

.field public r:Ljava/util/concurrent/ConcurrentHashMap;

.field public s:Ljava/util/HashMap;

.field public t:Ljava/util/concurrent/ConcurrentHashMap;

.field public u:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/rrweb/RRWebEventType;->Custom:Lio/sentry/rrweb/RRWebEventType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebEvent;-><init>(Lio/sentry/rrweb/RRWebEventType;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "breadcrumb"

    .line 7
    .line 8
    iput-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->l:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Serializer;->a(Lio/sentry/rrweb/RRWebEvent;Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "data"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 15
    .line 16
    .line 17
    const-string v1, "tag"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 25
    .line 26
    .line 27
    const-string v1, "payload"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->n:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string v1, "type"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->n:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 47
    .line 48
    .line 49
    :cond_0
    const-string v1, "timestamp"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 52
    .line 53
    .line 54
    iget-wide v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->m:D

    .line 55
    .line 56
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->o:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v1, "category"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->o:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->p:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    const-string v1, "message"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->p:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->q:Lio/sentry/SentryLevel;

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    const-string v1, "level"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->q:Lio/sentry/SentryLevel;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v1, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/lang/String;

    .line 140
    .line 141
    iget-object v2, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/String;

    .line 173
    .line 174
    iget-object v2, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    .line 176
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->s:Ljava/util/HashMap;

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_7

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Ljava/lang/String;

    .line 206
    .line 207
    iget-object v2, p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->s:Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_7
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 214
    .line 215
    .line 216
    return-void
.end method
