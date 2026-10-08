.class public abstract Lcom/google/common/primitives/Ints;
.super Lcom/google/common/primitives/IntsMethodsForWeb;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;
    }
.end annotation


# direct methods
.method public static varargs a([I)Ljava/util/List;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    array-length v2, p0

    .line 11
    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>(II[I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static b(J)I
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-long v1, v0

    .line 3
    cmp-long v1, v1, p0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    const-string v2, "Out of range: %s"

    .line 11
    .line 12
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/Preconditions;->f(ZLjava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public static c(BBBB)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p1, p1, 0xff

    .line 4
    .line 5
    shl-int/lit8 p1, p1, 0x10

    .line 6
    .line 7
    or-int/2addr p0, p1

    .line 8
    and-int/lit16 p1, p2, 0xff

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    or-int/2addr p0, p1

    .line 13
    and-int/lit16 p1, p3, 0xff

    .line 14
    .line 15
    or-int/2addr p0, p1

    .line 16
    return p0
.end method

.method public static d(J)I
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const p0, 0x7fffffff

    .line 9
    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-wide/32 v0, -0x80000000

    .line 13
    .line 14
    .line 15
    cmp-long v0, p0, v0

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    const/high16 p0, -0x80000000

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    long-to-int p0, p0

    .line 23
    return p0
.end method

.method public static e(Ljava/util/AbstractCollection;)[I
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->j:[I

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->k:I

    .line 10
    .line 11
    iget p0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;->l:I

    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v0, p0

    .line 23
    new-array v1, v0, [I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    aget-object v3, p0, v2

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast v3, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    aput v3, v1, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    :goto_0
    move-object p0, v1

    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x2d

    .line 20
    .line 21
    if-ne v2, v3, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v0, v2, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, -0x1

    .line 38
    const/16 v5, 0x80

    .line 39
    .line 40
    if-ge v3, v5, :cond_4

    .line 41
    .line 42
    sget-object v6, Lcom/google/common/primitives/Longs$AsciiDigits;->a:[B

    .line 43
    .line 44
    aget-byte v3, v6, v3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    sget-object v3, Lcom/google/common/primitives/Longs$AsciiDigits;->a:[B

    .line 48
    .line 49
    move v3, v4

    .line 50
    :goto_1
    if-ltz v3, :cond_0

    .line 51
    .line 52
    const/16 v6, 0xa

    .line 53
    .line 54
    if-lt v3, v6, :cond_5

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    neg-int v3, v3

    .line 58
    int-to-long v7, v3

    .line 59
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const-wide/high16 v9, -0x8000000000000000L

    .line 64
    .line 65
    if-ge v2, v3, :cond_9

    .line 66
    .line 67
    add-int/lit8 v3, v2, 0x1

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v2, v5, :cond_6

    .line 74
    .line 75
    sget-object v11, Lcom/google/common/primitives/Longs$AsciiDigits;->a:[B

    .line 76
    .line 77
    aget-byte v2, v11, v2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    sget-object v2, Lcom/google/common/primitives/Longs$AsciiDigits;->a:[B

    .line 81
    .line 82
    move v2, v4

    .line 83
    :goto_3
    if-ltz v2, :cond_0

    .line 84
    .line 85
    if-ge v2, v6, :cond_0

    .line 86
    .line 87
    const-wide v11, -0xcccccccccccccccL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    cmp-long v11, v7, v11

    .line 93
    .line 94
    if-gez v11, :cond_7

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    const-wide/16 v11, 0xa

    .line 98
    .line 99
    mul-long/2addr v7, v11

    .line 100
    int-to-long v11, v2

    .line 101
    add-long/2addr v9, v11

    .line 102
    cmp-long v2, v7, v9

    .line 103
    .line 104
    if-gez v2, :cond_8

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    sub-long/2addr v7, v11

    .line 108
    move v2, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_9
    if-eqz v0, :cond_a

    .line 111
    .line 112
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    goto :goto_4

    .line 117
    :cond_a
    cmp-long p0, v7, v9

    .line 118
    .line 119
    if-nez p0, :cond_b

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_b
    neg-long v2, v7

    .line 123
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    :goto_4
    if-eqz p0, :cond_d

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v2

    .line 133
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    int-to-long v4, v0

    .line 138
    cmp-long v0, v2, v4

    .line 139
    .line 140
    if-eqz v0, :cond_c

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :cond_d
    :goto_5
    return-object v1
.end method
