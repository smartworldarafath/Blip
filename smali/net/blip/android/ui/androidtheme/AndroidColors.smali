.class public final Lnet/blip/android/ui/androidtheme/AndroidColors;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field public final p:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 7
    .line 8
    iput-wide p5, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 9
    .line 10
    iput-wide p7, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 11
    .line 12
    iput-wide p9, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 13
    .line 14
    iput-wide p11, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 15
    .line 16
    iput-wide p13, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 17
    .line 18
    move-wide p1, p15

    .line 19
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 20
    .line 21
    move-wide/from16 p1, p17

    .line 22
    .line 23
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 24
    .line 25
    move-wide/from16 p1, p19

    .line 26
    .line 27
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 28
    .line 29
    move-wide/from16 p1, p21

    .line 30
    .line 31
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->k:J

    .line 32
    .line 33
    move-wide/from16 p1, p23

    .line 34
    .line 35
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 36
    .line 37
    move-wide/from16 p1, p25

    .line 38
    .line 39
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 40
    .line 41
    move-wide/from16 p1, p27

    .line 42
    .line 43
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 44
    .line 45
    move-wide/from16 p1, p29

    .line 46
    .line 47
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 48
    .line 49
    move-wide/from16 p1, p31

    .line 50
    .line 51
    iput-wide p1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 12
    .line 13
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->a:J

    .line 16
    .line 17
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 25
    .line 26
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 36
    .line 37
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 38
    .line 39
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 47
    .line 48
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 49
    .line 50
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 58
    .line 59
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 60
    .line 61
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 69
    .line 70
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 71
    .line 72
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 80
    .line 81
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 82
    .line 83
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 91
    .line 92
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 93
    .line 94
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 102
    .line 103
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 104
    .line 105
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 113
    .line 114
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 115
    .line 116
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->k:J

    .line 124
    .line 125
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->k:J

    .line 126
    .line 127
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 135
    .line 136
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 137
    .line 138
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 146
    .line 147
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 148
    .line 149
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 157
    .line 158
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 159
    .line 160
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 168
    .line 169
    iget-wide v5, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 170
    .line 171
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-wide v3, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 179
    .line 180
    iget-wide p0, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 181
    .line 182
    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->i:I

    .line 2
    .line 3
    iget-wide v0, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 61
    .line 62
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->k:J

    .line 67
    .line 68
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 73
    .line 74
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 79
    .line 80
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 85
    .line 86
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-wide v2, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 91
    .line 92
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-wide v1, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 97
    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    add-int/2addr p0, v0

    .line 103
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->a:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v3, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-wide v4, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 22
    .line 23
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-wide v5, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 28
    .line 29
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-wide v6, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 34
    .line 35
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-wide v7, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 40
    .line 41
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    iget-wide v8, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 46
    .line 47
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget-wide v9, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 52
    .line 53
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget-wide v10, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 58
    .line 59
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iget-wide v11, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->k:J

    .line 64
    .line 65
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget-wide v12, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 70
    .line 71
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget-wide v13, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 76
    .line 77
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget-wide v14, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 82
    .line 83
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    move-object v15, v13

    .line 88
    move-object/from16 v16, v14

    .line 89
    .line 90
    iget-wide v13, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 91
    .line 92
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    move-object/from16 v17, v15

    .line 97
    .line 98
    iget-wide v14, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 99
    .line 100
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v14, ", accent="

    .line 105
    .line 106
    const-string v15, ", secondaryAccent="

    .line 107
    .line 108
    move-object/from16 p0, v0

    .line 109
    .line 110
    const-string v0, "AndroidColors(primary="

    .line 111
    .line 112
    invoke-static {v0, v1, v14, v2, v15}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, ", primaryText="

    .line 117
    .line 118
    const-string v2, ", secondaryText="

    .line 119
    .line 120
    invoke-static {v0, v3, v1, v4, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, ", tertiaryText="

    .line 124
    .line 125
    const-string v2, ", destructiveText="

    .line 126
    .line 127
    invoke-static {v0, v5, v1, v6, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v1, ", primaryTextOnTint="

    .line 131
    .line 132
    const-string v2, ", background="

    .line 133
    .line 134
    invoke-static {v0, v7, v1, v8, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v1, ", backgroundWash="

    .line 138
    .line 139
    const-string v2, ", placeholder="

    .line 140
    .line 141
    invoke-static {v0, v9, v1, v10, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v1, ", separator="

    .line 145
    .line 146
    const-string v2, ", galleryBackground="

    .line 147
    .line 148
    invoke-static {v0, v11, v1, v12, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v1, ", popupBackground="

    .line 152
    .line 153
    const-string v2, ", rippleOnBackground="

    .line 154
    .line 155
    move-object/from16 v3, v16

    .line 156
    .line 157
    move-object/from16 v15, v17

    .line 158
    .line 159
    invoke-static {v0, v15, v1, v3, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, ", appBackground="

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-object/from16 v1, p0

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ")"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0
.end method
