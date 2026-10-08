.class final Landroidx/compose/foundation/text/TextMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field public final b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->a:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    if-ge v5, v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move-object v7, v6

    .line 27
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 28
    .line 29
    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    instance-of v7, v7, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    .line 34
    .line 35
    if-nez v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v3, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->b:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/List;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    new-instance v6, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    move v8, v4

    .line 67
    :goto_1
    if-ge v8, v7, :cond_4

    .line 68
    .line 69
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    check-cast v9, Landroidx/compose/ui/geometry/Rect;

    .line 74
    .line 75
    if-eqz v9, :cond_2

    .line 76
    .line 77
    iget v10, v9, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 78
    .line 79
    iget v11, v9, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 80
    .line 81
    new-instance v12, Lkotlin/Pair;

    .line 82
    .line 83
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 88
    .line 89
    iget v14, v9, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 90
    .line 91
    sub-float/2addr v14, v11

    .line 92
    float-to-double v14, v14

    .line 93
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v14

    .line 97
    double-to-float v14, v14

    .line 98
    float-to-int v14, v14

    .line 99
    iget v9, v9, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 100
    .line 101
    sub-float/2addr v9, v10

    .line 102
    move-object/from16 v16, v6

    .line 103
    .line 104
    float-to-double v5, v9

    .line 105
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    double-to-float v5, v5

    .line 110
    float-to-int v5, v5

    .line 111
    const/4 v6, 0x5

    .line 112
    invoke-static {v4, v14, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    invoke-interface {v13, v5, v6}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    int-to-long v10, v6

    .line 129
    const/16 v6, 0x20

    .line 130
    .line 131
    shl-long/2addr v10, v6

    .line 132
    int-to-long v13, v9

    .line 133
    const-wide v17, 0xffffffffL

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    and-long v13, v13, v17

    .line 139
    .line 140
    or-long v9, v10, v13

    .line 141
    .line 142
    new-instance v6, Landroidx/compose/ui/unit/IntOffset;

    .line 143
    .line 144
    invoke-direct {v6, v9, v10}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v12, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    move-object/from16 v16, v6

    .line 152
    .line 153
    const/4 v12, 0x0

    .line 154
    :goto_2
    move-object/from16 v5, v16

    .line 155
    .line 156
    if-eqz v12, :cond_3

    .line 157
    .line 158
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    move-object v6, v5

    .line 164
    goto :goto_1

    .line 165
    :cond_4
    move-object v5, v6

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const/4 v5, 0x0

    .line 168
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    :goto_4
    if-ge v4, v3, :cond_7

    .line 182
    .line 183
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    move-object v7, v6

    .line 188
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 189
    .line 190
    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    instance-of v7, v7, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    .line 195
    .line 196
    if-eqz v7, :cond_6

    .line 197
    .line 198
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_7
    iget-object v0, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->a:Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/BasicTextKt;->d(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    new-instance v3, Lec;

    .line 219
    .line 220
    const/16 v4, 0x12

    .line 221
    .line 222
    invoke-direct {v3, v4, v5, v0}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v0, p1

    .line 226
    .line 227
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    return-object v0
.end method
