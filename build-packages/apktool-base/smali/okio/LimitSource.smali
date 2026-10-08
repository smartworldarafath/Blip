.class final Lokio/LimitSource;
.super Lokio/ForwardingSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final k:J

.field public final l:Z

.field public m:J


# direct methods
.method public constructor <init>(Lokio/Source;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lokio/LimitSource;->k:J

    .line 5
    .line 6
    iput-boolean p4, p0, Lokio/LimitSource;->l:Z

    .line 7
    .line 8
    const-wide/16 p0, 0x0

    .line 9
    .line 10
    cmp-long p0, p2, p0

    .line 11
    .line 12
    if-ltz p0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "byteCount < 0: "

    .line 16
    .line 17
    invoke-static {p2, p3, p0}, Lq;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-wide v2, v0, Lokio/LimitSource;->m:J

    .line 9
    .line 10
    iget-wide v5, v0, Lokio/LimitSource;->k:J

    .line 11
    .line 12
    sub-long v2, v5, v2

    .line 13
    .line 14
    const-wide/16 v10, 0x0

    .line 15
    .line 16
    cmp-long v4, v2, v10

    .line 17
    .line 18
    const-string v7, " bytes but got "

    .line 19
    .line 20
    move v8, v4

    .line 21
    const-string v4, "expected "

    .line 22
    .line 23
    if-ltz v8, :cond_6

    .line 24
    .line 25
    iget-boolean v9, v0, Lokio/LimitSource;->l:Z

    .line 26
    .line 27
    const-wide/16 v12, -0x1

    .line 28
    .line 29
    if-eqz v9, :cond_1

    .line 30
    .line 31
    const-wide/16 v14, 0x1

    .line 32
    .line 33
    add-long/2addr v2, v14

    .line 34
    cmp-long v9, p1, v2

    .line 35
    .line 36
    if-lez v9, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-wide/from16 v2, p1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-nez v8, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    cmp-long v9, p1, v2

    .line 46
    .line 47
    if-lez v9, :cond_0

    .line 48
    .line 49
    :goto_0
    iget-object v9, v0, Lokio/ForwardingSource;->j:Lokio/Source;

    .line 50
    .line 51
    invoke-interface {v9, v2, v3, v1}, Lokio/Source;->J0(JLokio/Buffer;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    cmp-long v9, v2, v12

    .line 56
    .line 57
    if-nez v9, :cond_4

    .line 58
    .line 59
    if-nez v8, :cond_3

    .line 60
    .line 61
    :goto_1
    return-wide v12

    .line 62
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    .line 63
    .line 64
    iget-wide v2, v0, Lokio/LimitSource;->m:J

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v1

    .line 88
    :cond_4
    iget-wide v8, v0, Lokio/LimitSource;->m:J

    .line 89
    .line 90
    add-long/2addr v8, v2

    .line 91
    iput-wide v8, v0, Lokio/LimitSource;->m:J

    .line 92
    .line 93
    sub-long/2addr v8, v5

    .line 94
    cmp-long v12, v8, v10

    .line 95
    .line 96
    if-gtz v12, :cond_5

    .line 97
    .line 98
    return-wide v2

    .line 99
    :cond_5
    iget-wide v2, v1, Lokio/Buffer;->k:J

    .line 100
    .line 101
    sub-long/2addr v2, v8

    .line 102
    new-instance v8, Lokio/Buffer;

    .line 103
    .line 104
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v1}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2, v3, v8}, Lokio/Buffer;->l0(JLokio/Buffer;)V

    .line 111
    .line 112
    .line 113
    iget-wide v1, v8, Lokio/Buffer;->k:J

    .line 114
    .line 115
    invoke-virtual {v8, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 116
    .line 117
    .line 118
    iget-wide v8, v0, Lokio/LimitSource;->m:J

    .line 119
    .line 120
    invoke-static/range {v4 .. v9}, Lk8;->l(Ljava/lang/String;JLjava/lang/Object;J)V

    .line 121
    .line 122
    .line 123
    return-wide v10

    .line 124
    :cond_6
    iget-wide v8, v0, Lokio/LimitSource;->m:J

    .line 125
    .line 126
    invoke-static/range {v4 .. v9}, Lk8;->l(Ljava/lang/String;JLjava/lang/Object;J)V

    .line 127
    .line 128
    .line 129
    return-wide v10
.end method
