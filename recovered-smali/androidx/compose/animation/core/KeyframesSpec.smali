.class public final Landroidx/compose/animation/core/KeyframesSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;,
        Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesSpec;->a:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->f(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->f(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;
    .locals 19

    .line 1
    new-instance v0, Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/compose/animation/core/KeyframesSpec;->a:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->b:Landroidx/collection/MutableIntObjectMap;

    .line 8
    .line 9
    iget v3, v2, Landroidx/collection/IntObjectMap;->e:I

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x2

    .line 12
    .line 13
    invoke-direct {v0, v3}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroidx/collection/MutableIntObjectMap;

    .line 17
    .line 18
    iget v4, v2, Landroidx/collection/IntObjectMap;->e:I

    .line 19
    .line 20
    invoke-direct {v3, v4}, Landroidx/collection/MutableIntObjectMap;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v2, Landroidx/collection/IntObjectMap;->b:[I

    .line 24
    .line 25
    iget-object v5, v2, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v6, v2, Landroidx/collection/IntObjectMap;->a:[J

    .line 28
    .line 29
    array-length v7, v6

    .line 30
    add-int/lit8 v7, v7, -0x2

    .line 31
    .line 32
    if-ltz v7, :cond_2

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    :goto_0
    aget-wide v10, v6, v9

    .line 36
    .line 37
    not-long v12, v10

    .line 38
    const/4 v14, 0x7

    .line 39
    shl-long/2addr v12, v14

    .line 40
    and-long/2addr v12, v10

    .line 41
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v12, v14

    .line 47
    cmp-long v12, v12, v14

    .line 48
    .line 49
    if-eqz v12, :cond_3

    .line 50
    .line 51
    sub-int v12, v9, v7

    .line 52
    .line 53
    not-int v12, v12

    .line 54
    ushr-int/lit8 v12, v12, 0x1f

    .line 55
    .line 56
    const/16 v13, 0x8

    .line 57
    .line 58
    rsub-int/lit8 v12, v12, 0x8

    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    :goto_1
    if-ge v14, v12, :cond_1

    .line 62
    .line 63
    const-wide/16 v15, 0xff

    .line 64
    .line 65
    and-long/2addr v15, v10

    .line 66
    const-wide/16 v17, 0x80

    .line 67
    .line 68
    cmp-long v15, v15, v17

    .line 69
    .line 70
    if-gez v15, :cond_0

    .line 71
    .line 72
    shl-int/lit8 v15, v9, 0x3

    .line 73
    .line 74
    add-int/2addr v15, v14

    .line 75
    aget v8, v4, v15

    .line 76
    .line 77
    aget-object v15, v5, v15

    .line 78
    .line 79
    check-cast v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 80
    .line 81
    invoke-virtual {v0, v8}, Landroidx/collection/MutableIntList;->b(I)V

    .line 82
    .line 83
    .line 84
    move/from16 v16, v13

    .line 85
    .line 86
    new-instance v13, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;

    .line 87
    .line 88
    move-object/from16 v17, v4

    .line 89
    .line 90
    move-object/from16 v4, p1

    .line 91
    .line 92
    check-cast v4, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 93
    .line 94
    iget-object v4, v4, Landroidx/compose/animation/core/TwoWayConverterImpl;->a:Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    move-object/from16 v18, v5

    .line 97
    .line 98
    iget-object v5, v15, Landroidx/compose/animation/core/KeyframeBaseEntity;->a:Ljava/lang/Float;

    .line 99
    .line 100
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Landroidx/compose/animation/core/AnimationVector;

    .line 105
    .line 106
    iget-object v5, v15, Landroidx/compose/animation/core/KeyframeBaseEntity;->b:Landroidx/compose/animation/core/Easing;

    .line 107
    .line 108
    invoke-direct {v13, v4, v5}, Landroidx/compose/animation/core/VectorizedKeyframeSpecElementInfo;-><init>(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/Easing;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v8, v13}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_0
    move-object/from16 v17, v4

    .line 116
    .line 117
    move-object/from16 v18, v5

    .line 118
    .line 119
    move/from16 v16, v13

    .line 120
    .line 121
    :goto_2
    shr-long v10, v10, v16

    .line 122
    .line 123
    add-int/lit8 v14, v14, 0x1

    .line 124
    .line 125
    move/from16 v13, v16

    .line 126
    .line 127
    move-object/from16 v4, v17

    .line 128
    .line 129
    move-object/from16 v5, v18

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    move-object/from16 v17, v4

    .line 133
    .line 134
    move-object/from16 v18, v5

    .line 135
    .line 136
    move v4, v13

    .line 137
    if-ne v12, v4, :cond_2

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_2
    const/4 v4, 0x0

    .line 141
    goto :goto_4

    .line 142
    :cond_3
    move-object/from16 v17, v4

    .line 143
    .line 144
    move-object/from16 v18, v5

    .line 145
    .line 146
    :goto_3
    if-eq v9, v7, :cond_2

    .line 147
    .line 148
    add-int/lit8 v9, v9, 0x1

    .line 149
    .line 150
    move-object/from16 v4, v17

    .line 151
    .line 152
    move-object/from16 v5, v18

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :goto_4
    invoke-virtual {v2, v4}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_6

    .line 160
    .line 161
    iget v5, v0, Landroidx/collection/IntList;->b:I

    .line 162
    .line 163
    if-ltz v5, :cond_5

    .line 164
    .line 165
    const/4 v6, 0x1

    .line 166
    add-int/2addr v5, v6

    .line 167
    invoke-virtual {v0, v5}, Landroidx/collection/MutableIntList;->c(I)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v0, Landroidx/collection/IntList;->a:[I

    .line 171
    .line 172
    iget v7, v0, Landroidx/collection/IntList;->b:I

    .line 173
    .line 174
    if-eqz v7, :cond_4

    .line 175
    .line 176
    invoke-static {v6, v4, v7, v5, v5}, Lkotlin/collections/ArraysKt;->f(III[I[I)V

    .line 177
    .line 178
    .line 179
    :cond_4
    aput v4, v5, v4

    .line 180
    .line 181
    iget v4, v0, Landroidx/collection/IntList;->b:I

    .line 182
    .line 183
    add-int/2addr v4, v6

    .line 184
    iput v4, v0, Landroidx/collection/IntList;->b:I

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_5
    const-string v0, "Index must be between 0 and size"

    .line 188
    .line 189
    invoke-static {v0}, Lu2;->o(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    return-object v0

    .line 194
    :cond_6
    :goto_5
    iget v4, v1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_7

    .line 201
    .line 202
    iget v2, v1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Landroidx/collection/MutableIntList;->b(I)V

    .line 205
    .line 206
    .line 207
    :cond_7
    iget v2, v0, Landroidx/collection/IntList;->b:I

    .line 208
    .line 209
    if-nez v2, :cond_8

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_8
    iget-object v4, v0, Landroidx/collection/IntList;->a:[I

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    invoke-static {v4, v5, v2}, Ljava/util/Arrays;->sort([III)V

    .line 219
    .line 220
    .line 221
    :goto_6
    new-instance v2, Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    .line 222
    .line 223
    iget v1, v1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    .line 224
    .line 225
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 226
    .line 227
    invoke-direct {v2, v0, v3, v1, v4}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Landroidx/collection/MutableIntList;Landroidx/collection/MutableIntObjectMap;ILandroidx/compose/animation/core/Easing;)V

    .line 228
    .line 229
    .line 230
    return-object v2
.end method
