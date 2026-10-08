.class Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final j:Ljava/io/InputStream;

.field public final k:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokio/InputStreamSource;->j:Ljava/io/InputStream;

    .line 8
    .line 9
    iput-object p2, p0, Lokio/InputStreamSource;->k:Lokio/Timeout;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    if-ltz v2, :cond_6

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :try_start_0
    iget-object v1, p0, Lokio/InputStreamSource;->k:Lokio/Timeout;

    .line 15
    .line 16
    invoke-virtual {v1}, Lokio/Timeout;->f()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v0}, Lokio/Buffer;->S(I)Lokio/Segment;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, v1, Lokio/Segment;->c:I

    .line 24
    .line 25
    rsub-int v2, v2, 0x2000

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    long-to-int p1, p1

    .line 33
    iget-object p0, p0, Lokio/InputStreamSource;->j:Ljava/io/InputStream;

    .line 34
    .line 35
    iget-object p2, v1, Lokio/Segment;->a:[B

    .line 36
    .line 37
    iget v2, v1, Lokio/Segment;->c:I

    .line 38
    .line 39
    invoke-virtual {p0, p2, v2, p1}, Ljava/io/InputStream;->read([BII)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 p1, -0x1

    .line 44
    if-ne p0, p1, :cond_2

    .line 45
    .line 46
    iget p0, v1, Lokio/Segment;->b:I

    .line 47
    .line 48
    iget p1, v1, Lokio/Segment;->c:I

    .line 49
    .line 50
    if-ne p0, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iput-object p0, p3, Lokio/Buffer;->j:Lokio/Segment;

    .line 57
    .line 58
    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    .line 65
    .line 66
    return-wide p0

    .line 67
    :cond_2
    iget p1, v1, Lokio/Segment;->c:I

    .line 68
    .line 69
    add-int/2addr p1, p0

    .line 70
    iput p1, v1, Lokio/Segment;->c:I

    .line 71
    .line 72
    iget-wide p1, p3, Lokio/Buffer;->k:J

    .line 73
    .line 74
    int-to-long v1, p0

    .line 75
    add-long/2addr p1, v1

    .line 76
    iput-wide p1, p3, Lokio/Buffer;->k:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    return-wide v1

    .line 79
    :goto_1
    sget-object p1, Lokio/internal/_JavaIoKt;->a:Ljava/util/logging/Logger;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 p2, 0x0

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    const-string p3, "getsockname failed"

    .line 95
    .line 96
    invoke-static {p1, p3, p2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move p1, p2

    .line 102
    :goto_2
    if-eqz p1, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    move v0, p2

    .line 106
    :goto_3
    if-eqz v0, :cond_5

    .line 107
    .line 108
    new-instance p1, Ljava/io/IOException;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_5
    throw p0

    .line 115
    :cond_6
    const-string p0, "byteCount < 0: "

    .line 116
    .line 117
    invoke-static {p1, p2, p0}, Lq;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-wide v0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->j:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->k:Lokio/Timeout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "source("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokio/InputStreamSource;->j:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
