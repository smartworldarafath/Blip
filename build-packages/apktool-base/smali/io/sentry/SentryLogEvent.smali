.class public final Lio/sentry/SentryLogEvent;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLogEvent$Deserializer;
    }
.end annotation


# instance fields
.field public j:Lio/sentry/protocol/SentryId;

.field public k:Lio/sentry/SpanId;

.field public l:Ljava/lang/Double;

.field public m:Ljava/lang/String;

.field public n:Lio/sentry/SentryLogLevel;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/util/Map;

.field public q:Ljava/util/HashMap;


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
    const-string v0, "timestamp"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->l:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-static {v0}, Lio/sentry/DateUtils;->a(Ljava/lang/Double;)Ljava/math/BigDecimal;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 18
    .line 19
    .line 20
    const-string v0, "trace_id"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->j:Lio/sentry/protocol/SentryId;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->k:Lio/sentry/SpanId;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string v0, "span_id"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->k:Lio/sentry/SpanId;

    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "body"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->m:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 52
    .line 53
    .line 54
    const-string v0, "level"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->n:Lio/sentry/SentryLogLevel;

    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->o:Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string v0, "severity_number"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->o:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->p:Ljava/util/Map;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string v0, "attributes"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->p:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryLogEvent;->q:Ljava/util/HashMap;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/String;

    .line 115
    .line 116
    iget-object v2, p0, Lio/sentry/SentryLogEvent;->q:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 123
    .line 124
    .line 125
    return-void
.end method
