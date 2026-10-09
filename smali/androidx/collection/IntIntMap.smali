.class public abstract Landroidx/collection/IntIntMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:[J

.field public b:[I

.field public c:[I

.field public d:I

.field public e:I


# virtual methods
.method public final a(I)I
    .locals 13

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->hashCode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x3361d2af    # -8.2930312E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x10

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    and-int/lit8 v1, v0, 0x7f

    .line 13
    .line 14
    iget v2, p0, Landroidx/collection/IntIntMap;->d:I

    .line 15
    .line 16
    ushr-int/lit8 v0, v0, 0x7

    .line 17
    .line 18
    and-int/2addr v0, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    iget-object v4, p0, Landroidx/collection/IntIntMap;->a:[J

    .line 21
    .line 22
    shr-int/lit8 v5, v0, 0x3

    .line 23
    .line 24
    and-int/lit8 v6, v0, 0x7

    .line 25
    .line 26
    shl-int/lit8 v6, v6, 0x3

    .line 27
    .line 28
    aget-wide v7, v4, v5

    .line 29
    .line 30
    ushr-long/2addr v7, v6

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    aget-wide v4, v4, v5

    .line 34
    .line 35
    rsub-int/lit8 v9, v6, 0x40

    .line 36
    .line 37
    shl-long/2addr v4, v9

    .line 38
    int-to-long v9, v6

    .line 39
    neg-long v9, v9

    .line 40
    const/16 v6, 0x3f

    .line 41
    .line 42
    shr-long/2addr v9, v6

    .line 43
    and-long/2addr v4, v9

    .line 44
    or-long/2addr v4, v7

    .line 45
    int-to-long v6, v1

    .line 46
    const-wide v8, 0x101010101010101L

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    mul-long/2addr v6, v8

    .line 52
    xor-long/2addr v6, v4

    .line 53
    sub-long v8, v6, v8

    .line 54
    .line 55
    not-long v6, v6

    .line 56
    and-long/2addr v6, v8

    .line 57
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v6, v8

    .line 63
    :goto_1
    const-wide/16 v10, 0x0

    .line 64
    .line 65
    cmp-long v12, v6, v10

    .line 66
    .line 67
    if-eqz v12, :cond_1

    .line 68
    .line 69
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    shr-int/lit8 v10, v10, 0x3

    .line 74
    .line 75
    add-int/2addr v10, v0

    .line 76
    and-int/2addr v10, v2

    .line 77
    iget-object v11, p0, Landroidx/collection/IntIntMap;->b:[I

    .line 78
    .line 79
    aget v11, v11, v10

    .line 80
    .line 81
    if-ne v11, p1, :cond_0

    .line 82
    .line 83
    return v10

    .line 84
    :cond_0
    const-wide/16 v10, 0x1

    .line 85
    .line 86
    sub-long v10, v6, v10

    .line 87
    .line 88
    and-long/2addr v6, v10

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    not-long v6, v4

    .line 91
    const/4 v12, 0x6

    .line 92
    shl-long/2addr v6, v12

    .line 93
    and-long/2addr v4, v6

    .line 94
    and-long/2addr v4, v8

    .line 95
    cmp-long v4, v4, v10

    .line 96
    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    const/4 p0, -0x1

    .line 100
    return p0

    .line 101
    :cond_2
    add-int/lit8 v3, v3, 0x8

    .line 102
    .line 103
    add-int/2addr v0, v3

    .line 104
    and-int/2addr v0, v2

    .line 105
    goto :goto_0
.end method

.method public final b(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/collection/IntIntMap;->c:[I

    .line 8
    .line 9
    aget p0, p0, p1

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Landroidx/collection/IntIntMap;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    check-cast v1, Landroidx/collection/IntIntMap;

    .line 16
    .line 17
    iget v3, v1, Landroidx/collection/IntIntMap;->e:I

    .line 18
    .line 19
    iget v5, v0, Landroidx/collection/IntIntMap;->e:I

    .line 20
    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    return v4

    .line 24
    :cond_2
    iget-object v3, v0, Landroidx/collection/IntIntMap;->b:[I

    .line 25
    .line 26
    iget-object v5, v0, Landroidx/collection/IntIntMap;->c:[I

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/collection/IntIntMap;->a:[J

    .line 29
    .line 30
    array-length v6, v0

    .line 31
    add-int/lit8 v6, v6, -0x2

    .line 32
    .line 33
    if-ltz v6, :cond_7

    .line 34
    .line 35
    move v7, v4

    .line 36
    :goto_0
    aget-wide v8, v0, v7

    .line 37
    .line 38
    not-long v10, v8

    .line 39
    const/4 v12, 0x7

    .line 40
    shl-long/2addr v10, v12

    .line 41
    and-long/2addr v10, v8

    .line 42
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v10, v12

    .line 48
    cmp-long v10, v10, v12

    .line 49
    .line 50
    if-eqz v10, :cond_6

    .line 51
    .line 52
    sub-int v10, v7, v6

    .line 53
    .line 54
    not-int v10, v10

    .line 55
    ushr-int/lit8 v10, v10, 0x1f

    .line 56
    .line 57
    const/16 v11, 0x8

    .line 58
    .line 59
    rsub-int/lit8 v10, v10, 0x8

    .line 60
    .line 61
    move v12, v4

    .line 62
    :goto_1
    if-ge v12, v10, :cond_5

    .line 63
    .line 64
    const-wide/16 v13, 0xff

    .line 65
    .line 66
    and-long/2addr v13, v8

    .line 67
    const-wide/16 v15, 0x80

    .line 68
    .line 69
    cmp-long v13, v13, v15

    .line 70
    .line 71
    if-gez v13, :cond_4

    .line 72
    .line 73
    shl-int/lit8 v13, v7, 0x3

    .line 74
    .line 75
    add-int/2addr v13, v12

    .line 76
    aget v14, v3, v13

    .line 77
    .line 78
    aget v13, v5, v13

    .line 79
    .line 80
    invoke-virtual {v1, v14}, Landroidx/collection/IntIntMap;->a(I)I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-ltz v14, :cond_3

    .line 85
    .line 86
    iget-object v15, v1, Landroidx/collection/IntIntMap;->c:[I

    .line 87
    .line 88
    aget v14, v15, v14

    .line 89
    .line 90
    if-eq v13, v14, :cond_4

    .line 91
    .line 92
    :cond_3
    return v4

    .line 93
    :cond_4
    shr-long/2addr v8, v11

    .line 94
    add-int/lit8 v12, v12, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    if-ne v10, v11, :cond_7

    .line 98
    .line 99
    :cond_6
    if-eq v7, v6, :cond_7

    .line 100
    .line 101
    add-int/lit8 v7, v7, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/collection/IntIntMap;->b:[I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/IntIntMap;->c:[I

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/collection/IntIntMap;->a:[J

    .line 6
    .line 7
    array-length v2, p0

    .line 8
    add-int/lit8 v2, v2, -0x2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ltz v2, :cond_5

    .line 12
    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    :goto_0
    aget-wide v6, p0, v4

    .line 16
    .line 17
    not-long v8, v6

    .line 18
    const/4 v10, 0x7

    .line 19
    shl-long/2addr v8, v10

    .line 20
    and-long/2addr v8, v6

    .line 21
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v8, v10

    .line 27
    cmp-long v8, v8, v10

    .line 28
    .line 29
    if-eqz v8, :cond_3

    .line 30
    .line 31
    sub-int v8, v4, v2

    .line 32
    .line 33
    not-int v8, v8

    .line 34
    ushr-int/lit8 v8, v8, 0x1f

    .line 35
    .line 36
    const/16 v9, 0x8

    .line 37
    .line 38
    rsub-int/lit8 v8, v8, 0x8

    .line 39
    .line 40
    move v10, v3

    .line 41
    :goto_1
    if-ge v10, v8, :cond_1

    .line 42
    .line 43
    const-wide/16 v11, 0xff

    .line 44
    .line 45
    and-long/2addr v11, v6

    .line 46
    const-wide/16 v13, 0x80

    .line 47
    .line 48
    cmp-long v11, v11, v13

    .line 49
    .line 50
    if-gez v11, :cond_0

    .line 51
    .line 52
    shl-int/lit8 v11, v4, 0x3

    .line 53
    .line 54
    add-int/2addr v11, v10

    .line 55
    aget v12, v0, v11

    .line 56
    .line 57
    aget v11, v1, v11

    .line 58
    .line 59
    invoke-static {v12}, Ljava/lang/Integer;->hashCode(I)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    xor-int/2addr v11, v12

    .line 68
    add-int/2addr v5, v11

    .line 69
    :cond_0
    shr-long/2addr v6, v9

    .line 70
    add-int/lit8 v10, v10, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-ne v8, v9, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    return v5

    .line 77
    :cond_3
    :goto_2
    if-eq v4, v2, :cond_4

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    return v5

    .line 83
    :cond_5
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/IntIntMap;->e:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v0, "{}"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "{"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Landroidx/collection/IntIntMap;->b:[I

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/collection/IntIntMap;->c:[I

    .line 20
    .line 21
    iget-object v4, v0, Landroidx/collection/IntIntMap;->a:[J

    .line 22
    .line 23
    array-length v5, v4

    .line 24
    add-int/lit8 v5, v5, -0x2

    .line 25
    .line 26
    if-ltz v5, :cond_4

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move v7, v6

    .line 30
    move v8, v7

    .line 31
    :goto_0
    aget-wide v9, v4, v7

    .line 32
    .line 33
    not-long v11, v9

    .line 34
    const/4 v13, 0x7

    .line 35
    shl-long/2addr v11, v13

    .line 36
    and-long/2addr v11, v9

    .line 37
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr v11, v13

    .line 43
    cmp-long v11, v11, v13

    .line 44
    .line 45
    if-eqz v11, :cond_3

    .line 46
    .line 47
    sub-int v11, v7, v5

    .line 48
    .line 49
    not-int v11, v11

    .line 50
    ushr-int/lit8 v11, v11, 0x1f

    .line 51
    .line 52
    const/16 v12, 0x8

    .line 53
    .line 54
    rsub-int/lit8 v11, v11, 0x8

    .line 55
    .line 56
    move v13, v6

    .line 57
    :goto_1
    if-ge v13, v11, :cond_2

    .line 58
    .line 59
    const-wide/16 v14, 0xff

    .line 60
    .line 61
    and-long/2addr v14, v9

    .line 62
    const-wide/16 v16, 0x80

    .line 63
    .line 64
    cmp-long v14, v14, v16

    .line 65
    .line 66
    if-gez v14, :cond_1

    .line 67
    .line 68
    shl-int/lit8 v14, v7, 0x3

    .line 69
    .line 70
    add-int/2addr v14, v13

    .line 71
    aget v15, v2, v14

    .line 72
    .line 73
    aget v14, v3, v14

    .line 74
    .line 75
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v15, "="

    .line 79
    .line 80
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    iget v14, v0, Landroidx/collection/IntIntMap;->e:I

    .line 89
    .line 90
    if-ge v8, v14, :cond_1

    .line 91
    .line 92
    const-string v14, ", "

    .line 93
    .line 94
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_1
    shr-long/2addr v9, v12

    .line 98
    add-int/lit8 v13, v13, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    if-ne v11, v12, :cond_4

    .line 102
    .line 103
    :cond_3
    if-eq v7, v5, :cond_4

    .line 104
    .line 105
    add-int/lit8 v7, v7, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    const/16 v0, 0x7d

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method
