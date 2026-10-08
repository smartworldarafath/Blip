.class public final Lio/sentry/SentryReplayEvent;
.super Lio/sentry/SentryBaseEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryReplayEvent$ReplayType;,
        Lio/sentry/SentryReplayEvent$Deserializer;
    }
.end annotation


# instance fields
.field public A:Lio/sentry/SentryReplayEvent$ReplayType;

.field public B:Lio/sentry/protocol/SentryId;

.field public C:I

.field public D:Ljava/util/Date;

.field public E:Ljava/util/Date;

.field public F:Ljava/util/List;

.field public G:Ljava/util/List;

.field public H:Ljava/util/List;

.field public I:Ljava/util/HashMap;

.field public y:Ljava/io/File;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/sentry/SentryBaseEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 10
    .line 11
    const-string v0, "replay_event"

    .line 12
    .line 13
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->z:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v0, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->D:Ljava/util/Date;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-class v2, Lio/sentry/SentryReplayEvent;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lio/sentry/SentryReplayEvent;

    .line 18
    .line 19
    iget v2, p0, Lio/sentry/SentryReplayEvent;->C:I

    .line 20
    .line 21
    iget v3, p1, Lio/sentry/SentryReplayEvent;->C:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->z:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p1, Lio/sentry/SentryReplayEvent;->z:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 36
    .line 37
    iget-object v3, p1, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 42
    .line 43
    iget-object v3, p1, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 44
    .line 45
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 52
    .line 53
    iget-object v3, p1, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 62
    .line 63
    iget-object v3, p1, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 72
    .line 73
    iget-object p1, p1, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    return v0

    .line 82
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->z:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    iget v3, p0, Lio/sentry/SentryReplayEvent;->C:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 14
    .line 15
    iget-object v5, p0, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 16
    .line 17
    iget-object v6, p0, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
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
    const-string v0, "type"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->z:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 14
    .line 15
    .line 16
    const-string v0, "replay_type"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 24
    .line 25
    .line 26
    const-string v0, "segment_id"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lio/sentry/SentryReplayEvent;->C:I

    .line 32
    .line 33
    int-to-long v0, v0

    .line 34
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 35
    .line 36
    .line 37
    const-string v0, "timestamp"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->D:Ljava/util/Date;

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const-string v0, "replay_id"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->E:Ljava/util/Date;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-string v0, "replay_start_timestamp"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->E:Ljava/util/Date;

    .line 71
    .line 72
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-string v0, "urls"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    const-string v0, "error_ids"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    const-string v0, "trace_ids"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 113
    .line 114
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-static {p0, p1, p2}, Lio/sentry/SentryBaseEvent$Serializer;->a(Lio/sentry/SentryBaseEvent;Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lio/sentry/SentryReplayEvent;->I:Ljava/util/HashMap;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/lang/String;

    .line 143
    .line 144
    iget-object v2, p0, Lio/sentry/SentryReplayEvent;->I:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 151
    .line 152
    .line 153
    return-void
.end method
