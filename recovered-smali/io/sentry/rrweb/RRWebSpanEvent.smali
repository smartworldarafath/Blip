.class public final Lio/sentry/rrweb/RRWebSpanEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;
    }
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:D

.field public p:D

.field public q:Ljava/util/concurrent/ConcurrentHashMap;

.field public r:Ljava/util/HashMap;

.field public s:Ljava/util/concurrent/ConcurrentHashMap;

.field public t:Ljava/util/concurrent/ConcurrentHashMap;


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
    const-string v0, "performanceSpan"

    .line 7
    .line 8
    iput-object v0, p0, Lio/sentry/rrweb/RRWebSpanEvent;->l:Ljava/lang/String;

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
    iget-object v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->l:Ljava/lang/String;

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
    iget-object v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->m:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string v1, "op"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->m:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->n:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string v1, "description"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->n:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 61
    .line 62
    .line 63
    :cond_1
    const-string v1, "startTimestamp"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->o:D

    .line 69
    .line 70
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 75
    .line 76
    .line 77
    const-string v1, "endTimestamp"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 80
    .line 81
    .line 82
    iget-wide v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->p:D

    .line 83
    .line 84
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, p2, v1}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lio/sentry/rrweb/RRWebSpanEvent;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lio/sentry/rrweb/RRWebSpanEvent;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    .line 100
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v0, p0, Lio/sentry/rrweb/RRWebSpanEvent;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v2, p0, Lio/sentry/rrweb/RRWebSpanEvent;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
    .line 129
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lio/sentry/rrweb/RRWebSpanEvent;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v2, p0, Lio/sentry/rrweb/RRWebSpanEvent;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 161
    .line 162
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lio/sentry/rrweb/RRWebSpanEvent;->r:Ljava/util/HashMap;

    .line 170
    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_5

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Ljava/lang/String;

    .line 192
    .line 193
    iget-object v2, p0, Lio/sentry/rrweb/RRWebSpanEvent;->r:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 200
    .line 201
    .line 202
    return-void
.end method
