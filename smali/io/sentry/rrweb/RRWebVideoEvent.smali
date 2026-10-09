.class public final Lio/sentry/rrweb/RRWebVideoEvent;
.super Lio/sentry/rrweb/RRWebEvent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;
    }
.end annotation


# instance fields
.field public A:Ljava/util/concurrent/ConcurrentHashMap;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:J

.field public o:J

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/util/HashMap;

.field public z:Ljava/util/concurrent/ConcurrentHashMap;


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
    const-string v0, "h264"

    .line 7
    .line 8
    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->p:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "mp4"

    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->q:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "constant"

    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->u:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "video"

    .line 19
    .line 20
    iput-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->l:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

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
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/sentry/rrweb/RRWebVideoEvent;

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
    invoke-super {p0, p1}, Lio/sentry/rrweb/RRWebEvent;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    check-cast p1, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 25
    .line 26
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 27
    .line 28
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    iget-wide v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->n:J

    .line 33
    .line 34
    iget-wide v4, p1, Lio/sentry/rrweb/RRWebVideoEvent;->n:J

    .line 35
    .line 36
    cmp-long v2, v2, v4

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    iget-wide v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->o:J

    .line 41
    .line 42
    iget-wide v4, p1, Lio/sentry/rrweb/RRWebVideoEvent;->o:J

    .line 43
    .line 44
    cmp-long v2, v2, v4

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->r:I

    .line 49
    .line 50
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->r:I

    .line 51
    .line 52
    if-ne v2, v3, :cond_3

    .line 53
    .line 54
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->s:I

    .line 55
    .line 56
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->s:I

    .line 57
    .line 58
    if-ne v2, v3, :cond_3

    .line 59
    .line 60
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->t:I

    .line 61
    .line 62
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->t:I

    .line 63
    .line 64
    if-ne v2, v3, :cond_3

    .line 65
    .line 66
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->v:I

    .line 67
    .line 68
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->v:I

    .line 69
    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    .line 72
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->w:I

    .line 73
    .line 74
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->w:I

    .line 75
    .line 76
    if-ne v2, v3, :cond_3

    .line 77
    .line 78
    iget v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->x:I

    .line 79
    .line 80
    iget v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->x:I

    .line 81
    .line 82
    if-ne v2, v3, :cond_3

    .line 83
    .line 84
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->l:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->l:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->p:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->p:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->q:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v3, p1, Lio/sentry/rrweb/RRWebVideoEvent;->q:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    iget-object p0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->u:Ljava/lang/String;

    .line 115
    .line 116
    iget-object p1, p1, Lio/sentry/rrweb/RRWebVideoEvent;->u:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    return v0

    .line 125
    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    invoke-super {p0}, Lio/sentry/rrweb/RRWebEvent;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v4, p0, Lio/sentry/rrweb/RRWebVideoEvent;->n:J

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-wide v5, p0, Lio/sentry/rrweb/RRWebVideoEvent;->o:J

    .line 24
    .line 25
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, p0, Lio/sentry/rrweb/RRWebVideoEvent;->p:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v7, p0, Lio/sentry/rrweb/RRWebVideoEvent;->q:Ljava/lang/String;

    .line 32
    .line 33
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->r:I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->s:I

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->t:I

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v11, p0, Lio/sentry/rrweb/RRWebVideoEvent;->u:Ljava/lang/String;

    .line 52
    .line 53
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->v:I

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->w:I

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    iget p0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->x:I

    .line 66
    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
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
    const-string v0, "tag"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 25
    .line 26
    .line 27
    const-string v0, "payload"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 33
    .line 34
    .line 35
    const-string v0, "segmentId"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 41
    .line 42
    int-to-long v0, v0

    .line 43
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 44
    .line 45
    .line 46
    const-string v0, "size"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->n:J

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 54
    .line 55
    .line 56
    const-string v0, "duration"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->o:J

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 64
    .line 65
    .line 66
    const-string v0, "encoding"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->p:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 74
    .line 75
    .line 76
    const-string v0, "container"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->q:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 84
    .line 85
    .line 86
    const-string v0, "height"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->r:I

    .line 92
    .line 93
    int-to-long v0, v0

    .line 94
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 95
    .line 96
    .line 97
    const-string v0, "width"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 100
    .line 101
    .line 102
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->s:I

    .line 103
    .line 104
    int-to-long v0, v0

    .line 105
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 106
    .line 107
    .line 108
    const-string v0, "frameCount"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 111
    .line 112
    .line 113
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->t:I

    .line 114
    .line 115
    int-to-long v0, v0

    .line 116
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 117
    .line 118
    .line 119
    const-string v0, "frameRate"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 122
    .line 123
    .line 124
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->v:I

    .line 125
    .line 126
    int-to-long v0, v0

    .line 127
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 128
    .line 129
    .line 130
    const-string v0, "frameRateType"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->u:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 138
    .line 139
    .line 140
    const-string v0, "left"

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 143
    .line 144
    .line 145
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->w:I

    .line 146
    .line 147
    int-to-long v0, v0

    .line 148
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 149
    .line 150
    .line 151
    const-string v0, "top"

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 154
    .line 155
    .line 156
    iget v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->x:I

    .line 157
    .line 158
    int-to-long v0, v0

    .line 159
    invoke-virtual {p1, v0, v1}, Lio/sentry/JsonObjectWriter;->f(J)Lio/sentry/JsonObjectWriter;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->z:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    .line 164
    if-eqz v0, :cond_0

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_0

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Ljava/lang/String;

    .line 185
    .line 186
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->z:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    .line 188
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    .line 197
    if-eqz v0, :cond_1

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Ljava/lang/String;

    .line 218
    .line 219
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 220
    .line 221
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lio/sentry/rrweb/RRWebVideoEvent;->y:Ljava/util/HashMap;

    .line 229
    .line 230
    if-eqz v0, :cond_2

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_2

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/String;

    .line 251
    .line 252
    iget-object v2, p0, Lio/sentry/rrweb/RRWebVideoEvent;->y:Ljava/util/HashMap;

    .line 253
    .line 254
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->n(Ljava/util/HashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 259
    .line 260
    .line 261
    return-void
.end method
