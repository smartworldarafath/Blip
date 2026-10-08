.class final Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# static fields
.field public static final a:Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;->a:Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    const/4 v2, 0x0

    .line 8
    if-ge v1, p0, :cond_1

    .line 9
    .line 10
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object v4, v3

    .line 15
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 16
    .line 17
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "title"

    .line 22
    .line 23
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v3, v2

    .line 34
    :goto_1
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/16 v10, 0xb

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move-wide v4, p3

    .line 45
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 46
    .line 47
    .line 48
    move-result-wide p3

    .line 49
    invoke-interface {v3, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-wide v4, p3

    .line 55
    move-object p0, v2

    .line 56
    :goto_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    move p4, v0

    .line 61
    :goto_3
    if-ge p4, p3, :cond_4

    .line 62
    .line 63
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v3, v1

    .line 68
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 69
    .line 70
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v6, "text"

    .line 75
    .line 76
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    move-object v1, v2

    .line 87
    :goto_4
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    const/16 v10, 0xb

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 98
    .line 99
    .line 100
    move-result-wide p2

    .line 101
    invoke-interface {v1, p2, p3}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    move-object p2, v2

    .line 107
    :goto_5
    if-eqz p0, :cond_6

    .line 108
    .line 109
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    move p3, v0

    .line 113
    :goto_6
    if-eqz p2, :cond_7

    .line 114
    .line 115
    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_7
    move p4, v0

    .line 119
    :goto_7
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    const/high16 p4, -0x80000000

    .line 124
    .line 125
    if-eqz p0, :cond_9

    .line 126
    .line 127
    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 128
    .line 129
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measured;->K(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-ne v1, p4, :cond_8

    .line 134
    .line 135
    move-object v1, v2

    .line 136
    goto :goto_8

    .line 137
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_8
    if-eqz v1, :cond_9

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    goto :goto_9

    .line 148
    :cond_9
    move v1, v0

    .line 149
    :goto_9
    if-eqz p0, :cond_b

    .line 150
    .line 151
    sget-object v3, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 152
    .line 153
    invoke-interface {p0, v3}, Landroidx/compose/ui/layout/Measured;->K(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-ne v3, p4, :cond_a

    .line 158
    .line 159
    move-object v3, v2

    .line 160
    goto :goto_a

    .line 161
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    :goto_a
    if-eqz v3, :cond_b

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    goto :goto_b

    .line 172
    :cond_b
    move v3, v0

    .line 173
    :goto_b
    sget-wide v4, Landroidx/compose/material/AlertDialogKt;->c:J

    .line 174
    .line 175
    invoke-interface {p1, v4, v5}, Landroidx/compose/ui/unit/Density;->q0(J)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    sub-int/2addr v4, v1

    .line 180
    if-eqz p2, :cond_d

    .line 181
    .line 182
    sget-object v1, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 183
    .line 184
    invoke-interface {p2, v1}, Landroidx/compose/ui/layout/Measured;->K(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-ne v1, p4, :cond_c

    .line 189
    .line 190
    goto :goto_c

    .line 191
    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :goto_c
    if-eqz v2, :cond_d

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result p4

    .line 201
    goto :goto_d

    .line 202
    :cond_d
    move p4, v0

    .line 203
    :goto_d
    if-nez p0, :cond_e

    .line 204
    .line 205
    sget-wide v1, Landroidx/compose/material/AlertDialogKt;->e:J

    .line 206
    .line 207
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/unit/Density;->q0(J)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    goto :goto_e

    .line 212
    :cond_e
    sget-wide v1, Landroidx/compose/material/AlertDialogKt;->d:J

    .line 213
    .line 214
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/unit/Density;->q0(J)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :goto_e
    if-eqz p0, :cond_f

    .line 219
    .line 220
    iget v2, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 221
    .line 222
    add-int/2addr v2, v4

    .line 223
    goto :goto_f

    .line 224
    :cond_f
    move v2, v0

    .line 225
    :goto_f
    if-nez p0, :cond_10

    .line 226
    .line 227
    sub-int v5, v1, p4

    .line 228
    .line 229
    goto :goto_11

    .line 230
    :cond_10
    if-nez v3, :cond_11

    .line 231
    .line 232
    sub-int v5, v2, p4

    .line 233
    .line 234
    :goto_10
    add-int/2addr v5, v1

    .line 235
    goto :goto_11

    .line 236
    :cond_11
    add-int v5, v4, v3

    .line 237
    .line 238
    sub-int/2addr v5, p4

    .line 239
    goto :goto_10

    .line 240
    :goto_11
    if-eqz p2, :cond_14

    .line 241
    .line 242
    iget v6, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 243
    .line 244
    if-nez v3, :cond_12

    .line 245
    .line 246
    add-int/2addr v6, v1

    .line 247
    sub-int/2addr v6, p4

    .line 248
    :goto_12
    move v0, v6

    .line 249
    goto :goto_13

    .line 250
    :cond_12
    add-int/2addr v6, v1

    .line 251
    sub-int/2addr v6, p4

    .line 252
    if-eqz p0, :cond_13

    .line 253
    .line 254
    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 255
    .line 256
    :cond_13
    sub-int/2addr v0, v3

    .line 257
    sub-int/2addr v6, v0

    .line 258
    goto :goto_12

    .line 259
    :cond_14
    :goto_13
    add-int/2addr v2, v0

    .line 260
    new-instance p4, Ld0;

    .line 261
    .line 262
    invoke-direct {p4, p0, v4, p2, v5}, Ld0;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-interface {p1, p3, v2, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0
.end method
