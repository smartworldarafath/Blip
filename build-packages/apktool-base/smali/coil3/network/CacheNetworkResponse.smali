.class public abstract Lcoil3/network/CacheNetworkResponse;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lokio/RealBufferedSource;)Lcoil3/network/NetworkResponse;
    .locals 14

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    new-instance v2, Lcoil3/network/NetworkHeaders$Builder;

    .line 31
    .line 32
    invoke-direct {v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v9, 0x0

    .line 44
    move v10, v9

    .line 45
    :goto_0
    if-ge v10, v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->U(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    const/16 v12, 0x3a

    .line 52
    .line 53
    const/4 v13, 0x6

    .line 54
    invoke-static {v11, v12, v9, v13}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    const/4 v13, -0x1

    .line 59
    if-eq v12, v13, :cond_0

    .line 60
    .line 61
    invoke-virtual {v11, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    invoke-static {v13}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    add-int/lit8 v12, v12, 0x1

    .line 74
    .line 75
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v2, v13, v11}, Lcoil3/network/NetworkHeaders$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v10, v10, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p0, "Unexpected header: "

    .line 86
    .line 87
    invoke-virtual {p0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    return-object p0

    .line 96
    :cond_1
    new-instance v3, Lcoil3/network/NetworkResponse;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcoil3/network/NetworkHeaders$Builder;->b()Lcoil3/network/NetworkHeaders;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v11, 0x0

    .line 104
    invoke-direct/range {v3 .. v11}, Lcoil3/network/NetworkResponse;-><init>(IJJLcoil3/network/NetworkHeaders;Lcoil3/network/NetworkResponseBody;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v3
.end method

.method public static b(Lcoil3/network/NetworkResponse;Lokio/RealBufferedSink;)V
    .locals 5

    .line 1
    iget v0, p0, Lcoil3/network/NetworkResponse;->a:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-virtual {p1, v0, v1}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 10
    .line 11
    .line 12
    iget-wide v1, p0, Lcoil3/network/NetworkResponse;->b:J

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lcoil3/network/NetworkResponse;->c:J

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    .line 29
    .line 30
    iget-object p0, p0, Lcoil3/network/NetworkHeaders;->a:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v1, p0

    .line 37
    check-cast v1, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/2addr v2, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    int-to-long v1, v2

    .line 69
    invoke-virtual {p1, v1, v2}, Lokio/RealBufferedSink;->h(J)Lokio/BufferedSink;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_1

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 120
    .line 121
    .line 122
    const-string v4, ":"

    .line 123
    .line 124
    invoke-virtual {p1, v4}, Lokio/RealBufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v3}, Lokio/BufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    return-void
.end method
