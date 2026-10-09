.class public final Lio/sentry/protocol/SentrySpan;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentrySpan$Deserializer;
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/Double;

.field public final k:Ljava/lang/Double;

.field public final l:Lio/sentry/protocol/SentryId;

.field public final m:Lio/sentry/SpanId;

.field public final n:Lio/sentry/SpanId;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Lio/sentry/SpanStatus;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/util/Map;

.field public t:Ljava/util/Map;

.field public final u:Ljava/util/Map;

.field public v:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lio/sentry/Span;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lio/sentry/Span;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 7
    .line 8
    iget-object v2, v1, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->p:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v1, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v1, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 17
    .line 18
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->m:Lio/sentry/SpanId;

    .line 19
    .line 20
    iget-object v2, v1, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 21
    .line 22
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->n:Lio/sentry/SpanId;

    .line 23
    .line 24
    iget-object v2, v1, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 25
    .line 26
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->l:Lio/sentry/protocol/SentryId;

    .line 27
    .line 28
    iget-object v2, v1, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 29
    .line 30
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->q:Lio/sentry/SpanStatus;

    .line 31
    .line 32
    iget-object v2, v1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->r:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, v1, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->s:Ljava/util/Map;

    .line 51
    .line 52
    iget-object v2, p1, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    :goto_1
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->u:Ljava/util/Map;

    .line 67
    .line 68
    iget-object v2, p1, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 69
    .line 70
    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    iget-object v5, p1, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Lio/sentry/SentryDate;->c(Lio/sentry/SentryDate;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    long-to-double v5, v5

    .line 86
    div-double/2addr v5, v3

    .line 87
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :goto_2
    iput-object v2, p0, Lio/sentry/protocol/SentrySpan;->k:Ljava/lang/Double;

    .line 92
    .line 93
    iget-object p1, p1, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 94
    .line 95
    invoke-virtual {p1}, Lio/sentry/SentryDate;->d()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    long-to-double v5, v5

    .line 100
    div-double/2addr v5, v3

    .line 101
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->j:Ljava/lang/Double;

    .line 106
    .line 107
    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    .line 108
    .line 109
    iget-object p0, v1, Lio/sentry/SpanContext;->w:Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    .line 110
    .line 111
    invoke-virtual {p0}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;->c()Lio/sentry/protocol/FeatureFlags;

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->j:Ljava/lang/Double;

    .line 117
    iput-object p2, p0, Lio/sentry/protocol/SentrySpan;->k:Ljava/lang/Double;

    .line 118
    iput-object p3, p0, Lio/sentry/protocol/SentrySpan;->l:Lio/sentry/protocol/SentryId;

    .line 119
    iput-object p4, p0, Lio/sentry/protocol/SentrySpan;->m:Lio/sentry/SpanId;

    .line 120
    iput-object p5, p0, Lio/sentry/protocol/SentrySpan;->n:Lio/sentry/SpanId;

    .line 121
    iput-object p6, p0, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 122
    iput-object p7, p0, Lio/sentry/protocol/SentrySpan;->p:Ljava/lang/String;

    .line 123
    iput-object p8, p0, Lio/sentry/protocol/SentrySpan;->q:Lio/sentry/SpanStatus;

    .line 124
    iput-object p9, p0, Lio/sentry/protocol/SentrySpan;->r:Ljava/lang/String;

    .line 125
    iput-object p10, p0, Lio/sentry/protocol/SentrySpan;->s:Ljava/util/Map;

    .line 126
    iput-object p11, p0, Lio/sentry/protocol/SentrySpan;->u:Ljava/util/Map;

    .line 127
    iput-object p12, p0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 5

    .line 1
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 4
    .line 5
    .line 6
    const-string v0, "start_timestamp"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->j:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->k:Ljava/lang/Double;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const-string v3, "timestamp"

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 53
    .line 54
    .line 55
    :cond_0
    const-string v0, "trace_id"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->l:Lio/sentry/protocol/SentryId;

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 63
    .line 64
    .line 65
    const-string v0, "span_id"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->m:Lio/sentry/SpanId;

    .line 71
    .line 72
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->n:Lio/sentry/SpanId;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    const-string v1, "parent_span_id"

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 85
    .line 86
    .line 87
    :cond_1
    const-string v0, "op"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->p:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    const-string v1, "description"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->q:Lio/sentry/SpanStatus;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    const-string v1, "status"

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 119
    .line 120
    .line 121
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->r:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    const-string v1, "origin"

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->s:Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    const-string v1, "tags"

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 147
    .line 148
    .line 149
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    const-string v0, "data"

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    .line 159
    .line 160
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->u:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_7

    .line 170
    .line 171
    const-string v1, "measurements"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 177
    .line 178
    .line 179
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    .line 181
    if-eqz v0, :cond_8

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_8

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Ljava/lang/String;

    .line 202
    .line 203
    iget-object v2, p0, Lio/sentry/protocol/SentrySpan;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 204
    .line 205
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_8
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 210
    .line 211
    .line 212
    return-void
.end method
