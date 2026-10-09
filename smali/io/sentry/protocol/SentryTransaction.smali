.class public final Lio/sentry/protocol/SentryTransaction;
.super Lio/sentry/SentryBaseEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryTransaction$Deserializer;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Double;

.field public final B:Ljava/util/ArrayList;

.field public final C:Ljava/util/HashMap;

.field public D:Lio/sentry/protocol/TransactionInfo;

.field public E:Ljava/util/concurrent/ConcurrentHashMap;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lio/sentry/SentryTracer;->a:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v0, p1, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 21
    .line 22
    iget-object v1, v0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/sentry/SentryDate;->d()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    long-to-double v1, v1

    .line 29
    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    div-double/2addr v1, v3

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->z:Ljava/lang/Double;

    .line 40
    .line 41
    iget-object v1, v0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 42
    .line 43
    iget-object v2, v0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lio/sentry/SentryDate;->c(Lio/sentry/SentryDate;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    long-to-double v1, v1

    .line 50
    div-double/2addr v1, v3

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;

    .line 56
    .line 57
    iget-object v1, p1, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v1, p1, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lio/sentry/Span;

    .line 78
    .line 79
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v2}, Lio/sentry/Span;->v()Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_0

    .line 90
    .line 91
    iget-object v3, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 92
    .line 93
    new-instance v4, Lio/sentry/protocol/SentrySpan;

    .line 94
    .line 95
    invoke-direct {v4, v2}, Lio/sentry/protocol/SentrySpan;-><init>(Lio/sentry/Span;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 103
    .line 104
    iget-object v2, p1, Lio/sentry/SentryTracer;->p:Lio/sentry/protocol/Contexts;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lio/sentry/protocol/Contexts;->l(Lio/sentry/protocol/Contexts;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 110
    .line 111
    iget-object v0, v0, Lio/sentry/Span;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    new-instance v3, Lio/sentry/SpanContext;

    .line 114
    .line 115
    iget-object v4, v2, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 116
    .line 117
    iget-object v5, v2, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 118
    .line 119
    iget-object v6, v2, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 120
    .line 121
    iget-object v7, v2, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v8, v2, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v9, v2, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 126
    .line 127
    iget-object v10, v2, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 128
    .line 129
    iget-object v11, v2, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct/range {v3 .. v11}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, v2, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_2

    .line 149
    .line 150
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/util/Map$Entry;

    .line 155
    .line 156
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p0, v6, v5}, Lio/sentry/SentryBaseEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_2
    if-eqz v0, :cond_5

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_5

    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Ljava/util/Map$Entry;

    .line 193
    .line 194
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Ljava/lang/String;

    .line 199
    .line 200
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    if-nez v5, :cond_3

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_3
    iget-object v6, v3, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 208
    .line 209
    if-nez v4, :cond_4

    .line 210
    .line 211
    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_5
    iget-object v0, v2, Lio/sentry/SpanContext;->w:Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    .line 220
    .line 221
    invoke-virtual {v0}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;->c()Lio/sentry/protocol/FeatureFlags;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v3}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lio/sentry/protocol/TransactionInfo;

    .line 228
    .line 229
    iget-object p1, p1, Lio/sentry/SentryTracer;->n:Lio/sentry/protocol/TransactionNameSource;

    .line 230
    .line 231
    invoke-virtual {p1}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {v0, p1}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->D:Lio/sentry/protocol/TransactionInfo;

    .line 239
    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/HashMap;Lio/sentry/protocol/TransactionInfo;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 241
    invoke-direct {p0}, Lio/sentry/SentryBaseEvent;-><init>()V

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 244
    const-string v3, ""

    iput-object v3, p0, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->z:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;

    .line 247
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/protocol/SentrySpan;

    .line 250
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 251
    iget-object p2, p2, Lio/sentry/protocol/SentrySpan;->u:Ljava/util/Map;

    .line 252
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 253
    :cond_0
    iput-object p3, p0, Lio/sentry/protocol/SentryTransaction;->D:Lio/sentry/protocol/TransactionInfo;

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
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "transaction"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v0, "start_timestamp"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->z:Ljava/lang/Double;

    .line 26
    .line 27
    invoke-static {v0}, Lio/sentry/DateUtils;->a(Ljava/lang/Double;)Ljava/math/BigDecimal;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "timestamp"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;

    .line 44
    .line 45
    invoke-static {v0}, Lio/sentry/DateUtils;->a(Ljava/lang/Double;)Ljava/math/BigDecimal;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    const-string v2, "spans"

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 66
    .line 67
    .line 68
    :cond_2
    const-string v0, "type"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    const-string v1, "measurements"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 90
    .line 91
    .line 92
    :cond_3
    const-string v0, "transaction_info"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->D:Lio/sentry/protocol/TransactionInfo;

    .line 98
    .line 99
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p1, p2}, Lio/sentry/SentryBaseEvent$Serializer;->a(Lio/sentry/SentryBaseEvent;Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->E:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/String;

    .line 128
    .line 129
    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->E:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    .line 131
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 136
    .line 137
    .line 138
    return-void
.end method
