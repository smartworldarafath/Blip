.class final Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# direct methods
.method public static final c(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 8
    .line 9
    const/high16 v1, 0x41400000    # 12.0f

    .line 10
    .line 11
    invoke-interface {p2, v1}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    add-int/2addr p2, v0

    .line 16
    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 17
    .line 18
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget p0, p5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 45
    .line 46
    iget p2, p5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 47
    .line 48
    add-int/2addr p0, p2

    .line 49
    iput p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 50
    .line 51
    iget p0, p7, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 52
    .line 53
    iget p1, p8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 54
    .line 55
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    iput p0, p7, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    iput v0, p8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 65
    .line 66
    iput v0, p5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v4, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 34
    .line 35
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/16 v10, 0xd

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    invoke-static {v11, v9, v11, v11, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    :goto_0
    if-ge v11, v12, :cond_3

    .line 59
    .line 60
    move-object/from16 v13, p2

    .line 61
    .line 62
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 67
    .line 68
    invoke-interface {v14, v9, v10}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    move-wide/from16 v16, v9

    .line 77
    .line 78
    const/high16 v9, 0x41000000    # 8.0f

    .line 79
    .line 80
    if-nez v15, :cond_1

    .line 81
    .line 82
    iget v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 83
    .line 84
    invoke-interface {v2, v9}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    add-int/2addr v15, v10

    .line 89
    iget v10, v14, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 90
    .line 91
    add-int/2addr v15, v10

    .line 92
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-gt v15, v10, :cond_0

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_0
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->c(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-nez v10, :cond_2

    .line 107
    .line 108
    iget v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 109
    .line 110
    invoke-interface {v2, v9}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    add-int/2addr v9, v10

    .line 115
    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 116
    .line 117
    :cond_2
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 121
    .line 122
    iget v10, v14, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 123
    .line 124
    add-int/2addr v9, v10

    .line 125
    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 126
    .line 127
    iget v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 128
    .line 129
    iget v10, v14, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 130
    .line 131
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    iput v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 136
    .line 137
    add-int/lit8 v11, v11, 0x1

    .line 138
    .line 139
    move-wide/from16 v9, v16

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-nez v9, :cond_4

    .line 147
    .line 148
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$1;->c(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/layout/MeasureScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    const v4, 0x7fffffff

    .line 156
    .line 157
    .line 158
    if-eq v3, v4, :cond_5

    .line 159
    .line 160
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    iget v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 166
    .line 167
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    :goto_2
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 176
    .line 177
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    new-instance v4, Le0;

    .line 186
    .line 187
    invoke-direct {v4, v0, v2, v3, v6}, Le0;-><init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/ArrayList;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v2, v3, v1, v4}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0
.end method
