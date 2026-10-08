.class public final synthetic Landroidx/compose/foundation/text/selection/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/text/selection/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 11

    .line 1
    iget p0, p0, Landroidx/compose/foundation/text/selection/a;->a:I

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;->a:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1$1;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object p0, p1

    .line 11
    check-cast p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->b:Landroidx/compose/foundation/text/selection/Selection;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->a(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_0
    iget-object v0, v3, Landroidx/compose/foundation/text/selection/Selection;->b:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 24
    .line 25
    iget-object v4, v3, Landroidx/compose/foundation/text/selection/Selection;->a:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 28
    .line 29
    iget-boolean v6, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a:Z

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    invoke-static {p1, v5, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->b(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v6, v5

    .line 38
    move-object v5, v0

    .line 39
    move-object v0, v4

    .line 40
    move-object v4, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1, v5, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->b(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    move-object v6, v5

    .line 47
    :goto_0
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v3, Landroidx/compose/foundation/text/selection/CrossStatus;->j:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 60
    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object v0, Landroidx/compose/foundation/text/selection/CrossStatus;->l:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 68
    .line 69
    if-ne p0, v0, :cond_3

    .line 70
    .line 71
    iget p0, v4, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 72
    .line 73
    iget v0, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 74
    .line 75
    if-le p0, v0, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move p0, v2

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    :goto_1
    move p0, v1

    .line 81
    :goto_2
    new-instance v0, Landroidx/compose/foundation/text/selection/Selection;

    .line 82
    .line 83
    invoke-direct {v0, v4, v5, p0}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 84
    .line 85
    .line 86
    iget-object p0, v0, Landroidx/compose/foundation/text/selection/Selection;->a:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 87
    .line 88
    iget-wide v3, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c:J

    .line 89
    .line 90
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/Selection;->b:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 91
    .line 92
    iget-wide v6, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c:J

    .line 93
    .line 94
    cmp-long v3, v3, v6

    .line 95
    .line 96
    if-nez v3, :cond_5

    .line 97
    .line 98
    iget v3, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 99
    .line 100
    iget v4, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 101
    .line 102
    if-ne v3, v4, :cond_12

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    iget-boolean v3, v0, Landroidx/compose/foundation/text/selection/Selection;->c:Z

    .line 106
    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    move-object v4, p0

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    move-object v4, v5

    .line 112
    :goto_3
    iget v4, v4, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 113
    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :cond_7
    if-eqz v3, :cond_8

    .line 119
    .line 120
    move-object v3, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_8
    move-object v3, p0

    .line 123
    :goto_4
    move-object v4, p1

    .line 124
    check-cast v4, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 125
    .line 126
    iget-object v4, v4, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 127
    .line 128
    iget-object v4, v4, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 129
    .line 130
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 131
    .line 132
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 133
    .line 134
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget v3, v3, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 141
    .line 142
    if-eq v4, v3, :cond_9

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_9
    :goto_5
    check-cast p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 147
    .line 148
    iget-object v3, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 149
    .line 150
    iget-object v4, v3, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 151
    .line 152
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 153
    .line 154
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 155
    .line 156
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v6, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->b:Landroidx/compose/foundation/text/selection/Selection;

    .line 159
    .line 160
    iget-boolean p1, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a:Z

    .line 161
    .line 162
    if-eqz v6, :cond_12

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_a

    .line 169
    .line 170
    goto/16 :goto_8

    .line 171
    .line 172
    :cond_a
    iget-object v4, v3, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 173
    .line 174
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 175
    .line 176
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 177
    .line 178
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 179
    .line 180
    iget v7, v3, Landroidx/compose/foundation/text/selection/SelectableInfo;->a:I

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    const/4 v9, 0x2

    .line 187
    const/4 v10, 0x0

    .line 188
    if-nez v7, :cond_c

    .line 189
    .line 190
    invoke-static {v2, v4}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->a(ILjava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz p1, :cond_b

    .line 195
    .line 196
    invoke-static {p0, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {v0, p0, v10, v1, v9}, Landroidx/compose/foundation/text/selection/Selection;->a(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    :goto_6
    move-object v3, p0

    .line 205
    goto :goto_9

    .line 206
    :cond_b
    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-static {v0, v10, p0, v2, v1}, Landroidx/compose/foundation/text/selection/Selection;->a(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    goto :goto_6

    .line 215
    :cond_c
    if-ne v7, v8, :cond_e

    .line 216
    .line 217
    invoke-static {v8, v4}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->b(ILjava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz p1, :cond_d

    .line 222
    .line 223
    invoke-static {p0, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-static {v0, p0, v10, v2, v9}, Landroidx/compose/foundation/text/selection/Selection;->a(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    goto :goto_6

    .line 232
    :cond_d
    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {v0, v10, p0, v1, v1}, Landroidx/compose/foundation/text/selection/Selection;->a(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    goto :goto_6

    .line 241
    :cond_e
    iget-boolean v6, v6, Landroidx/compose/foundation/text/selection/Selection;->c:Z

    .line 242
    .line 243
    if-ne v6, v1, :cond_f

    .line 244
    .line 245
    move v2, v1

    .line 246
    :cond_f
    xor-int v6, p1, v2

    .line 247
    .line 248
    if-eqz v6, :cond_10

    .line 249
    .line 250
    invoke-static {v7, v4}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->b(ILjava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    goto :goto_7

    .line 255
    :cond_10
    invoke-static {v7, v4}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->a(ILjava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    :goto_7
    if-eqz p1, :cond_11

    .line 260
    .line 261
    invoke-static {p0, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-static {v0, p0, v10, v2, v9}, Landroidx/compose/foundation/text/selection/Selection;->a(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    goto :goto_6

    .line 270
    :cond_11
    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-static {v0, v10, p0, v2, v1}, Landroidx/compose/foundation/text/selection/Selection;->a(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;ZI)Landroidx/compose/foundation/text/selection/Selection;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    goto :goto_6

    .line 279
    :cond_12
    :goto_8
    move-object v3, v0

    .line 280
    :goto_9
    return-object v3

    .line 281
    :pswitch_0
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;->a:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;

    .line 282
    .line 283
    invoke-static {p1, p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->a(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    :pswitch_1
    invoke-static {p1, v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->a(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :pswitch_2
    new-instance p0, Landroidx/compose/foundation/text/selection/Selection;

    .line 294
    .line 295
    check-cast p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 296
    .line 297
    iget-object v0, p1, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 298
    .line 299
    iget v3, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->a:I

    .line 300
    .line 301
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/text/selection/SelectableInfo;->a(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    iget v4, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->b:I

    .line 306
    .line 307
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/SelectableInfo;->a(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    sget-object v4, Landroidx/compose/foundation/text/selection/CrossStatus;->j:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 316
    .line 317
    if-ne p1, v4, :cond_13

    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_13
    move v1, v2

    .line 321
    :goto_a
    invoke-direct {p0, v3, v0, v1}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 322
    .line 323
    .line 324
    return-object p0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
