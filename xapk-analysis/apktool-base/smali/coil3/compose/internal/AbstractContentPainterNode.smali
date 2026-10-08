.class public abstract Lcoil3/compose/internal/AbstractContentPainterNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Lcoil3/compose/ConstraintsSizeResolver;

.field public x:Landroidx/compose/ui/Alignment;

.field public y:Landroidx/compose/ui/layout/ContentScale;

.field public z:F


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->B:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x5

    .line 17
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->c(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Y0(J)J
    .locals 10

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->e(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    return-wide p0

    .line 10
    :cond_0
    move-object v0, p0

    .line 11
    check-cast v0, Lcoil3/compose/internal/ContentPainterNode;

    .line 12
    .line 13
    iget-object v0, v0, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long v2, v0, v2

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/16 v2, 0x20

    .line 30
    .line 31
    shr-long v3, v0, v2

    .line 32
    .line 33
    long-to-int v3, v3

    .line 34
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 43
    .line 44
    .line 45
    cmpg-float v4, v4, v5

    .line 46
    .line 47
    if-gtz v4, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    shr-long v3, p1, v2

    .line 51
    .line 52
    long-to-int v3, v3

    .line 53
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :goto_0
    const-wide v6, 0xffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v0, v6

    .line 63
    long-to-int v0, v0

    .line 64
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    cmpg-float v1, v1, v5

    .line 73
    .line 74
    if-gtz v1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    and-long v0, p1, v6

    .line 78
    .line 79
    long-to-int v0, v0

    .line 80
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    int-to-long v3, v1

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v0, v0

    .line 94
    shl-long/2addr v3, v2

    .line 95
    and-long/2addr v0, v6

    .line 96
    or-long/2addr v0, v3

    .line 97
    iget-object p0, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->y:Landroidx/compose/ui/layout/ContentScale;

    .line 98
    .line 99
    invoke-interface {p0, v0, v1, p1, p2}, Landroidx/compose/ui/layout/ContentScale;->a(JJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    shr-long v8, v3, v2

    .line 104
    .line 105
    long-to-int p0, v8

    .line 106
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    cmpg-float p0, p0, v5

    .line 115
    .line 116
    if-gtz p0, :cond_4

    .line 117
    .line 118
    and-long/2addr v6, v3

    .line 119
    long-to-int p0, v6

    .line 120
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    cmpg-float p0, p0, v5

    .line 129
    .line 130
    if-gtz p0, :cond_4

    .line 131
    .line 132
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/layout/ScaleFactorKt;->a(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide p0

    .line 136
    return-wide p0

    .line 137
    :cond_4
    :goto_2
    return-wide p1
.end method

.method public final Z0(J)J
    .locals 9

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v2, p0

    .line 15
    check-cast v2, Lcoil3/compose/internal/ContentPainterNode;

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->c(J)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_0
    iget-object v2, v2, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v6, v4, v6

    .line 44
    .line 45
    if-nez v6, :cond_4

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    iget-object p0, v2, Lcoil3/compose/AsyncImagePainter;->D:Lkotlinx/coroutines/flow/StateFlow;

    .line 50
    .line 51
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcoil3/compose/AsyncImagePainter$State;

    .line 56
    .line 57
    invoke-interface {p0}, Lcoil3/compose/AsyncImagePainter$State;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-nez p0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x0

    .line 73
    const/16 v6, 0xa

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    move-wide v0, p1

    .line 77
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 78
    .line 79
    .line 80
    move-result-wide p0

    .line 81
    return-wide p0

    .line 82
    :cond_3
    :goto_1
    return-wide p1

    .line 83
    :cond_4
    const-wide v6, 0xffffffffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const/16 v2, 0x20

    .line 89
    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    :cond_5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-float v0, v0

    .line 101
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    :goto_2
    int-to-float v1, v1

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    shr-long v0, v4, v2

    .line 108
    .line 109
    long-to-int v0, v0

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    and-long v3, v4, v6

    .line 115
    .line 116
    long-to-int v1, v3

    .line 117
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 126
    .line 127
    .line 128
    cmpg-float v3, v3, v4

    .line 129
    .line 130
    if-gtz v3, :cond_9

    .line 131
    .line 132
    sget v3, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 133
    .line 134
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    int-to-float v5, v5

    .line 144
    cmpg-float v8, v0, v3

    .line 145
    .line 146
    if-gez v8, :cond_7

    .line 147
    .line 148
    move v0, v3

    .line 149
    :cond_7
    cmpl-float v3, v0, v5

    .line 150
    .line 151
    if-lez v3, :cond_8

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    move v5, v0

    .line 155
    :goto_3
    move v0, v5

    .line 156
    goto :goto_4

    .line 157
    :cond_9
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    int-to-float v0, v0

    .line 162
    :goto_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    cmpg-float v3, v3, v4

    .line 167
    .line 168
    if-gtz v3, :cond_c

    .line 169
    .line 170
    sget v3, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 171
    .line 172
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    int-to-float v3, v3

    .line 177
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    int-to-float v4, v4

    .line 182
    cmpg-float v5, v1, v3

    .line 183
    .line 184
    if-gez v5, :cond_a

    .line 185
    .line 186
    move v1, v3

    .line 187
    :cond_a
    cmpl-float v3, v1, v4

    .line 188
    .line 189
    if-lez v3, :cond_b

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_b
    move v4, v1

    .line 193
    :goto_5
    move v1, v4

    .line 194
    goto :goto_6

    .line 195
    :cond_c
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    goto :goto_2

    .line 200
    :goto_6
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    int-to-long v3, v0

    .line 205
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    int-to-long v0, v0

    .line 210
    shl-long/2addr v3, v2

    .line 211
    and-long/2addr v0, v6

    .line 212
    or-long/2addr v0, v3

    .line 213
    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->Y0(J)J

    .line 214
    .line 215
    .line 216
    move-result-wide v0

    .line 217
    shr-long v2, v0, v2

    .line 218
    .line 219
    long-to-int p0, v2

    .line 220
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    and-long/2addr v0, v6

    .line 225
    long-to-int v0, v0

    .line 226
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-static {p0}, Lkotlin/math/MathKt;->b(F)I

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    const/4 v5, 0x0

    .line 247
    const/16 v6, 0xa

    .line 248
    .line 249
    const/4 v3, 0x0

    .line 250
    move-wide v0, p1

    .line 251
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 252
    .line 253
    .line 254
    move-result-wide p0

    .line 255
    return-wide p0
.end method

.method public final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x7

    .line 3
    invoke-static {p1, p1, p1, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->C:Lcoil3/compose/ConstraintsSizeResolver;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->o(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    move-object p1, p0

    .line 15
    check-cast p1, Lcoil3/compose/internal/ContentPainterNode;

    .line 16
    .line 17
    iget-object p1, p1, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long p1, v2, v4

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->Z0(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    invoke-static {p1, p3, p1, p1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->C:Lcoil3/compose/ConstraintsSizeResolver;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->o(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    move-object p1, p0

    .line 16
    check-cast p1, Lcoil3/compose/internal/ContentPainterNode;

    .line 17
    .line 18
    iget-object p1, p1, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long p1, v2, v4

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->Z0(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x7

    .line 3
    invoke-static {p1, p1, p1, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->C:Lcoil3/compose/ConstraintsSizeResolver;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->o(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    move-object p1, p0

    .line 15
    check-cast p1, Lcoil3/compose/internal/ContentPainterNode;

    .line 16
    .line 17
    iget-object p1, p1, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long p1, v2, v4

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->Z0(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    invoke-static {p1, p3, p1, p1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object p1, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->C:Lcoil3/compose/ConstraintsSizeResolver;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcoil3/compose/ConstraintsSizeResolver;->o(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    move-object p1, p0

    .line 16
    check-cast p1, Lcoil3/compose/internal/ContentPainterNode;

    .line 17
    .line 18
    iget-object p1, p1, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcoil3/compose/AsyncImagePainter;->i()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long p1, v2, v4

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcoil3/compose/internal/AbstractContentPainterNode;->Z0(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 6
    .line 7
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {v0, v3, v4}, Lcoil3/compose/internal/AbstractContentPainterNode;->Y0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v5, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->x:Landroidx/compose/ui/Alignment;

    .line 16
    .line 17
    invoke-static {v3, v4}, Lcoil3/compose/internal/UtilsKt;->e(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    invoke-static {v8, v9}, Lcoil3/compose/internal/UtilsKt;->e(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-interface/range {v5 .. v10}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const/16 v7, 0x20

    .line 38
    .line 39
    shr-long v8, v5, v7

    .line 40
    .line 41
    long-to-int v8, v8

    .line 42
    const-wide v9, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v5, v9

    .line 48
    long-to-int v5, v5

    .line 49
    iget-object v6, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 52
    .line 53
    .line 54
    move-result-wide v11

    .line 55
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-object v2, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 63
    .line 64
    iget-object v13, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 65
    .line 66
    iget-boolean v14, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->A:Z

    .line 67
    .line 68
    if-eqz v14, :cond_0

    .line 69
    .line 70
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 71
    .line 72
    .line 73
    move-result-wide v14

    .line 74
    shr-long/2addr v14, v7

    .line 75
    long-to-int v7, v14

    .line 76
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v17

    .line 80
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 81
    .line 82
    .line 83
    move-result-wide v14

    .line 84
    and-long/2addr v9, v14

    .line 85
    long-to-int v7, v9

    .line 86
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result v18

    .line 90
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v19, 0x1

    .line 98
    .line 99
    invoke-interface/range {v14 .. v19}, Landroidx/compose/ui/graphics/Canvas;->n(FFFFI)V

    .line 100
    .line 101
    .line 102
    :cond_0
    int-to-float v7, v8

    .line 103
    int-to-float v5, v5

    .line 104
    invoke-virtual {v2, v7, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 105
    .line 106
    .line 107
    move-object v2, v0

    .line 108
    check-cast v2, Lcoil3/compose/internal/ContentPainterNode;

    .line 109
    .line 110
    iget-object v2, v2, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 111
    .line 112
    iget v0, v0, Lcoil3/compose/internal/AbstractContentPainterNode;->z:F

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    move-wide/from16 v20, v3

    .line 116
    .line 117
    move v4, v0

    .line 118
    move-object v0, v2

    .line 119
    move-wide/from16 v2, v20

    .line 120
    .line 121
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/painter/Painter;->g(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    invoke-static {v6, v11, v12}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 140
    .line 141
    .line 142
    throw v0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->C:Lcoil3/compose/ConstraintsSizeResolver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p3, p4}, Lcoil3/compose/ConstraintsSizeResolver;->o(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcoil3/compose/internal/AbstractContentPainterNode;->Z0(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p3

    .line 12
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 17
    .line 18
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 19
    .line 20
    new-instance p4, Lf;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p4, p0, v0}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
