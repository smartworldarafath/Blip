.class public Lio/sentry/SpanContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SpanContext$Deserializer;
    }
.end annotation


# instance fields
.field public final j:Lio/sentry/protocol/SentryId;

.field public final k:Lio/sentry/SpanId;

.field public final l:Lio/sentry/SpanId;

.field public transient m:Lio/sentry/TracesSamplingDecision;

.field public final n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lio/sentry/SpanStatus;

.field public q:Ljava/util/concurrent/ConcurrentHashMap;

.field public r:Ljava/lang/String;

.field public s:Ljava/util/Map;

.field public t:Ljava/util/concurrent/ConcurrentHashMap;

.field public u:Lio/sentry/Instrumenter;

.field public v:Lio/sentry/Baggage;

.field public final w:Lio/sentry/featureflags/SpanFeatureFlagBuffer;

.field public final x:Lio/sentry/protocol/SentryId;


# direct methods
.method public constructor <init>(Lio/sentry/SpanContext;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    const-string v0, "manual"

    iput-object v0, p0, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 111
    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object v0, p0, Lio/sentry/SpanContext;->u:Lio/sentry/Instrumenter;

    .line 112
    new-instance v0, Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    invoke-direct {v0}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;-><init>()V

    .line 113
    iput-object v0, p0, Lio/sentry/SpanContext;->w:Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    .line 114
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/SpanContext;->x:Lio/sentry/protocol/SentryId;

    .line 115
    iget-object v0, p1, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 116
    iget-object v0, p1, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    iput-object v0, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 117
    iget-object v0, p1, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    iput-object v0, p0, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 118
    iget-object v0, p1, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    invoke-virtual {p0, v0}, Lio/sentry/SpanContext;->a(Lio/sentry/TracesSamplingDecision;)V

    .line 119
    iget-object v0, p1, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 122
    iget-object v0, p1, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iput-object v0, p0, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    :cond_0
    iget-object v0, p1, Lio/sentry/SpanContext;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iput-object v0, p0, Lio/sentry/SpanContext;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    :cond_1
    iget-object v0, p1, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    iput-object v0, p0, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    .line 128
    iget-object p1, p1, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    iput-object p1, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const-string v0, "manual"

    .line 12
    .line 13
    iput-object v0, p0, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 21
    .line 22
    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 23
    .line 24
    iput-object v0, p0, Lio/sentry/SpanContext;->u:Lio/sentry/Instrumenter;

    .line 25
    .line 26
    new-instance v0, Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    .line 27
    .line 28
    invoke-direct {v0}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/sentry/SpanContext;->w:Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    .line 32
    .line 33
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 34
    .line 35
    iput-object v0, p0, Lio/sentry/SpanContext;->x:Lio/sentry/protocol/SentryId;

    .line 36
    .line 37
    const-string v0, "traceId is required"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 43
    .line 44
    const-string p1, "spanId is required"

    .line 45
    .line 46
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 50
    .line 51
    const-string p1, "operation is required"

    .line 52
    .line 53
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object p4, p0, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p3, p0, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 59
    .line 60
    iput-object p5, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p7, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 63
    .line 64
    iput-object p8, p0, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, p6}, Lio/sentry/SpanContext;->a(Lio/sentry/TracesSamplingDecision;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 70
    .line 71
    invoke-virtual {p1}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {p1}, Lio/sentry/util/thread/IThreadChecker;->b()J

    .line 82
    .line 83
    .line 84
    move-result-wide p3

    .line 85
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const-string p4, "thread.id"

    .line 90
    .line 91
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 95
    .line 96
    const-string p2, "thread.name"

    .line 97
    .line 98
    invoke-interface {p1}, Lio/sentry/util/thread/IThreadChecker;->a()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V
    .locals 9

    const/4 v7, 0x0

    .line 106
    const-string v8, "manual"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v8}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/TracesSamplingDecision;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    .line 4
    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p1, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 11
    .line 12
    sget-object v1, Lio/sentry/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    const-string v1, "sentry-sampled"

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lio/sentry/TracesSamplingDecision;->c:Ljava/lang/Double;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-boolean v1, p0, Lio/sentry/Baggage;->e:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iput-object v0, p0, Lio/sentry/Baggage;->d:Ljava/lang/Double;

    .line 36
    .line 37
    :cond_2
    iget-object p1, p1, Lio/sentry/TracesSamplingDecision;->b:Ljava/lang/Double;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iput-object p1, p0, Lio/sentry/Baggage;->c:Ljava/lang/Double;

    .line 42
    .line 43
    :cond_3
    :goto_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/sentry/SpanContext;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lio/sentry/SpanContext;

    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 14
    .line 15
    iget-object v3, p1, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 24
    .line 25
    iget-object v3, p1, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lio/sentry/SpanId;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 34
    .line 35
    iget-object v3, p1, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object p0, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 64
    .line 65
    iget-object p1, p1, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 66
    .line 67
    if-ne p0, p1, :cond_2

    .line 68
    .line 69
    return v0

    .line 70
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v4, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v5, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    iget-object v1, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 8
    .line 9
    iget-object v2, p0, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 10
    .line 11
    iget-object v3, p0, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

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
    const-string v0, "trace_id"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "span_id"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v1, "parent_span_id"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string v0, "op"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string v0, "description"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v0, "status"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    const-string v0, "origin"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    const-string v0, "tags"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 106
    .line 107
    .line 108
    :cond_4
    iget-object v0, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    const-string v0, "data"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 122
    .line 123
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lio/sentry/SpanContext;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/lang/String;

    .line 149
    .line 150
    iget-object v2, p0, Lio/sentry/SpanContext;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    .line 152
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 157
    .line 158
    .line 159
    return-void
.end method
