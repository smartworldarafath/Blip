.class public final Lio/sentry/ProfileChunk;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfileChunk$Deserializer;,
        Lio/sentry/ProfileChunk$Builder;
    }
.end annotation


# instance fields
.field public j:Lio/sentry/protocol/DebugMeta;

.field public k:Lio/sentry/protocol/SentryId;

.field public l:Lio/sentry/protocol/SentryId;

.field public m:Lio/sentry/protocol/SdkVersion;

.field public final n:Ljava/util/Map;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:D

.field public final t:Ljava/io/File;

.field public u:Ljava/lang/String;

.field public v:Lio/sentry/protocol/profiling/SentryProfile;

.field public w:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/ProfileChunk;->k:Lio/sentry/protocol/SentryId;

    .line 8
    .line 9
    iput-object p2, p0, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 10
    .line 11
    iput-object p3, p0, Lio/sentry/ProfileChunk;->t:Ljava/io/File;

    .line 12
    .line 13
    iput-object p4, p0, Lio/sentry/ProfileChunk;->n:Ljava/util/Map;

    .line 14
    .line 15
    iput-object v0, p0, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 16
    .line 17
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/sentry/ProfileChunk;->m:Lio/sentry/protocol/SdkVersion;

    .line 22
    .line 23
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p1, ""

    .line 35
    .line 36
    :goto_0
    iput-object p1, p0, Lio/sentry/ProfileChunk;->p:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p7}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lio/sentry/ProfileChunk;->q:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p6, p0, Lio/sentry/ProfileChunk;->o:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "2"

    .line 47
    .line 48
    iput-object p1, p0, Lio/sentry/ProfileChunk;->r:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    iput-wide p1, p0, Lio/sentry/ProfileChunk;->s:D

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lio/sentry/ProfileChunk;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lio/sentry/ProfileChunk;

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 14
    .line 15
    iget-object v1, p1, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lio/sentry/ProfileChunk;->k:Lio/sentry/protocol/SentryId;

    .line 24
    .line 25
    iget-object v1, p1, Lio/sentry/ProfileChunk;->k:Lio/sentry/protocol/SentryId;

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 34
    .line 35
    iget-object v1, p1, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lio/sentry/ProfileChunk;->m:Lio/sentry/protocol/SdkVersion;

    .line 44
    .line 45
    iget-object v1, p1, Lio/sentry/ProfileChunk;->m:Lio/sentry/protocol/SdkVersion;

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lio/sentry/ProfileChunk;->n:Ljava/util/Map;

    .line 54
    .line 55
    iget-object v1, p1, Lio/sentry/ProfileChunk;->n:Ljava/util/Map;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lio/sentry/ProfileChunk;->o:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p1, Lio/sentry/ProfileChunk;->o:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lio/sentry/ProfileChunk;->p:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, p1, Lio/sentry/ProfileChunk;->p:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lio/sentry/ProfileChunk;->q:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p1, Lio/sentry/ProfileChunk;->q:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lio/sentry/ProfileChunk;->r:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v1, p1, Lio/sentry/ProfileChunk;->r:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v1, p1, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lio/sentry/ProfileChunk;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    .line 115
    iget-object v1, p1, Lio/sentry/ProfileChunk;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    iget-object p0, p0, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;

    .line 124
    .line 125
    iget-object p1, p1, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;

    .line 126
    .line 127
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_2

    .line 132
    .line 133
    :goto_0
    const/4 p0, 0x1

    .line 134
    return p0

    .line 135
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 136
    return p0
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-object v0, p0, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/ProfileChunk;->k:Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    iget-object v3, p0, Lio/sentry/ProfileChunk;->m:Lio/sentry/protocol/SdkVersion;

    .line 8
    .line 9
    iget-object v5, p0, Lio/sentry/ProfileChunk;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lio/sentry/ProfileChunk;->p:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lio/sentry/ProfileChunk;->q:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, p0, Lio/sentry/ProfileChunk;->r:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, p0, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, p0, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;

    .line 20
    .line 21
    iget-object v11, p0, Lio/sentry/ProfileChunk;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    iget-object v4, p0, Lio/sentry/ProfileChunk;->n:Ljava/util/Map;

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
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
    iget-object v0, p0, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "debug_meta"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string v0, "profiler_id"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/ProfileChunk;->k:Lio/sentry/protocol/SentryId;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 28
    .line 29
    .line 30
    const-string v0, "chunk_id"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/sentry/ProfileChunk;->m:Lio/sentry/protocol/SdkVersion;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v0, "client_sdk"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/ProfileChunk;->m:Lio/sentry/protocol/SdkVersion;

    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lio/sentry/ProfileChunk;->n:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p1, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 63
    .line 64
    iget-object v1, v1, Lio/sentry/vendor/gson/stream/JsonWriter;->m:Ljava/lang/String;

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Lio/sentry/JsonObjectWriter;->d(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "measurements"

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->d(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const-string v0, "platform"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lio/sentry/ProfileChunk;->o:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 90
    .line 91
    .line 92
    const-string v0, "release"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/sentry/ProfileChunk;->p:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lio/sentry/ProfileChunk;->q:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    const-string v0, "environment"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lio/sentry/ProfileChunk;->q:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 114
    .line 115
    .line 116
    :cond_3
    const-string v0, "version"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lio/sentry/ProfileChunk;->r:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    const-string v0, "sampled_profile"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 138
    .line 139
    .line 140
    :cond_4
    const-string v0, "timestamp"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 143
    .line 144
    .line 145
    iget-wide v0, p0, Lio/sentry/ProfileChunk;->s:D

    .line 146
    .line 147
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const/4 v1, 0x6

    .line 152
    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    const-string v0, "profile"

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;

    .line 171
    .line 172
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 173
    .line 174
    .line 175
    :cond_5
    iget-object v0, p0, Lio/sentry/ProfileChunk;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    .line 177
    if-eqz v0, :cond_6

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .line 199
    iget-object v2, p0, Lio/sentry/ProfileChunk;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    .line 201
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 206
    .line 207
    .line 208
    return-void
.end method
