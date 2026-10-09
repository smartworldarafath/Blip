.class public abstract Lokio/Utf8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ltz v0, :cond_9

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-gt v0, v4, :cond_8

    .line 18
    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-ge v4, v0, :cond_7

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/16 v6, 0x80

    .line 27
    .line 28
    const-wide/16 v7, 0x1

    .line 29
    .line 30
    if-ge v5, v6, :cond_0

    .line 31
    .line 32
    add-long/2addr v1, v7

    .line 33
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v6, 0x800

    .line 37
    .line 38
    if-ge v5, v6, :cond_1

    .line 39
    .line 40
    const-wide/16 v5, 0x2

    .line 41
    .line 42
    :goto_2
    add-long/2addr v1, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const v6, 0xd800

    .line 45
    .line 46
    .line 47
    if-lt v5, v6, :cond_6

    .line 48
    .line 49
    const v6, 0xdfff

    .line 50
    .line 51
    .line 52
    if-le v5, v6, :cond_2

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_2
    add-int/lit8 v9, v4, 0x1

    .line 56
    .line 57
    if-ge v9, v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v10, v3

    .line 65
    :goto_3
    const v11, 0xdbff

    .line 66
    .line 67
    .line 68
    if-gt v5, v11, :cond_5

    .line 69
    .line 70
    const v5, 0xdc00

    .line 71
    .line 72
    .line 73
    if-lt v10, v5, :cond_5

    .line 74
    .line 75
    if-le v10, v6, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const-wide/16 v5, 0x4

    .line 79
    .line 80
    add-long/2addr v1, v5

    .line 81
    add-int/lit8 v4, v4, 0x2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    :goto_4
    add-long/2addr v1, v7

    .line 85
    move v4, v9

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    :goto_5
    const-wide/16 v5, 0x3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    return-wide v1

    .line 91
    :cond_8
    const-string v1, "endIndex > string.length: "

    .line 92
    .line 93
    const-string v2, " > "

    .line 94
    .line 95
    invoke-static {v1, v0, v2}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_9
    const-string p0, "endIndex < beginIndex: "

    .line 121
    .line 122
    const-string v4, " < "

    .line 123
    .line 124
    invoke-static {v0, v3, p0, v4}, Lq;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-wide v1
.end method
