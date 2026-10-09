.class public final Lio/sentry/rrweb/RRWebInteractionEvent;
.super Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;,
        Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;
    }
.end annotation


# instance fields
.field public m:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public n:I

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:Ljava/util/HashMap;

.field public t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;-><init>(Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->q:I

    .line 8
    .line 9
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
    const-string v0, "source"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;->l:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 25
    .line 26
    .line 27
    const-string v0, "type"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->m:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 35
    .line 36
    .line 37
    const-string v0, "id"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->n:I

    .line 43
    .line 44
    int-to-long v0, v0

    .line 45
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 46
    .line 47
    .line 48
    const-string v0, "x"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->o:F

    .line 54
    .line 55
    float-to-double v0, v0

    .line 56
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->e(D)Lio/sentry/JsonObjectWriter;

    .line 57
    .line 58
    .line 59
    const-string v0, "y"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->p:F

    .line 65
    .line 66
    float-to-double v0, v0

    .line 67
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->e(D)Lio/sentry/JsonObjectWriter;

    .line 68
    .line 69
    .line 70
    const-string v0, "pointerType"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->q:I

    .line 76
    .line 77
    int-to-long v0, v0

    .line 78
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 79
    .line 80
    .line 81
    const-string v0, "pointerId"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->r:I

    .line 87
    .line 88
    int-to-long v0, v0

    .line 89
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->t:Ljava/util/HashMap;

    .line 93
    .line 94
    if-eqz v0, :cond_0

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
    if-eqz v1, :cond_0

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
    iget-object v2, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->t:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->s:Ljava/util/HashMap;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_1

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 148
    .line 149
    iget-object v2, p0, Lio/sentry/rrweb/RRWebInteractionEvent;->s:Ljava/util/HashMap;

    .line 150
    .line 151
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 156
    .line 157
    .line 158
    return-void
.end method
