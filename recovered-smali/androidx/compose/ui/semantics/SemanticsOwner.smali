.class public final Landroidx/compose/ui/semantics/SemanticsOwner;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/node/LayoutNode;

.field public final b:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

.field public final c:Landroidx/collection/IntObjectMap;

.field public final d:Landroidx/collection/MutableObjectList;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/EmptySemanticsModifier;Landroidx/collection/MutableIntObjectMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->b:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->c:Landroidx/collection/IntObjectMap;

    .line 9
    .line 10
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-direct {p1, p2}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->d:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->b:Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsOwner;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-direct {v1, v3, v2, p0, v0}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsOwner;->d:Landroidx/collection/MutableObjectList;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v0, v0, Landroidx/collection/ObjectList;->b:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v0, :cond_21

    .line 14
    .line 15
    aget-object v5, v2, v4

    .line 16
    .line 17
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsListener;

    .line 18
    .line 19
    check-cast v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    move-object/from16 v7, p1

    .line 29
    .line 30
    iget v8, v7, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 31
    .line 32
    iget-object v9, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 33
    .line 34
    iget-object v10, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 39
    .line 40
    iget-object v13, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 41
    .line 42
    invoke-virtual {v13, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    if-nez v12, :cond_0

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    :cond_0
    check-cast v12, Landroidx/compose/ui/autofill/ContentDataType;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v12, 0x0

    .line 53
    :goto_1
    if-eqz v6, :cond_3

    .line 54
    .line 55
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 56
    .line 57
    iget-object v14, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 58
    .line 59
    invoke-virtual {v14, v13}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    if-nez v13, :cond_2

    .line 64
    .line 65
    const/4 v13, 0x0

    .line 66
    :cond_2
    check-cast v13, Landroidx/compose/ui/autofill/ContentDataType;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 v13, 0x0

    .line 70
    :goto_2
    sget-object v14, Landroidx/compose/ui/autofill/ContentDataType$Companion;->a:Landroidx/compose/ui/autofill/ContentDataType;

    .line 71
    .line 72
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v15

    .line 76
    const/4 v11, 0x1

    .line 77
    if-eqz v15, :cond_4

    .line 78
    .line 79
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-nez v12, :cond_1c

    .line 84
    .line 85
    invoke-virtual {v9, v10, v8, v3}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_c

    .line 89
    .line 90
    :cond_4
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    if-eqz v12, :cond_5

    .line 95
    .line 96
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-nez v12, :cond_5

    .line 101
    .line 102
    invoke-virtual {v9, v10, v8, v11}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 103
    .line 104
    .line 105
    :cond_5
    if-eqz v1, :cond_7

    .line 106
    .line 107
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->F:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 108
    .line 109
    iget-object v14, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 110
    .line 111
    invoke-virtual {v14, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    if-nez v12, :cond_6

    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    :cond_6
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString;

    .line 119
    .line 120
    if-eqz v12, :cond_7

    .line 121
    .line 122
    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    const/4 v12, 0x0

    .line 126
    :goto_3
    if-eqz v6, :cond_9

    .line 127
    .line 128
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->F:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 129
    .line 130
    iget-object v15, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 131
    .line 132
    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    if-nez v14, :cond_8

    .line 137
    .line 138
    const/4 v14, 0x0

    .line 139
    :cond_8
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString;

    .line 140
    .line 141
    if-eqz v14, :cond_9

    .line 142
    .line 143
    iget-object v14, v14, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    const/4 v14, 0x0

    .line 147
    :goto_4
    if-eq v12, v14, :cond_c

    .line 148
    .line 149
    if-nez v12, :cond_a

    .line 150
    .line 151
    invoke-virtual {v9, v10, v8, v11}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_a
    if-nez v14, :cond_b

    .line 156
    .line 157
    invoke-virtual {v9, v10, v8, v3}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_b
    sget-object v12, Landroidx/compose/ui/autofill/ContentDataType$Companion;->b:Landroidx/compose/ui/autofill/ContentDataType;

    .line 162
    .line 163
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-eqz v12, :cond_c

    .line 168
    .line 169
    invoke-static {v14}, Landroidx/compose/ui/autofill/AutofillUtils_androidKt;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-static {v12}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    invoke-virtual {v9}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    invoke-virtual {v14, v10, v8, v12}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 182
    .line 183
    .line 184
    :cond_c
    :goto_5
    if-eqz v1, :cond_e

    .line 185
    .line 186
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 187
    .line 188
    iget-object v14, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 189
    .line 190
    invoke-virtual {v14, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    if-nez v12, :cond_d

    .line 195
    .line 196
    const/4 v12, 0x0

    .line 197
    :cond_d
    check-cast v12, Landroidx/compose/ui/state/ToggleableState;

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_e
    const/4 v12, 0x0

    .line 201
    :goto_6
    if-eqz v6, :cond_10

    .line 202
    .line 203
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 204
    .line 205
    iget-object v15, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 206
    .line 207
    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    if-nez v14, :cond_f

    .line 212
    .line 213
    const/4 v14, 0x0

    .line 214
    :cond_f
    check-cast v14, Landroidx/compose/ui/state/ToggleableState;

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_10
    const/4 v14, 0x0

    .line 218
    :goto_7
    if-eq v12, v14, :cond_15

    .line 219
    .line 220
    if-nez v12, :cond_11

    .line 221
    .line 222
    invoke-virtual {v9, v10, v8, v11}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 223
    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_11
    if-nez v14, :cond_12

    .line 227
    .line 228
    invoke-virtual {v9, v10, v8, v3}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 229
    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_12
    sget-object v12, Landroidx/compose/ui/autofill/ContentDataType$Companion;->c:Landroidx/compose/ui/autofill/ContentDataType;

    .line 233
    .line 234
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    if-eqz v12, :cond_15

    .line 239
    .line 240
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-eqz v12, :cond_14

    .line 245
    .line 246
    if-eq v12, v11, :cond_13

    .line 247
    .line 248
    const/4 v12, 0x0

    .line 249
    goto :goto_8

    .line 250
    :cond_13
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_14
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 254
    .line 255
    :goto_8
    if-eqz v12, :cond_15

    .line 256
    .line 257
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    invoke-static {v12}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    invoke-virtual {v9}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    invoke-virtual {v13, v10, v8, v12}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 270
    .line 271
    .line 272
    :cond_15
    :goto_9
    if-eqz v1, :cond_17

    .line 273
    .line 274
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 275
    .line 276
    iget-object v13, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 277
    .line 278
    invoke-virtual {v13, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    if-nez v12, :cond_16

    .line 283
    .line 284
    const/4 v12, 0x0

    .line 285
    :cond_16
    check-cast v12, Landroidx/compose/ui/autofill/FillableData;

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_17
    const/4 v12, 0x0

    .line 289
    :goto_a
    if-eqz v6, :cond_19

    .line 290
    .line 291
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 292
    .line 293
    iget-object v14, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 294
    .line 295
    invoke-virtual {v14, v13}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    if-nez v13, :cond_18

    .line 300
    .line 301
    const/4 v13, 0x0

    .line 302
    :cond_18
    check-cast v13, Landroidx/compose/ui/autofill/FillableData;

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_19
    const/4 v13, 0x0

    .line 306
    :goto_b
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-nez v14, :cond_1c

    .line 311
    .line 312
    if-nez v12, :cond_1a

    .line 313
    .line 314
    invoke-virtual {v9, v10, v8, v11}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 315
    .line 316
    .line 317
    goto :goto_c

    .line 318
    :cond_1a
    if-nez v13, :cond_1b

    .line 319
    .line 320
    invoke-virtual {v9, v10, v8, v3}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 321
    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_1b
    check-cast v13, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 325
    .line 326
    iget-object v12, v13, Landroidx/compose/ui/autofill/AndroidFillableData;->a:Landroid/view/autofill/AutofillValue;

    .line 327
    .line 328
    invoke-virtual {v9}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-virtual {v9, v10, v8, v12}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 333
    .line 334
    .line 335
    :cond_1c
    :goto_c
    if-eqz v1, :cond_1d

    .line 336
    .line 337
    iget-object v9, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 338
    .line 339
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 340
    .line 341
    invoke-virtual {v9, v10}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-ne v9, v11, :cond_1d

    .line 346
    .line 347
    move v9, v11

    .line 348
    goto :goto_d

    .line 349
    :cond_1d
    move v9, v3

    .line 350
    :goto_d
    if-eqz v6, :cond_1e

    .line 351
    .line 352
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 353
    .line 354
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 355
    .line 356
    invoke-virtual {v6, v10}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    if-ne v6, v11, :cond_1e

    .line 361
    .line 362
    goto :goto_e

    .line 363
    :cond_1e
    move v11, v3

    .line 364
    :goto_e
    if-eq v9, v11, :cond_20

    .line 365
    .line 366
    iget-object v5, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 367
    .line 368
    if-eqz v11, :cond_1f

    .line 369
    .line 370
    invoke-virtual {v5, v8}, Landroidx/collection/MutableIntSet;->b(I)Z

    .line 371
    .line 372
    .line 373
    goto :goto_f

    .line 374
    :cond_1f
    invoke-virtual {v5, v8}, Landroidx/collection/MutableIntSet;->f(I)Z

    .line 375
    .line 376
    .line 377
    :cond_20
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_21
    return-void
.end method
