.class final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComposeAccessibilityNodeProvider"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroidx/compose/ui/platform/ComposeViewContext;->d()Landroidx/lifecycle/LifecycleOwner;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-interface {v4}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/lifecycle/LifecycleRegistry;

    .line 24
    .line 25
    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 42
    .line 43
    invoke-direct {v6, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_46

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 57
    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 71
    .line 72
    invoke-direct {v6, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_46

    .line 76
    .line 77
    :cond_1
    iget-object v5, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    iget-object v8, v5, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 84
    .line 85
    iget-object v9, v5, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 86
    .line 87
    sget-object v10, Landroidx/compose/ui/semantics/SemanticsProperties;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 88
    .line 89
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 90
    .line 91
    invoke-virtual {v7, v10}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    if-nez v7, :cond_2

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    :cond_2
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    invoke-static {v2}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-nez v10, :cond_4

    .line 111
    .line 112
    :cond_3
    const/4 v6, 0x0

    .line 113
    goto/16 :goto_46

    .line 114
    .line 115
    :cond_4
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    new-instance v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 120
    .line 121
    invoke-direct {v11, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->h(Z)V

    .line 125
    .line 126
    .line 127
    const/4 v7, -0x1

    .line 128
    if-ne v1, v7, :cond_6

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    instance-of v13, v12, Landroid/view/View;

    .line 135
    .line 136
    if-eqz v13, :cond_5

    .line 137
    .line 138
    check-cast v12, Landroid/view/View;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    const/4 v12, 0x0

    .line 142
    :goto_0
    iput v7, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 143
    .line 144
    invoke-virtual {v10, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    if-eqz v12, :cond_7

    .line 153
    .line 154
    iget v12, v12, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 155
    .line 156
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    goto :goto_1

    .line 161
    :cond_7
    const/4 v12, 0x0

    .line 162
    :goto_1
    if-eqz v12, :cond_ba

    .line 163
    .line 164
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    iget v13, v13, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 177
    .line 178
    if-ne v12, v13, :cond_8

    .line 179
    .line 180
    move v12, v7

    .line 181
    :cond_8
    iput v12, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b:I

    .line 182
    .line 183
    invoke-virtual {v10, v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 184
    .line 185
    .line 186
    :goto_2
    iput v1, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->c:I

    .line 187
    .line 188
    invoke-virtual {v10, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v10, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->S:Landroidx/collection/MutableIntIntMap;

    .line 199
    .line 200
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->B:Landroidx/collection/SparseArrayCompat;

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    const-string v14, "android.view.View"

    .line 211
    .line 212
    invoke-virtual {v11, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v14, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 216
    .line 217
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 218
    .line 219
    invoke-virtual {v14, v15}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    if-eqz v15, :cond_9

    .line 224
    .line 225
    const-string v15, "android.widget.EditText"

    .line 226
    .line 227
    invoke-virtual {v11, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 231
    .line 232
    invoke-virtual {v14, v15}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    if-eqz v15, :cond_a

    .line 237
    .line 238
    const-string v15, "android.widget.TextView"

    .line 239
    .line 240
    invoke-virtual {v11, v15}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_a
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 244
    .line 245
    invoke-virtual {v14, v15}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v15

    .line 249
    if-nez v15, :cond_b

    .line 250
    .line 251
    const/4 v15, 0x0

    .line 252
    :cond_b
    check-cast v15, Landroidx/compose/ui/semantics/Role;

    .line 253
    .line 254
    const/16 p0, 0x0

    .line 255
    .line 256
    const/4 v6, 0x4

    .line 257
    if-eqz v15, :cond_10

    .line 258
    .line 259
    iget v7, v15, Landroidx/compose/ui/semantics/Role;->a:I

    .line 260
    .line 261
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Z

    .line 262
    .line 263
    .line 264
    move-result v17

    .line 265
    if-nez v17, :cond_c

    .line 266
    .line 267
    invoke-static {v6, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v17

    .line 271
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v17

    .line 275
    if-eqz v17, :cond_10

    .line 276
    .line 277
    :cond_c
    move-object/from16 v17, v2

    .line 278
    .line 279
    const-string v2, "AccessibilityNodeInfo.roleDescription"

    .line 280
    .line 281
    if-ne v7, v6, :cond_d

    .line 282
    .line 283
    const v7, 0x7f1100df

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_d
    const/4 v6, 0x2

    .line 299
    if-ne v7, v6, :cond_e

    .line 300
    .line 301
    const v6, 0x7f1100de

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v7, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_e
    invoke-static {v7}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->c(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    const/4 v6, 0x5

    .line 321
    if-ne v7, v6, :cond_f

    .line 322
    .line 323
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-nez v6, :cond_f

    .line 328
    .line 329
    iget-boolean v6, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 330
    .line 331
    if-eqz v6, :cond_11

    .line 332
    .line 333
    :cond_f
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_10
    move-object/from16 v17, v2

    .line 338
    .line 339
    :cond_11
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v5}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    .line 355
    .line 356
    .line 357
    invoke-static/range {v17 .. v17}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    const/4 v6, 0x4

    .line 362
    invoke-static {v6, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    move/from16 v17, v2

    .line 371
    .line 372
    move-object/from16 v19, v8

    .line 373
    .line 374
    move-object/from16 v18, v12

    .line 375
    .line 376
    const/4 v2, 0x0

    .line 377
    const/4 v12, 0x0

    .line 378
    :goto_4
    iget-object v8, v11, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 379
    .line 380
    if-ge v2, v6, :cond_19

    .line 381
    .line 382
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v20

    .line 386
    move/from16 v21, v2

    .line 387
    .line 388
    move-object/from16 v2, v20

    .line 389
    .line 390
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 391
    .line 392
    move/from16 v20, v6

    .line 393
    .line 394
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    move-object/from16 v22, v7

    .line 399
    .line 400
    iget v7, v2, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 401
    .line 402
    invoke-virtual {v6, v7}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_18

    .line 407
    .line 408
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 417
    .line 418
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 423
    .line 424
    const/4 v6, -0x1

    .line 425
    if-ne v7, v6, :cond_12

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_12
    if-eqz v2, :cond_13

    .line 429
    .line 430
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v2, v7}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 443
    .line 444
    if-eqz v2, :cond_15

    .line 445
    .line 446
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 447
    .line 448
    if-eqz v2, :cond_15

    .line 449
    .line 450
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 455
    .line 456
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 457
    .line 458
    invoke-virtual {v2, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    if-nez v2, :cond_14

    .line 463
    .line 464
    move-object/from16 v2, p0

    .line 465
    .line 466
    :cond_14
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 467
    .line 468
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    goto :goto_5

    .line 473
    :cond_15
    const/4 v2, 0x0

    .line 474
    :goto_5
    if-nez v17, :cond_16

    .line 475
    .line 476
    if-nez v2, :cond_17

    .line 477
    .line 478
    :cond_16
    invoke-virtual {v8, v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 479
    .line 480
    .line 481
    :cond_17
    :goto_6
    invoke-virtual {v4, v7, v12}, Landroidx/collection/MutableIntIntMap;->f(II)V

    .line 482
    .line 483
    .line 484
    add-int/lit8 v12, v12, 0x1

    .line 485
    .line 486
    :cond_18
    :goto_7
    add-int/lit8 v2, v21, 0x1

    .line 487
    .line 488
    move/from16 v6, v20

    .line 489
    .line 490
    move-object/from16 v7, v22

    .line 491
    .line 492
    goto :goto_4

    .line 493
    :cond_19
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 494
    .line 495
    const/4 v6, 0x1

    .line 496
    if-ne v1, v2, :cond_1a

    .line 497
    .line 498
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 499
    .line 500
    .line 501
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->g:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 502
    .line 503
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 504
    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_1a
    const/4 v2, 0x0

    .line 508
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 509
    .line 510
    .line 511
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->f:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 512
    .line 513
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 514
    .line 515
    .line 516
    :goto_8
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->d(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/text/AnnotatedString;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    if-eqz v2, :cond_1b

    .line 521
    .line 522
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    iget-object v12, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->O:Landroidx/compose/ui/text/platform/URLSpanCache;

    .line 530
    .line 531
    invoke-static {v2, v7, v12}, Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->P(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    check-cast v2, Landroid/text/SpannableString;

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_1b
    move-object/from16 v2, p0

    .line 543
    .line 544
    :goto_9
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->m(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->O:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 548
    .line 549
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    if-eqz v7, :cond_1d

    .line 554
    .line 555
    invoke-virtual {v10, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    if-nez v2, :cond_1c

    .line 563
    .line 564
    move-object/from16 v2, p0

    .line 565
    .line 566
    :cond_1c
    check-cast v2, Ljava/lang/CharSequence;

    .line 567
    .line 568
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 569
    .line 570
    .line 571
    :cond_1d
    invoke-static {v5, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->c(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->l(Ljava/lang/CharSequence;)V

    .line 576
    .line 577
    .line 578
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->b(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 583
    .line 584
    .line 585
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 586
    .line 587
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    if-nez v2, :cond_1e

    .line 592
    .line 593
    move-object/from16 v2, p0

    .line 594
    .line 595
    :cond_1e
    check-cast v2, Landroidx/compose/ui/state/ToggleableState;

    .line 596
    .line 597
    if-eqz v2, :cond_20

    .line 598
    .line 599
    sget-object v7, Landroidx/compose/ui/state/ToggleableState;->j:Landroidx/compose/ui/state/ToggleableState;

    .line 600
    .line 601
    if-ne v2, v7, :cond_1f

    .line 602
    .line 603
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 604
    .line 605
    .line 606
    goto :goto_a

    .line 607
    :cond_1f
    sget-object v7, Landroidx/compose/ui/state/ToggleableState;->k:Landroidx/compose/ui/state/ToggleableState;

    .line 608
    .line 609
    if-ne v2, v7, :cond_20

    .line 610
    .line 611
    const/4 v2, 0x0

    .line 612
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 613
    .line 614
    .line 615
    :cond_20
    :goto_a
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 616
    .line 617
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    if-nez v2, :cond_21

    .line 622
    .line 623
    move-object/from16 v2, p0

    .line 624
    .line 625
    :cond_21
    check-cast v2, Ljava/lang/Boolean;

    .line 626
    .line 627
    if-eqz v2, :cond_24

    .line 628
    .line 629
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    if-nez v15, :cond_22

    .line 634
    .line 635
    const/4 v12, 0x4

    .line 636
    goto :goto_b

    .line 637
    :cond_22
    iget v7, v15, Landroidx/compose/ui/semantics/Role;->a:I

    .line 638
    .line 639
    const/4 v12, 0x4

    .line 640
    if-ne v7, v12, :cond_23

    .line 641
    .line 642
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 643
    .line 644
    .line 645
    goto :goto_c

    .line 646
    :cond_23
    :goto_b
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 647
    .line 648
    .line 649
    goto :goto_c

    .line 650
    :cond_24
    const/4 v12, 0x4

    .line 651
    :goto_c
    iget-boolean v2, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 652
    .line 653
    if-eqz v2, :cond_25

    .line 654
    .line 655
    invoke-static {v12, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    if-eqz v2, :cond_28

    .line 664
    .line 665
    :cond_25
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 666
    .line 667
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    if-nez v2, :cond_26

    .line 672
    .line 673
    move-object/from16 v2, p0

    .line 674
    .line 675
    :cond_26
    check-cast v2, Ljava/util/List;

    .line 676
    .line 677
    if-eqz v2, :cond_27

    .line 678
    .line 679
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    check-cast v2, Ljava/lang/String;

    .line 684
    .line 685
    goto :goto_d

    .line 686
    :cond_27
    move-object/from16 v2, p0

    .line 687
    .line 688
    :goto_d
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 689
    .line 690
    .line 691
    :cond_28
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 692
    .line 693
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    if-nez v2, :cond_29

    .line 698
    .line 699
    move-object/from16 v2, p0

    .line 700
    .line 701
    :cond_29
    check-cast v2, Ljava/lang/String;

    .line 702
    .line 703
    if-eqz v2, :cond_2c

    .line 704
    .line 705
    move-object v7, v5

    .line 706
    :goto_e
    if-eqz v7, :cond_2b

    .line 707
    .line 708
    iget-object v12, v7, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 709
    .line 710
    iget-object v6, v12, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 711
    .line 712
    move-object/from16 v20, v7

    .line 713
    .line 714
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 715
    .line 716
    invoke-virtual {v6, v7}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v6

    .line 720
    if-eqz v6, :cond_2a

    .line 721
    .line 722
    invoke-virtual {v12, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    check-cast v6, Ljava/lang/Boolean;

    .line 727
    .line 728
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 729
    .line 730
    .line 731
    move-result v6

    .line 732
    goto :goto_f

    .line 733
    :cond_2a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 734
    .line 735
    .line 736
    move-result-object v7

    .line 737
    const/4 v6, 0x1

    .line 738
    goto :goto_e

    .line 739
    :cond_2b
    const/4 v6, 0x0

    .line 740
    :goto_f
    if-eqz v6, :cond_2c

    .line 741
    .line 742
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :cond_2c
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 746
    .line 747
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    if-nez v2, :cond_2d

    .line 752
    .line 753
    move-object/from16 v2, p0

    .line 754
    .line 755
    :cond_2d
    check-cast v2, Lkotlin/Unit;

    .line 756
    .line 757
    if-eqz v2, :cond_2e

    .line 758
    .line 759
    const/4 v2, 0x1

    .line 760
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 761
    .line 762
    .line 763
    :cond_2e
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 764
    .line 765
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    if-nez v2, :cond_2f

    .line 770
    .line 771
    move-object/from16 v2, p0

    .line 772
    .line 773
    :cond_2f
    check-cast v2, Lkotlin/Unit;

    .line 774
    .line 775
    const/16 v7, 0x1d

    .line 776
    .line 777
    if-eqz v2, :cond_31

    .line 778
    .line 779
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 780
    .line 781
    if-lt v2, v7, :cond_30

    .line 782
    .line 783
    invoke-static {v10}, Li;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 784
    .line 785
    .line 786
    goto :goto_11

    .line 787
    :cond_30
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    if-eqz v2, :cond_31

    .line 792
    .line 793
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 794
    .line 795
    const/4 v6, 0x0

    .line 796
    const/16 v20, 0x8

    .line 797
    .line 798
    invoke-virtual {v2, v12, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 799
    .line 800
    .line 801
    move-result v21

    .line 802
    and-int/lit8 v6, v21, -0x9

    .line 803
    .line 804
    or-int/lit8 v6, v6, 0x8

    .line 805
    .line 806
    invoke-virtual {v2, v12, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 807
    .line 808
    .line 809
    :goto_10
    const/4 v6, -0x1

    .line 810
    goto :goto_12

    .line 811
    :cond_31
    :goto_11
    const/16 v20, 0x8

    .line 812
    .line 813
    goto :goto_10

    .line 814
    :goto_12
    if-eq v1, v6, :cond_33

    .line 815
    .line 816
    iget v2, v5, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 817
    .line 818
    invoke-virtual {v4, v2}, Landroidx/collection/IntIntMap;->b(I)I

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    if-eq v2, v6, :cond_32

    .line 823
    .line 824
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDrawingOrder(I)V

    .line 825
    .line 826
    .line 827
    goto :goto_13

    .line 828
    :cond_32
    const-string v2, "AccessibilityDelegate"

    .line 829
    .line 830
    const-string v4, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    .line 831
    .line 832
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .line 834
    .line 835
    :cond_33
    :goto_13
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->N:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 836
    .line 837
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 842
    .line 843
    .line 844
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 845
    .line 846
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    if-nez v2, :cond_34

    .line 851
    .line 852
    move-object/from16 v2, p0

    .line 853
    .line 854
    :cond_34
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 855
    .line 856
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 861
    .line 862
    .line 863
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->R:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 864
    .line 865
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    if-nez v2, :cond_35

    .line 870
    .line 871
    move-object/from16 v2, p0

    .line 872
    .line 873
    :cond_35
    check-cast v2, Ljava/lang/Integer;

    .line 874
    .line 875
    if-eqz v2, :cond_36

    .line 876
    .line 877
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    goto :goto_14

    .line 882
    :cond_36
    const/4 v2, -0x1

    .line 883
    :goto_14
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 884
    .line 885
    .line 886
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 891
    .line 892
    .line 893
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 894
    .line 895
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 903
    .line 904
    .line 905
    move-result v6

    .line 906
    if-eqz v6, :cond_37

    .line 907
    .line 908
    invoke-virtual {v9, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v6

    .line 912
    check-cast v6, Ljava/lang/Boolean;

    .line 913
    .line 914
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 915
    .line 916
    .line 917
    move-result v6

    .line 918
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 922
    .line 923
    .line 924
    move-result v6

    .line 925
    if-eqz v6, :cond_38

    .line 926
    .line 927
    const/4 v6, 0x2

    .line 928
    invoke-virtual {v11, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 929
    .line 930
    .line 931
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:I

    .line 932
    .line 933
    :cond_37
    const/4 v6, 0x1

    .line 934
    goto :goto_15

    .line 935
    :cond_38
    const/4 v6, 0x1

    .line 936
    invoke-virtual {v11, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 937
    .line 938
    .line 939
    :goto_15
    invoke-static {v5}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 940
    .line 941
    .line 942
    move-result v12

    .line 943
    xor-int/2addr v12, v6

    .line 944
    invoke-virtual {v8, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Z

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    if-eqz v6, :cond_39

    .line 952
    .line 953
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    .line 959
    .line 960
    goto :goto_16

    .line 961
    :cond_39
    move-object v6, v5

    .line 962
    :goto_16
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/geometry/Rect;

    .line 963
    .line 964
    .line 965
    move-result-object v6

    .line 966
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->f()Z

    .line 967
    .line 968
    .line 969
    move-result v6

    .line 970
    if-eqz v6, :cond_3a

    .line 971
    .line 972
    const/4 v6, 0x0

    .line 973
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 974
    .line 975
    .line 976
    :cond_3a
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 977
    .line 978
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v6

    .line 982
    if-nez v6, :cond_3b

    .line 983
    .line 984
    move-object/from16 v6, p0

    .line 985
    .line 986
    :cond_3b
    check-cast v6, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 987
    .line 988
    if-eqz v6, :cond_3c

    .line 989
    .line 990
    const/4 v6, 0x1

    .line 991
    invoke-virtual {v10, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 992
    .line 993
    .line 994
    :cond_3c
    const/4 v6, 0x0

    .line 995
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 996
    .line 997
    .line 998
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 999
    .line 1000
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v6

    .line 1004
    if-nez v6, :cond_3d

    .line 1005
    .line 1006
    move-object/from16 v6, p0

    .line 1007
    .line 1008
    :cond_3d
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1009
    .line 1010
    if-eqz v6, :cond_47

    .line 1011
    .line 1012
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1013
    .line 1014
    invoke-virtual {v14, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v12

    .line 1018
    if-nez v12, :cond_3e

    .line 1019
    .line 1020
    move-object/from16 v12, p0

    .line 1021
    .line 1022
    :cond_3e
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v12

    .line 1026
    if-nez v15, :cond_40

    .line 1027
    .line 1028
    move/from16 v21, v12

    .line 1029
    .line 1030
    :cond_3f
    const/4 v7, 0x0

    .line 1031
    goto :goto_17

    .line 1032
    :cond_40
    iget v7, v15, Landroidx/compose/ui/semantics/Role;->a:I

    .line 1033
    .line 1034
    move/from16 v21, v12

    .line 1035
    .line 1036
    const/4 v12, 0x4

    .line 1037
    if-ne v7, v12, :cond_3f

    .line 1038
    .line 1039
    const/4 v7, 0x1

    .line 1040
    :goto_17
    if-nez v7, :cond_44

    .line 1041
    .line 1042
    if-nez v15, :cond_42

    .line 1043
    .line 1044
    :cond_41
    const/4 v7, 0x0

    .line 1045
    goto :goto_18

    .line 1046
    :cond_42
    iget v7, v15, Landroidx/compose/ui/semantics/Role;->a:I

    .line 1047
    .line 1048
    const/4 v12, 0x3

    .line 1049
    if-ne v7, v12, :cond_41

    .line 1050
    .line 1051
    const/4 v7, 0x1

    .line 1052
    :goto_18
    if-eqz v7, :cond_43

    .line 1053
    .line 1054
    goto :goto_19

    .line 1055
    :cond_43
    const/4 v7, 0x0

    .line 1056
    goto :goto_1a

    .line 1057
    :cond_44
    :goto_19
    const/4 v7, 0x1

    .line 1058
    :goto_1a
    if-eqz v7, :cond_46

    .line 1059
    .line 1060
    if-eqz v7, :cond_45

    .line 1061
    .line 1062
    if-nez v21, :cond_45

    .line 1063
    .line 1064
    goto :goto_1b

    .line 1065
    :cond_45
    const/4 v7, 0x0

    .line 1066
    goto :goto_1c

    .line 1067
    :cond_46
    :goto_1b
    const/4 v7, 0x1

    .line 1068
    :goto_1c
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v7

    .line 1075
    if-eqz v7, :cond_47

    .line 1076
    .line 1077
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v7

    .line 1081
    if-eqz v7, :cond_47

    .line 1082
    .line 1083
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1084
    .line 1085
    const/16 v12, 0x10

    .line 1086
    .line 1087
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1093
    .line 1094
    .line 1095
    :cond_47
    const/4 v6, 0x0

    .line 1096
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1097
    .line 1098
    .line 1099
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1100
    .line 1101
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v6

    .line 1105
    if-nez v6, :cond_48

    .line 1106
    .line 1107
    move-object/from16 v6, p0

    .line 1108
    .line 1109
    :cond_48
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1110
    .line 1111
    if-eqz v6, :cond_49

    .line 1112
    .line 1113
    const/4 v7, 0x1

    .line 1114
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1115
    .line 1116
    .line 1117
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1118
    .line 1119
    .line 1120
    move-result v7

    .line 1121
    if-eqz v7, :cond_49

    .line 1122
    .line 1123
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1124
    .line 1125
    const/16 v12, 0x20

    .line 1126
    .line 1127
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1128
    .line 1129
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1133
    .line 1134
    .line 1135
    :cond_49
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1136
    .line 1137
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v6

    .line 1141
    if-nez v6, :cond_4a

    .line 1142
    .line 1143
    move-object/from16 v6, p0

    .line 1144
    .line 1145
    :cond_4a
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1146
    .line 1147
    if-eqz v6, :cond_4b

    .line 1148
    .line 1149
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1150
    .line 1151
    const/16 v12, 0x4000

    .line 1152
    .line 1153
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1154
    .line 1155
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1159
    .line 1160
    .line 1161
    :cond_4b
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v6

    .line 1165
    if-eqz v6, :cond_54

    .line 1166
    .line 1167
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1168
    .line 1169
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v6

    .line 1173
    if-nez v6, :cond_4c

    .line 1174
    .line 1175
    move-object/from16 v6, p0

    .line 1176
    .line 1177
    :cond_4c
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1178
    .line 1179
    if-eqz v6, :cond_4d

    .line 1180
    .line 1181
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1182
    .line 1183
    const/high16 v12, 0x200000

    .line 1184
    .line 1185
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1186
    .line 1187
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1191
    .line 1192
    .line 1193
    :cond_4d
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1194
    .line 1195
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v6

    .line 1199
    if-nez v6, :cond_4e

    .line 1200
    .line 1201
    move-object/from16 v6, p0

    .line 1202
    .line 1203
    :cond_4e
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1204
    .line 1205
    if-eqz v6, :cond_4f

    .line 1206
    .line 1207
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1208
    .line 1209
    const v12, 0x1020054

    .line 1210
    .line 1211
    .line 1212
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_4f
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1221
    .line 1222
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v6

    .line 1226
    if-nez v6, :cond_50

    .line 1227
    .line 1228
    move-object/from16 v6, p0

    .line 1229
    .line 1230
    :cond_50
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1231
    .line 1232
    if-eqz v6, :cond_51

    .line 1233
    .line 1234
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1235
    .line 1236
    const/high16 v12, 0x10000

    .line 1237
    .line 1238
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1239
    .line 1240
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1244
    .line 1245
    .line 1246
    :cond_51
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1247
    .line 1248
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v6

    .line 1252
    if-nez v6, :cond_52

    .line 1253
    .line 1254
    move-object/from16 v6, p0

    .line 1255
    .line 1256
    :cond_52
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1257
    .line 1258
    if-eqz v6, :cond_54

    .line 1259
    .line 1260
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 1261
    .line 1262
    .line 1263
    move-result v7

    .line 1264
    if-eqz v7, :cond_54

    .line 1265
    .line 1266
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v7

    .line 1270
    check-cast v7, Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 1271
    .line 1272
    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidClipboardManager;->a()Landroid/content/ClipboardManager;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v7

    .line 1276
    invoke-virtual {v7}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v7

    .line 1280
    if-eqz v7, :cond_53

    .line 1281
    .line 1282
    const-string v12, "text/*"

    .line 1283
    .line 1284
    invoke-virtual {v7, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v7

    .line 1288
    goto :goto_1d

    .line 1289
    :cond_53
    const/4 v7, 0x0

    .line 1290
    :goto_1d
    if-eqz v7, :cond_54

    .line 1291
    .line 1292
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1293
    .line 1294
    const v12, 0x8000

    .line 1295
    .line 1296
    .line 1297
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1298
    .line 1299
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1303
    .line 1304
    .line 1305
    :cond_54
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v6

    .line 1309
    if-eqz v6, :cond_56

    .line 1310
    .line 1311
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1312
    .line 1313
    .line 1314
    move-result v6

    .line 1315
    if-nez v6, :cond_55

    .line 1316
    .line 1317
    goto :goto_1e

    .line 1318
    :cond_55
    const/4 v6, 0x0

    .line 1319
    goto :goto_1f

    .line 1320
    :cond_56
    :goto_1e
    const/4 v6, 0x1

    .line 1321
    :goto_1f
    if-nez v6, :cond_63

    .line 1322
    .line 1323
    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1324
    .line 1325
    .line 1326
    move-result v6

    .line 1327
    invoke-virtual {v0, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 1328
    .line 1329
    .line 1330
    move-result v7

    .line 1331
    invoke-virtual {v10, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    .line 1332
    .line 1333
    .line 1334
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1335
    .line 1336
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v6

    .line 1340
    if-nez v6, :cond_57

    .line 1341
    .line 1342
    move-object/from16 v6, p0

    .line 1343
    .line 1344
    :cond_57
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1345
    .line 1346
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1347
    .line 1348
    if-eqz v6, :cond_58

    .line 1349
    .line 1350
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1351
    .line 1352
    goto :goto_20

    .line 1353
    :cond_58
    move-object/from16 v6, p0

    .line 1354
    .line 1355
    :goto_20
    const/high16 v12, 0x20000

    .line 1356
    .line 1357
    invoke-direct {v7, v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1361
    .line 1362
    .line 1363
    const/16 v6, 0x100

    .line 1364
    .line 1365
    invoke-virtual {v11, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 1366
    .line 1367
    .line 1368
    const/16 v6, 0x200

    .line 1369
    .line 1370
    invoke-virtual {v11, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 1371
    .line 1372
    .line 1373
    const/16 v6, 0xb

    .line 1374
    .line 1375
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1376
    .line 1377
    .line 1378
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1379
    .line 1380
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v6

    .line 1384
    if-nez v6, :cond_59

    .line 1385
    .line 1386
    move-object/from16 v6, p0

    .line 1387
    .line 1388
    :cond_59
    check-cast v6, Ljava/util/List;

    .line 1389
    .line 1390
    if-eqz v6, :cond_5b

    .line 1391
    .line 1392
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 1393
    .line 1394
    .line 1395
    move-result v6

    .line 1396
    if-eqz v6, :cond_5a

    .line 1397
    .line 1398
    goto :goto_21

    .line 1399
    :cond_5a
    const/4 v6, 0x0

    .line 1400
    goto :goto_22

    .line 1401
    :cond_5b
    :goto_21
    const/4 v6, 0x1

    .line 1402
    :goto_22
    if-eqz v6, :cond_63

    .line 1403
    .line 1404
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1405
    .line 1406
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v6

    .line 1410
    if-eqz v6, :cond_63

    .line 1411
    .line 1412
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1413
    .line 1414
    invoke-virtual {v14, v6}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result v6

    .line 1418
    if-eqz v6, :cond_5d

    .line 1419
    .line 1420
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v2

    .line 1424
    if-nez v2, :cond_5c

    .line 1425
    .line 1426
    move-object/from16 v2, p0

    .line 1427
    .line 1428
    :cond_5c
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v2

    .line 1432
    if-nez v2, :cond_5d

    .line 1433
    .line 1434
    goto :goto_26

    .line 1435
    :cond_5d
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v2

    .line 1439
    :goto_23
    if-eqz v2, :cond_5f

    .line 1440
    .line 1441
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v4

    .line 1445
    if-eqz v4, :cond_5e

    .line 1446
    .line 1447
    iget-boolean v6, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 1448
    .line 1449
    const/4 v7, 0x1

    .line 1450
    if-ne v6, v7, :cond_5e

    .line 1451
    .line 1452
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1453
    .line 1454
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1455
    .line 1456
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result v4

    .line 1460
    if-eqz v4, :cond_5e

    .line 1461
    .line 1462
    goto :goto_24

    .line 1463
    :cond_5e
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v2

    .line 1467
    goto :goto_23

    .line 1468
    :cond_5f
    move-object/from16 v2, p0

    .line 1469
    .line 1470
    :goto_24
    if-eqz v2, :cond_62

    .line 1471
    .line 1472
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v2

    .line 1476
    if-eqz v2, :cond_61

    .line 1477
    .line 1478
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1479
    .line 1480
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1481
    .line 1482
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    if-nez v2, :cond_60

    .line 1487
    .line 1488
    move-object/from16 v2, p0

    .line 1489
    .line 1490
    :cond_60
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1491
    .line 1492
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v2

    .line 1496
    goto :goto_25

    .line 1497
    :cond_61
    const/4 v2, 0x0

    .line 1498
    :goto_25
    if-nez v2, :cond_62

    .line 1499
    .line 1500
    :goto_26
    const/4 v2, 0x1

    .line 1501
    goto :goto_27

    .line 1502
    :cond_62
    const/4 v2, 0x0

    .line 1503
    :goto_27
    if-nez v2, :cond_63

    .line 1504
    .line 1505
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    .line 1506
    .line 1507
    .line 1508
    move-result v2

    .line 1509
    or-int/lit8 v2, v2, 0x14

    .line 1510
    .line 1511
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1512
    .line 1513
    .line 1514
    :cond_63
    new-instance v2, Ljava/util/ArrayList;

    .line 1515
    .line 1516
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    .line 1518
    .line 1519
    const-string v4, "androidx.compose.ui.semantics.id"

    .line 1520
    .line 1521
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v11}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->g()Ljava/lang/CharSequence;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v4

    .line 1528
    if-eqz v4, :cond_65

    .line 1529
    .line 1530
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1531
    .line 1532
    .line 1533
    move-result v4

    .line 1534
    if-nez v4, :cond_64

    .line 1535
    .line 1536
    goto :goto_28

    .line 1537
    :cond_64
    const/4 v4, 0x0

    .line 1538
    goto :goto_29

    .line 1539
    :cond_65
    :goto_28
    const/4 v4, 0x1

    .line 1540
    :goto_29
    if-nez v4, :cond_66

    .line 1541
    .line 1542
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1543
    .line 1544
    invoke-virtual {v14, v4}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1545
    .line 1546
    .line 1547
    move-result v4

    .line 1548
    if-eqz v4, :cond_66

    .line 1549
    .line 1550
    const-string v4, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    .line 1551
    .line 1552
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    .line 1554
    .line 1555
    :cond_66
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1556
    .line 1557
    invoke-virtual {v14, v4}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v4

    .line 1561
    if-eqz v4, :cond_67

    .line 1562
    .line 1563
    const-string v4, "androidx.compose.ui.semantics.testTag"

    .line 1564
    .line 1565
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    .line 1567
    .line 1568
    :cond_67
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->S:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1569
    .line 1570
    invoke-virtual {v14, v4}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v4

    .line 1574
    if-eqz v4, :cond_68

    .line 1575
    .line 1576
    const-string v4, "androidx.compose.ui.semantics.shapeType"

    .line 1577
    .line 1578
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    .line 1580
    .line 1581
    const-string v4, "androidx.compose.ui.semantics.shapeRect"

    .line 1582
    .line 1583
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    .line 1585
    .line 1586
    const-string v4, "androidx.compose.ui.semantics.shapeCorners"

    .line 1587
    .line 1588
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    .line 1590
    .line 1591
    const-string v4, "androidx.compose.ui.semantics.shapeRegion"

    .line 1592
    .line 1593
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    .line 1595
    .line 1596
    :cond_68
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    .line 1597
    .line 1598
    .line 1599
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1600
    .line 1601
    invoke-virtual {v14, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v2

    .line 1605
    if-nez v2, :cond_69

    .line 1606
    .line 1607
    move-object/from16 v2, p0

    .line 1608
    .line 1609
    :cond_69
    check-cast v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1610
    .line 1611
    if-eqz v2, :cond_6f

    .line 1612
    .line 1613
    iget v4, v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->a:F

    .line 1614
    .line 1615
    iget-object v6, v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 1616
    .line 1617
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1618
    .line 1619
    invoke-virtual {v14, v7}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v12

    .line 1623
    if-eqz v12, :cond_6a

    .line 1624
    .line 1625
    const-string v12, "android.widget.SeekBar"

    .line 1626
    .line 1627
    invoke-virtual {v11, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 1628
    .line 1629
    .line 1630
    goto :goto_2a

    .line 1631
    :cond_6a
    const-string v12, "android.widget.ProgressBar"

    .line 1632
    .line 1633
    invoke-virtual {v11, v12}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 1634
    .line 1635
    .line 1636
    :goto_2a
    sget-object v12, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1637
    .line 1638
    if-eq v2, v12, :cond_6b

    .line 1639
    .line 1640
    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v2

    .line 1644
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 1645
    .line 1646
    .line 1647
    move-result v2

    .line 1648
    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v12

    .line 1652
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 1653
    .line 1654
    .line 1655
    move-result v12

    .line 1656
    const/4 v15, 0x1

    .line 1657
    invoke-static {v15, v2, v12, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v2

    .line 1661
    invoke-virtual {v10, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1662
    .line 1663
    .line 1664
    :cond_6b
    invoke-virtual {v14, v7}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v2

    .line 1668
    if-eqz v2, :cond_6f

    .line 1669
    .line 1670
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1671
    .line 1672
    .line 1673
    move-result v2

    .line 1674
    if-eqz v2, :cond_6f

    .line 1675
    .line 1676
    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v2

    .line 1680
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 1681
    .line 1682
    .line 1683
    move-result v2

    .line 1684
    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v7

    .line 1688
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 1689
    .line 1690
    .line 1691
    move-result v7

    .line 1692
    cmpg-float v10, v2, v7

    .line 1693
    .line 1694
    if-gez v10, :cond_6c

    .line 1695
    .line 1696
    move v2, v7

    .line 1697
    :cond_6c
    cmpg-float v2, v4, v2

    .line 1698
    .line 1699
    if-gez v2, :cond_6d

    .line 1700
    .line 1701
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->h:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1702
    .line 1703
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1704
    .line 1705
    .line 1706
    :cond_6d
    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v2

    .line 1710
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 1711
    .line 1712
    .line 1713
    move-result v2

    .line 1714
    invoke-interface {v6}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v6

    .line 1718
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 1719
    .line 1720
    .line 1721
    move-result v6

    .line 1722
    cmpl-float v7, v2, v6

    .line 1723
    .line 1724
    if-lez v7, :cond_6e

    .line 1725
    .line 1726
    move v2, v6

    .line 1727
    :cond_6e
    cmpl-float v2, v4, v2

    .line 1728
    .line 1729
    if-lez v2, :cond_6f

    .line 1730
    .line 1731
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->i:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1732
    .line 1733
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1734
    .line 1735
    .line 1736
    :cond_6f
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 1737
    .line 1738
    .line 1739
    move-result v2

    .line 1740
    if-eqz v2, :cond_71

    .line 1741
    .line 1742
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1743
    .line 1744
    iget-object v4, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1745
    .line 1746
    invoke-virtual {v4, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v2

    .line 1750
    if-nez v2, :cond_70

    .line 1751
    .line 1752
    move-object/from16 v2, p0

    .line 1753
    .line 1754
    :cond_70
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1755
    .line 1756
    if-eqz v2, :cond_71

    .line 1757
    .line 1758
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 1759
    .line 1760
    const v6, 0x102003d

    .line 1761
    .line 1762
    .line 1763
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 1764
    .line 1765
    invoke-direct {v4, v6, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1769
    .line 1770
    .line 1771
    :cond_71
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v2

    .line 1775
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1776
    .line 1777
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1778
    .line 1779
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v2

    .line 1783
    if-nez v2, :cond_72

    .line 1784
    .line 1785
    move-object/from16 v2, p0

    .line 1786
    .line 1787
    :cond_72
    check-cast v2, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 1788
    .line 1789
    if-eqz v2, :cond_73

    .line 1790
    .line 1791
    iget v4, v2, Landroidx/compose/ui/semantics/CollectionInfo;->a:I

    .line 1792
    .line 1793
    iget v2, v2, Landroidx/compose/ui/semantics/CollectionInfo;->b:I

    .line 1794
    .line 1795
    const/4 v6, 0x0

    .line 1796
    invoke-static {v4, v2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->a(III)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v2

    .line 1800
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->j(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 1801
    .line 1802
    .line 1803
    goto :goto_2f

    .line 1804
    :cond_73
    new-instance v2, Ljava/util/ArrayList;

    .line 1805
    .line 1806
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v4

    .line 1813
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1814
    .line 1815
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1816
    .line 1817
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v4

    .line 1821
    if-nez v4, :cond_74

    .line 1822
    .line 1823
    move-object/from16 v4, p0

    .line 1824
    .line 1825
    :cond_74
    if-eqz v4, :cond_76

    .line 1826
    .line 1827
    const/4 v12, 0x4

    .line 1828
    invoke-static {v12, v5}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v4

    .line 1832
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1833
    .line 1834
    .line 1835
    move-result v6

    .line 1836
    const/4 v7, 0x0

    .line 1837
    :goto_2b
    if-ge v7, v6, :cond_76

    .line 1838
    .line 1839
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v10

    .line 1843
    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1844
    .line 1845
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v12

    .line 1849
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1850
    .line 1851
    iget-object v12, v12, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1852
    .line 1853
    invoke-virtual {v12, v14}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1854
    .line 1855
    .line 1856
    move-result v12

    .line 1857
    if-eqz v12, :cond_75

    .line 1858
    .line 1859
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1860
    .line 1861
    .line 1862
    :cond_75
    add-int/lit8 v7, v7, 0x1

    .line 1863
    .line 1864
    goto :goto_2b

    .line 1865
    :cond_76
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1866
    .line 1867
    .line 1868
    move-result v4

    .line 1869
    if-nez v4, :cond_79

    .line 1870
    .line 1871
    invoke-static {v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->a(Ljava/util/ArrayList;)Z

    .line 1872
    .line 1873
    .line 1874
    move-result v4

    .line 1875
    if-eqz v4, :cond_77

    .line 1876
    .line 1877
    const/4 v6, 0x1

    .line 1878
    goto :goto_2c

    .line 1879
    :cond_77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1880
    .line 1881
    .line 1882
    move-result v6

    .line 1883
    :goto_2c
    if-eqz v4, :cond_78

    .line 1884
    .line 1885
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1886
    .line 1887
    .line 1888
    move-result v2

    .line 1889
    :goto_2d
    const/4 v4, 0x0

    .line 1890
    goto :goto_2e

    .line 1891
    :cond_78
    const/4 v2, 0x1

    .line 1892
    goto :goto_2d

    .line 1893
    :goto_2e
    invoke-static {v6, v2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->a(III)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v2

    .line 1897
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->j(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 1898
    .line 1899
    .line 1900
    :cond_79
    :goto_2f
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v2

    .line 1904
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1905
    .line 1906
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1907
    .line 1908
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v2

    .line 1912
    if-nez v2, :cond_7a

    .line 1913
    .line 1914
    move-object/from16 v2, p0

    .line 1915
    .line 1916
    :cond_7a
    if-nez v2, :cond_b9

    .line 1917
    .line 1918
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v2

    .line 1922
    if-nez v2, :cond_7b

    .line 1923
    .line 1924
    goto/16 :goto_33

    .line 1925
    .line 1926
    :cond_7b
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v4

    .line 1930
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1931
    .line 1932
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1933
    .line 1934
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v4

    .line 1938
    if-nez v4, :cond_7c

    .line 1939
    .line 1940
    move-object/from16 v4, p0

    .line 1941
    .line 1942
    :cond_7c
    if-eqz v4, :cond_85

    .line 1943
    .line 1944
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v4

    .line 1948
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1949
    .line 1950
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1951
    .line 1952
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v4

    .line 1956
    if-nez v4, :cond_7d

    .line 1957
    .line 1958
    move-object/from16 v4, p0

    .line 1959
    .line 1960
    :cond_7d
    check-cast v4, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 1961
    .line 1962
    if-eqz v4, :cond_7e

    .line 1963
    .line 1964
    iget v6, v4, Landroidx/compose/ui/semantics/CollectionInfo;->a:I

    .line 1965
    .line 1966
    if-ltz v6, :cond_85

    .line 1967
    .line 1968
    iget v4, v4, Landroidx/compose/ui/semantics/CollectionInfo;->b:I

    .line 1969
    .line 1970
    if-gez v4, :cond_7e

    .line 1971
    .line 1972
    goto/16 :goto_33

    .line 1973
    .line 1974
    :cond_7e
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v4

    .line 1978
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1979
    .line 1980
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 1981
    .line 1982
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1983
    .line 1984
    .line 1985
    move-result v4

    .line 1986
    if-nez v4, :cond_7f

    .line 1987
    .line 1988
    goto :goto_33

    .line 1989
    :cond_7f
    new-instance v4, Ljava/util/ArrayList;

    .line 1990
    .line 1991
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1992
    .line 1993
    .line 1994
    const/4 v12, 0x4

    .line 1995
    invoke-static {v12, v2}, Landroidx/compose/ui/semantics/SemanticsNode;->j(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v2

    .line 1999
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 2000
    .line 2001
    .line 2002
    move-result v6

    .line 2003
    const/4 v7, 0x0

    .line 2004
    const/4 v10, 0x0

    .line 2005
    :goto_30
    if-ge v7, v6, :cond_81

    .line 2006
    .line 2007
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v12

    .line 2011
    check-cast v12, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2012
    .line 2013
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v14

    .line 2017
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2018
    .line 2019
    iget-object v14, v14, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2020
    .line 2021
    invoke-virtual {v14, v15}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 2022
    .line 2023
    .line 2024
    move-result v14

    .line 2025
    if-eqz v14, :cond_80

    .line 2026
    .line 2027
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    .line 2029
    .line 2030
    iget-object v12, v12, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 2031
    .line 2032
    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->x()I

    .line 2033
    .line 2034
    .line 2035
    move-result v12

    .line 2036
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->x()I

    .line 2037
    .line 2038
    .line 2039
    move-result v14

    .line 2040
    if-ge v12, v14, :cond_80

    .line 2041
    .line 2042
    add-int/lit8 v10, v10, 0x1

    .line 2043
    .line 2044
    :cond_80
    add-int/lit8 v7, v7, 0x1

    .line 2045
    .line 2046
    goto :goto_30

    .line 2047
    :cond_81
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2048
    .line 2049
    .line 2050
    move-result v2

    .line 2051
    if-nez v2, :cond_85

    .line 2052
    .line 2053
    invoke-static {v4}, Landroidx/compose/ui/platform/accessibility/CollectionInfo_androidKt;->a(Ljava/util/ArrayList;)Z

    .line 2054
    .line 2055
    .line 2056
    move-result v2

    .line 2057
    if-eqz v2, :cond_82

    .line 2058
    .line 2059
    const/4 v4, 0x0

    .line 2060
    goto :goto_31

    .line 2061
    :cond_82
    move v4, v10

    .line 2062
    :goto_31
    if-eqz v2, :cond_83

    .line 2063
    .line 2064
    goto :goto_32

    .line 2065
    :cond_83
    const/4 v10, 0x0

    .line 2066
    :goto_32
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v2

    .line 2070
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2071
    .line 2072
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2073
    .line 2074
    invoke-virtual {v2, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v2

    .line 2078
    if-nez v2, :cond_84

    .line 2079
    .line 2080
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2081
    .line 2082
    :cond_84
    check-cast v2, Ljava/lang/Boolean;

    .line 2083
    .line 2084
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2085
    .line 2086
    .line 2087
    move-result v2

    .line 2088
    const/4 v6, 0x1

    .line 2089
    invoke-static {v2, v4, v6, v10, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(ZIIII)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v2

    .line 2093
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->k(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    .line 2094
    .line 2095
    .line 2096
    :cond_85
    :goto_33
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2097
    .line 2098
    iget-object v4, v9, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2099
    .line 2100
    invoke-virtual {v4, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v2

    .line 2104
    if-nez v2, :cond_86

    .line 2105
    .line 2106
    move-object/from16 v2, p0

    .line 2107
    .line 2108
    :cond_86
    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2109
    .line 2110
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2111
    .line 2112
    invoke-static {v9, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v4

    .line 2116
    check-cast v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2117
    .line 2118
    const/4 v6, 0x0

    .line 2119
    if-eqz v2, :cond_92

    .line 2120
    .line 2121
    if-eqz v4, :cond_92

    .line 2122
    .line 2123
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v7

    .line 2127
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2128
    .line 2129
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2130
    .line 2131
    invoke-virtual {v7, v9}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v7

    .line 2135
    if-nez v7, :cond_87

    .line 2136
    .line 2137
    move-object/from16 v7, p0

    .line 2138
    .line 2139
    :cond_87
    if-nez v7, :cond_8a

    .line 2140
    .line 2141
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v7

    .line 2145
    sget-object v9, Landroidx/compose/ui/semantics/SemanticsProperties;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2146
    .line 2147
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2148
    .line 2149
    invoke-virtual {v7, v9}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v7

    .line 2153
    if-nez v7, :cond_88

    .line 2154
    .line 2155
    move-object/from16 v7, p0

    .line 2156
    .line 2157
    :cond_88
    if-eqz v7, :cond_89

    .line 2158
    .line 2159
    goto :goto_34

    .line 2160
    :cond_89
    const/4 v7, 0x0

    .line 2161
    goto :goto_35

    .line 2162
    :cond_8a
    :goto_34
    const/4 v7, 0x1

    .line 2163
    :goto_35
    if-nez v7, :cond_8b

    .line 2164
    .line 2165
    const-string v7, "android.widget.HorizontalScrollView"

    .line 2166
    .line 2167
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 2168
    .line 2169
    .line 2170
    :cond_8b
    iget-object v7, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->b:Lkotlin/jvm/functions/Function0;

    .line 2171
    .line 2172
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v7

    .line 2176
    check-cast v7, Ljava/lang/Number;

    .line 2177
    .line 2178
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 2179
    .line 2180
    .line 2181
    move-result v7

    .line 2182
    cmpl-float v7, v7, v6

    .line 2183
    .line 2184
    if-lez v7, :cond_8c

    .line 2185
    .line 2186
    const/4 v7, 0x1

    .line 2187
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2188
    .line 2189
    .line 2190
    :cond_8c
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2191
    .line 2192
    .line 2193
    move-result v7

    .line 2194
    if-eqz v7, :cond_92

    .line 2195
    .line 2196
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2197
    .line 2198
    .line 2199
    move-result v7

    .line 2200
    if-eqz v7, :cond_8f

    .line 2201
    .line 2202
    sget-object v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->h:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2203
    .line 2204
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2205
    .line 2206
    .line 2207
    move-object/from16 v7, v19

    .line 2208
    .line 2209
    iget-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2210
    .line 2211
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2212
    .line 2213
    if-ne v9, v10, :cond_8d

    .line 2214
    .line 2215
    const/4 v9, 0x1

    .line 2216
    goto :goto_36

    .line 2217
    :cond_8d
    const/4 v9, 0x0

    .line 2218
    :goto_36
    if-nez v9, :cond_8e

    .line 2219
    .line 2220
    sget-object v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->p:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2221
    .line 2222
    goto :goto_37

    .line 2223
    :cond_8e
    sget-object v9, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->n:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2224
    .line 2225
    :goto_37
    invoke-virtual {v11, v9}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2226
    .line 2227
    .line 2228
    goto :goto_38

    .line 2229
    :cond_8f
    move-object/from16 v7, v19

    .line 2230
    .line 2231
    :goto_38
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2232
    .line 2233
    .line 2234
    move-result v2

    .line 2235
    if-eqz v2, :cond_92

    .line 2236
    .line 2237
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->i:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2238
    .line 2239
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2240
    .line 2241
    .line 2242
    iget-object v2, v7, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2243
    .line 2244
    sget-object v7, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2245
    .line 2246
    if-ne v2, v7, :cond_90

    .line 2247
    .line 2248
    const/4 v2, 0x1

    .line 2249
    goto :goto_39

    .line 2250
    :cond_90
    const/4 v2, 0x0

    .line 2251
    :goto_39
    if-nez v2, :cond_91

    .line 2252
    .line 2253
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->n:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2254
    .line 2255
    goto :goto_3a

    .line 2256
    :cond_91
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->p:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2257
    .line 2258
    :goto_3a
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2259
    .line 2260
    .line 2261
    :cond_92
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v2

    .line 2265
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2266
    .line 2267
    invoke-static {v2, v7}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v2

    .line 2271
    check-cast v2, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 2272
    .line 2273
    if-eqz v2, :cond_9a

    .line 2274
    .line 2275
    if-eqz v4, :cond_9a

    .line 2276
    .line 2277
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v4

    .line 2281
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2282
    .line 2283
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2284
    .line 2285
    invoke-virtual {v4, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v4

    .line 2289
    if-nez v4, :cond_93

    .line 2290
    .line 2291
    move-object/from16 v4, p0

    .line 2292
    .line 2293
    :cond_93
    if-nez v4, :cond_96

    .line 2294
    .line 2295
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->k()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v4

    .line 2299
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2300
    .line 2301
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2302
    .line 2303
    invoke-virtual {v4, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v4

    .line 2307
    if-nez v4, :cond_94

    .line 2308
    .line 2309
    move-object/from16 v4, p0

    .line 2310
    .line 2311
    :cond_94
    if-eqz v4, :cond_95

    .line 2312
    .line 2313
    goto :goto_3b

    .line 2314
    :cond_95
    const/4 v4, 0x0

    .line 2315
    goto :goto_3c

    .line 2316
    :cond_96
    :goto_3b
    const/4 v4, 0x1

    .line 2317
    :goto_3c
    if-nez v4, :cond_97

    .line 2318
    .line 2319
    const-string v4, "android.widget.ScrollView"

    .line 2320
    .line 2321
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    :cond_97
    iget-object v4, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->b:Lkotlin/jvm/functions/Function0;

    .line 2325
    .line 2326
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v4

    .line 2330
    check-cast v4, Ljava/lang/Number;

    .line 2331
    .line 2332
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 2333
    .line 2334
    .line 2335
    move-result v4

    .line 2336
    cmpl-float v4, v4, v6

    .line 2337
    .line 2338
    const/4 v6, 0x1

    .line 2339
    if-lez v4, :cond_98

    .line 2340
    .line 2341
    invoke-virtual {v8, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2342
    .line 2343
    .line 2344
    :cond_98
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2345
    .line 2346
    .line 2347
    move-result v4

    .line 2348
    if-eqz v4, :cond_9b

    .line 2349
    .line 2350
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2351
    .line 2352
    .line 2353
    move-result v4

    .line 2354
    if-eqz v4, :cond_99

    .line 2355
    .line 2356
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->h:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2357
    .line 2358
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2359
    .line 2360
    .line 2361
    sget-object v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->o:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2362
    .line 2363
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2364
    .line 2365
    .line 2366
    :cond_99
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y(Landroidx/compose/ui/semantics/ScrollAxisRange;)Z

    .line 2367
    .line 2368
    .line 2369
    move-result v2

    .line 2370
    if-eqz v2, :cond_9b

    .line 2371
    .line 2372
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->i:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2373
    .line 2374
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2375
    .line 2376
    .line 2377
    sget-object v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->m:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2378
    .line 2379
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2380
    .line 2381
    .line 2382
    goto :goto_3d

    .line 2383
    :cond_9a
    const/4 v6, 0x1

    .line 2384
    :cond_9b
    :goto_3d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2385
    .line 2386
    const/16 v4, 0x1d

    .line 2387
    .line 2388
    if-lt v2, v4, :cond_a6

    .line 2389
    .line 2390
    iget-object v2, v5, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2391
    .line 2392
    iget-object v4, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2393
    .line 2394
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2395
    .line 2396
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2397
    .line 2398
    invoke-virtual {v2, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v2

    .line 2402
    if-nez v2, :cond_9c

    .line 2403
    .line 2404
    move-object/from16 v2, p0

    .line 2405
    .line 2406
    :cond_9c
    check-cast v2, Landroidx/compose/ui/semantics/Role;

    .line 2407
    .line 2408
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2409
    .line 2410
    .line 2411
    move-result v7

    .line 2412
    if-eqz v7, :cond_a6

    .line 2413
    .line 2414
    if-nez v2, :cond_9d

    .line 2415
    .line 2416
    goto :goto_3e

    .line 2417
    :cond_9d
    iget v2, v2, Landroidx/compose/ui/semantics/Role;->a:I

    .line 2418
    .line 2419
    move/from16 v7, v20

    .line 2420
    .line 2421
    if-ne v2, v7, :cond_9e

    .line 2422
    .line 2423
    goto :goto_3f

    .line 2424
    :cond_9e
    :goto_3e
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2425
    .line 2426
    invoke-virtual {v4, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v2

    .line 2430
    if-nez v2, :cond_9f

    .line 2431
    .line 2432
    move-object/from16 v2, p0

    .line 2433
    .line 2434
    :cond_9f
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2435
    .line 2436
    if-eqz v2, :cond_a0

    .line 2437
    .line 2438
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2439
    .line 2440
    const v9, 0x1020046

    .line 2441
    .line 2442
    .line 2443
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2444
    .line 2445
    invoke-direct {v7, v9, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2446
    .line 2447
    .line 2448
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2449
    .line 2450
    .line 2451
    :cond_a0
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2452
    .line 2453
    invoke-virtual {v4, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v2

    .line 2457
    if-nez v2, :cond_a1

    .line 2458
    .line 2459
    move-object/from16 v2, p0

    .line 2460
    .line 2461
    :cond_a1
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2462
    .line 2463
    if-eqz v2, :cond_a2

    .line 2464
    .line 2465
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2466
    .line 2467
    const v9, 0x1020047

    .line 2468
    .line 2469
    .line 2470
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2471
    .line 2472
    invoke-direct {v7, v9, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2473
    .line 2474
    .line 2475
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2476
    .line 2477
    .line 2478
    :cond_a2
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2479
    .line 2480
    invoke-virtual {v4, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v2

    .line 2484
    if-nez v2, :cond_a3

    .line 2485
    .line 2486
    move-object/from16 v2, p0

    .line 2487
    .line 2488
    :cond_a3
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2489
    .line 2490
    if-eqz v2, :cond_a4

    .line 2491
    .line 2492
    new-instance v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2493
    .line 2494
    const v9, 0x1020048

    .line 2495
    .line 2496
    .line 2497
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2498
    .line 2499
    invoke-direct {v7, v9, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2500
    .line 2501
    .line 2502
    invoke-virtual {v11, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2503
    .line 2504
    .line 2505
    :cond_a4
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2506
    .line 2507
    invoke-virtual {v4, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v2

    .line 2511
    if-nez v2, :cond_a5

    .line 2512
    .line 2513
    move-object/from16 v2, p0

    .line 2514
    .line 2515
    :cond_a5
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2516
    .line 2517
    if-eqz v2, :cond_a6

    .line 2518
    .line 2519
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2520
    .line 2521
    const v7, 0x1020049

    .line 2522
    .line 2523
    .line 2524
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2525
    .line 2526
    invoke-direct {v4, v7, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2527
    .line 2528
    .line 2529
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2530
    .line 2531
    .line 2532
    :cond_a6
    :goto_3f
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v2

    .line 2536
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2537
    .line 2538
    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2539
    .line 2540
    .line 2541
    move-result-object v2

    .line 2542
    check-cast v2, Ljava/lang/CharSequence;

    .line 2543
    .line 2544
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    .line 2545
    .line 2546
    .line 2547
    invoke-static {v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 2548
    .line 2549
    .line 2550
    move-result v2

    .line 2551
    if-eqz v2, :cond_b2

    .line 2552
    .line 2553
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2554
    .line 2555
    .line 2556
    move-result-object v2

    .line 2557
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2558
    .line 2559
    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2560
    .line 2561
    .line 2562
    move-result-object v2

    .line 2563
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2564
    .line 2565
    if-eqz v2, :cond_a7

    .line 2566
    .line 2567
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2568
    .line 2569
    const/high16 v7, 0x40000

    .line 2570
    .line 2571
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2572
    .line 2573
    invoke-direct {v4, v7, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2574
    .line 2575
    .line 2576
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2577
    .line 2578
    .line 2579
    :cond_a7
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v2

    .line 2583
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2584
    .line 2585
    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v2

    .line 2589
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2590
    .line 2591
    if-eqz v2, :cond_a8

    .line 2592
    .line 2593
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2594
    .line 2595
    const/high16 v7, 0x80000

    .line 2596
    .line 2597
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2598
    .line 2599
    invoke-direct {v4, v7, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2600
    .line 2601
    .line 2602
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2603
    .line 2604
    .line 2605
    :cond_a8
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2606
    .line 2607
    .line 2608
    move-result-object v2

    .line 2609
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2610
    .line 2611
    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v2

    .line 2615
    check-cast v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 2616
    .line 2617
    if-eqz v2, :cond_a9

    .line 2618
    .line 2619
    new-instance v4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2620
    .line 2621
    const/high16 v7, 0x100000

    .line 2622
    .line 2623
    iget-object v2, v2, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 2624
    .line 2625
    invoke-direct {v4, v7, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/String;)V

    .line 2626
    .line 2627
    .line 2628
    invoke-virtual {v11, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2629
    .line 2630
    .line 2631
    :cond_a9
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2632
    .line 2633
    .line 2634
    move-result-object v2

    .line 2635
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsActions;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2636
    .line 2637
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 2638
    .line 2639
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 2640
    .line 2641
    .line 2642
    move-result v2

    .line 2643
    if-eqz v2, :cond_b2

    .line 2644
    .line 2645
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v2

    .line 2649
    invoke-virtual {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2650
    .line 2651
    .line 2652
    move-result-object v2

    .line 2653
    check-cast v2, Ljava/util/List;

    .line 2654
    .line 2655
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 2656
    .line 2657
    .line 2658
    move-result v4

    .line 2659
    sget-object v7, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W:Landroidx/collection/MutableIntList;

    .line 2660
    .line 2661
    iget v9, v7, Landroidx/collection/IntList;->b:I

    .line 2662
    .line 2663
    if-ge v4, v9, :cond_b1

    .line 2664
    .line 2665
    new-instance v4, Landroidx/collection/SparseArrayCompat;

    .line 2666
    .line 2667
    const/4 v9, 0x0

    .line 2668
    invoke-direct {v4, v9}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 2669
    .line 2670
    .line 2671
    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->a()Landroidx/collection/MutableObjectIntMap;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v9

    .line 2675
    move-object/from16 v10, v18

    .line 2676
    .line 2677
    iget-boolean v12, v10, Landroidx/collection/SparseArrayCompat;->j:Z

    .line 2678
    .line 2679
    if-eqz v12, :cond_aa

    .line 2680
    .line 2681
    invoke-static {v10}, Landroidx/collection/SparseArrayCompatKt;->a(Landroidx/collection/SparseArrayCompat;)V

    .line 2682
    .line 2683
    .line 2684
    :cond_aa
    iget-object v12, v10, Landroidx/collection/SparseArrayCompat;->k:[I

    .line 2685
    .line 2686
    iget v14, v10, Landroidx/collection/SparseArrayCompat;->m:I

    .line 2687
    .line 2688
    invoke-static {v14, v1, v12}, Landroidx/collection/internal/ContainerHelpersKt;->a(II[I)I

    .line 2689
    .line 2690
    .line 2691
    move-result v12

    .line 2692
    if-ltz v12, :cond_ab

    .line 2693
    .line 2694
    goto :goto_40

    .line 2695
    :cond_ab
    const/4 v6, 0x0

    .line 2696
    :goto_40
    if-eqz v6, :cond_af

    .line 2697
    .line 2698
    invoke-virtual {v10, v1}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v6

    .line 2702
    check-cast v6, Landroidx/collection/MutableObjectIntMap;

    .line 2703
    .line 2704
    new-instance v12, Landroidx/collection/MutableIntList;

    .line 2705
    .line 2706
    invoke-direct {v12}, Landroidx/collection/MutableIntList;-><init>()V

    .line 2707
    .line 2708
    .line 2709
    iget-object v14, v7, Landroidx/collection/IntList;->a:[I

    .line 2710
    .line 2711
    iget v7, v7, Landroidx/collection/IntList;->b:I

    .line 2712
    .line 2713
    const/4 v15, 0x0

    .line 2714
    :goto_41
    if-ge v15, v7, :cond_ac

    .line 2715
    .line 2716
    move-object/from16 v16, v6

    .line 2717
    .line 2718
    aget v6, v14, v15

    .line 2719
    .line 2720
    invoke-virtual {v12, v6}, Landroidx/collection/MutableIntList;->b(I)V

    .line 2721
    .line 2722
    .line 2723
    add-int/lit8 v15, v15, 0x1

    .line 2724
    .line 2725
    move-object/from16 v6, v16

    .line 2726
    .line 2727
    goto :goto_41

    .line 2728
    :cond_ac
    move-object/from16 v16, v6

    .line 2729
    .line 2730
    new-instance v6, Ljava/util/ArrayList;

    .line 2731
    .line 2732
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2733
    .line 2734
    .line 2735
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 2736
    .line 2737
    .line 2738
    move-result v7

    .line 2739
    if-gtz v7, :cond_ae

    .line 2740
    .line 2741
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2742
    .line 2743
    .line 2744
    move-result v2

    .line 2745
    if-gtz v2, :cond_ad

    .line 2746
    .line 2747
    goto :goto_42

    .line 2748
    :cond_ad
    const/4 v14, 0x0

    .line 2749
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2750
    .line 2751
    .line 2752
    move-result-object v0

    .line 2753
    invoke-static {v0}, Lq;->w(Ljava/lang/Object;)V

    .line 2754
    .line 2755
    .line 2756
    invoke-virtual {v12, v14}, Landroidx/collection/IntList;->a(I)I

    .line 2757
    .line 2758
    .line 2759
    throw p0

    .line 2760
    :cond_ae
    const/4 v14, 0x0

    .line 2761
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2762
    .line 2763
    .line 2764
    move-result-object v0

    .line 2765
    invoke-static {v0}, Lq;->w(Ljava/lang/Object;)V

    .line 2766
    .line 2767
    .line 2768
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2769
    .line 2770
    .line 2771
    throw p0

    .line 2772
    :cond_af
    const/4 v14, 0x0

    .line 2773
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 2774
    .line 2775
    .line 2776
    move-result v6

    .line 2777
    if-gtz v6, :cond_b0

    .line 2778
    .line 2779
    :goto_42
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/SparseArrayCompat;

    .line 2780
    .line 2781
    invoke-virtual {v2, v1, v4}, Landroidx/collection/SparseArrayCompat;->e(ILjava/lang/Object;)V

    .line 2782
    .line 2783
    .line 2784
    invoke-virtual {v10, v1, v9}, Landroidx/collection/SparseArrayCompat;->e(ILjava/lang/Object;)V

    .line 2785
    .line 2786
    .line 2787
    goto :goto_43

    .line 2788
    :cond_b0
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2789
    .line 2790
    .line 2791
    move-result-object v0

    .line 2792
    invoke-static {v0}, Lq;->w(Ljava/lang/Object;)V

    .line 2793
    .line 2794
    .line 2795
    invoke-virtual {v7, v14}, Landroidx/collection/IntList;->a(I)I

    .line 2796
    .line 2797
    .line 2798
    throw p0

    .line 2799
    :cond_b1
    const-string v0, "Can\'t have more than "

    .line 2800
    .line 2801
    const-string v1, " custom actions for one widget"

    .line 2802
    .line 2803
    invoke-static {v0, v9, v1}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v0

    .line 2807
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 2808
    .line 2809
    .line 2810
    return-object p0

    .line 2811
    :cond_b2
    :goto_43
    invoke-static {v5, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->e(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/content/res/Resources;)Z

    .line 2812
    .line 2813
    .line 2814
    move-result v2

    .line 2815
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    .line 2816
    .line 2817
    .line 2818
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K:Landroidx/collection/MutableIntIntMap;

    .line 2819
    .line 2820
    invoke-virtual {v2, v1}, Landroidx/collection/IntIntMap;->b(I)I

    .line 2821
    .line 2822
    .line 2823
    move-result v2

    .line 2824
    const/4 v6, -0x1

    .line 2825
    if-eq v2, v6, :cond_b4

    .line 2826
    .line 2827
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v4

    .line 2831
    invoke-static {v4, v2}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->b(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2832
    .line 2833
    .line 2834
    move-result-object v4

    .line 2835
    if-eqz v4, :cond_b3

    .line 2836
    .line 2837
    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .line 2838
    .line 2839
    .line 2840
    goto :goto_44

    .line 2841
    :cond_b3
    invoke-virtual {v8, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 2842
    .line 2843
    .line 2844
    :goto_44
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M:Ljava/lang/String;

    .line 2845
    .line 2846
    move-object/from16 v4, p0

    .line 2847
    .line 2848
    invoke-virtual {v0, v1, v11, v2, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2849
    .line 2850
    .line 2851
    goto :goto_45

    .line 2852
    :cond_b4
    move-object/from16 v4, p0

    .line 2853
    .line 2854
    :goto_45
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L:Landroidx/collection/MutableIntIntMap;

    .line 2855
    .line 2856
    invoke-virtual {v2, v1}, Landroidx/collection/IntIntMap;->b(I)I

    .line 2857
    .line 2858
    .line 2859
    move-result v2

    .line 2860
    const/4 v6, -0x1

    .line 2861
    if-eq v2, v6, :cond_b5

    .line 2862
    .line 2863
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 2864
    .line 2865
    .line 2866
    move-result-object v3

    .line 2867
    invoke-static {v3, v2}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->b(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2868
    .line 2869
    .line 2870
    move-result-object v2

    .line 2871
    if-eqz v2, :cond_b5

    .line 2872
    .line 2873
    invoke-virtual {v8, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .line 2874
    .line 2875
    .line 2876
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N:Ljava/lang/String;

    .line 2877
    .line 2878
    invoke-virtual {v0, v1, v11, v2, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->j(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2879
    .line 2880
    .line 2881
    :cond_b5
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->n()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2882
    .line 2883
    .line 2884
    move-result-object v2

    .line 2885
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2886
    .line 2887
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 2888
    .line 2889
    .line 2890
    move-result-object v2

    .line 2891
    check-cast v2, Ljava/lang/String;

    .line 2892
    .line 2893
    if-eqz v2, :cond_b6

    .line 2894
    .line 2895
    invoke-virtual {v11, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->i(Ljava/lang/String;)V

    .line 2896
    .line 2897
    .line 2898
    :cond_b6
    move-object v6, v11

    .line 2899
    :goto_46
    iget-boolean v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x:Z

    .line 2900
    .line 2901
    if-eqz v2, :cond_b8

    .line 2902
    .line 2903
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 2904
    .line 2905
    if-ne v1, v2, :cond_b7

    .line 2906
    .line 2907
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2908
    .line 2909
    :cond_b7
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:I

    .line 2910
    .line 2911
    if-ne v1, v2, :cond_b8

    .line 2912
    .line 2913
    iput-object v6, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2914
    .line 2915
    :cond_b8
    return-object v6

    .line 2916
    :cond_b9
    invoke-static {}, Lio/sentry/d;->i()V

    .line 2917
    .line 2918
    .line 2919
    const/4 v4, 0x0

    .line 2920
    return-object v4

    .line 2921
    :cond_ba
    const/4 v4, 0x0

    .line 2922
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2923
    .line 2924
    const-string v2, "semanticsNode "

    .line 2925
    .line 2926
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2927
    .line 2928
    .line 2929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2930
    .line 2931
    .line 2932
    const-string v1, " has null parent"

    .line 2933
    .line 2934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    .line 2936
    .line 2937
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2938
    .line 2939
    .line 2940
    move-result-object v0

    .line 2941
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 2942
    .line 2943
    .line 2944
    invoke-static {}, Lf7;->h()V

    .line 2945
    .line 2946
    .line 2947
    return-object v4
.end method

.method public final c(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget p1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "Unknown focus type: "

    .line 18
    .line 19
    invoke-static {p1, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    iget p1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:I

    .line 28
    .line 29
    const/high16 v0, -0x80000000

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final d(IILandroid/os/Bundle;)Z
    .locals 22

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$ComposeAccessibilityNodeProvider;->b:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 10
    .line 11
    iget-object v4, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    iget-object v7, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    invoke-virtual {v8, v0}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    check-cast v8, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    iget-object v11, v8, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 33
    .line 34
    if-nez v11, :cond_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    const/16 v19, 0x0

    .line 37
    .line 38
    goto/16 :goto_43

    .line 39
    .line 40
    :cond_1
    iget-object v8, v11, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    iget v10, v11, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 43
    .line 44
    iget-object v12, v11, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 45
    .line 46
    iget-object v13, v12, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 47
    .line 48
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    .line 50
    invoke-virtual {v13, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    if-nez v14, :cond_2

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    :cond_2
    move/from16 p0, v5

    .line 58
    .line 59
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-eqz v14, :cond_3

    .line 66
    .line 67
    invoke-static {v4}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    if-nez v14, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/16 v14, 0x40

    .line 75
    .line 76
    const/high16 v15, -0x80000000

    .line 77
    .line 78
    const/4 v9, 0x1

    .line 79
    if-eq v1, v14, :cond_88

    .line 80
    .line 81
    const/16 v4, 0x80

    .line 82
    .line 83
    if-eq v1, v4, :cond_86

    .line 84
    .line 85
    const/16 v14, 0x200

    .line 86
    .line 87
    const/16 v4, 0x100

    .line 88
    .line 89
    const/4 v15, -0x1

    .line 90
    if-eq v1, v4, :cond_66

    .line 91
    .line 92
    if-eq v1, v14, :cond_66

    .line 93
    .line 94
    const/16 v4, 0x4000

    .line 95
    .line 96
    if-eq v1, v4, :cond_64

    .line 97
    .line 98
    const/high16 v4, 0x20000

    .line 99
    .line 100
    if-eq v1, v4, :cond_60

    .line 101
    .line 102
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    if-eq v1, v9, :cond_5d

    .line 110
    .line 111
    const/4 v4, 0x2

    .line 112
    if-eq v1, v4, :cond_5b

    .line 113
    .line 114
    sparse-switch v1, :sswitch_data_0

    .line 115
    .line 116
    .line 117
    packed-switch v1, :pswitch_data_0

    .line 118
    .line 119
    .line 120
    packed-switch v1, :pswitch_data_1

    .line 121
    .line 122
    .line 123
    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A:Landroidx/collection/SparseArrayCompat;

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 130
    .line 131
    if-eqz v0, :cond_0

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->c(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/CharSequence;

    .line 138
    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 143
    .line 144
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-nez v0, :cond_6

    .line 149
    .line 150
    const/4 v15, 0x0

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    move-object v15, v0

    .line 153
    :goto_1
    check-cast v15, Ljava/util/List;

    .line 154
    .line 155
    if-nez v15, :cond_7

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_7
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-gtz v0, :cond_8

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_8
    const/4 v0, 0x0

    .line 167
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lio/sentry/d;->i()V

    .line 175
    .line 176
    .line 177
    return v0

    .line 178
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 179
    .line 180
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-nez v0, :cond_9

    .line 185
    .line 186
    const/4 v15, 0x0

    .line 187
    goto :goto_2

    .line 188
    :cond_9
    move-object v15, v0

    .line 189
    :goto_2
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 190
    .line 191
    if-eqz v15, :cond_0

    .line 192
    .line 193
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 194
    .line 195
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 196
    .line 197
    if-eqz v0, :cond_0

    .line 198
    .line 199
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    return v0

    .line 210
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 211
    .line 212
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-nez v0, :cond_a

    .line 217
    .line 218
    const/4 v15, 0x0

    .line 219
    goto :goto_3

    .line 220
    :cond_a
    move-object v15, v0

    .line 221
    :goto_3
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 222
    .line 223
    if-eqz v15, :cond_0

    .line 224
    .line 225
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 226
    .line 227
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 228
    .line 229
    if-eqz v0, :cond_0

    .line 230
    .line 231
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    return v0

    .line 242
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 243
    .line 244
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-nez v0, :cond_b

    .line 249
    .line 250
    const/4 v15, 0x0

    .line 251
    goto :goto_4

    .line 252
    :cond_b
    move-object v15, v0

    .line 253
    :goto_4
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 254
    .line 255
    if-eqz v15, :cond_0

    .line 256
    .line 257
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 258
    .line 259
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 260
    .line 261
    if-eqz v0, :cond_0

    .line 262
    .line 263
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    return v0

    .line 274
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 275
    .line 276
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    if-nez v0, :cond_c

    .line 281
    .line 282
    const/4 v15, 0x0

    .line 283
    goto :goto_5

    .line 284
    :cond_c
    move-object v15, v0

    .line 285
    :goto_5
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 286
    .line 287
    if-eqz v15, :cond_0

    .line 288
    .line 289
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 290
    .line 291
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 292
    .line 293
    if-eqz v0, :cond_0

    .line 294
    .line 295
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    return v0

    .line 306
    :pswitch_4
    :sswitch_0
    const/16 v17, 0x20

    .line 307
    .line 308
    const-wide v20, 0xffffffffL

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    goto/16 :goto_1d

    .line 314
    .line 315
    :sswitch_1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 316
    .line 317
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    if-nez v0, :cond_d

    .line 322
    .line 323
    const/4 v15, 0x0

    .line 324
    goto :goto_6

    .line 325
    :cond_d
    move-object v15, v0

    .line 326
    :goto_6
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 327
    .line 328
    if-eqz v15, :cond_0

    .line 329
    .line 330
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 331
    .line 332
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 333
    .line 334
    if-eqz v0, :cond_0

    .line 335
    .line 336
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Ljava/lang/Boolean;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    return v0

    .line 347
    :sswitch_2
    if-eqz v3, :cond_0

    .line 348
    .line 349
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 350
    .line 351
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_e

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_e
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 360
    .line 361
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    if-nez v1, :cond_f

    .line 366
    .line 367
    const/4 v15, 0x0

    .line 368
    goto :goto_7

    .line 369
    :cond_f
    move-object v15, v1

    .line 370
    :goto_7
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 371
    .line 372
    if-eqz v15, :cond_0

    .line 373
    .line 374
    iget-object v1, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 375
    .line 376
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 377
    .line 378
    if-eqz v1, :cond_0

    .line 379
    .line 380
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    return v0

    .line 399
    :sswitch_3
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    if-eqz v0, :cond_11

    .line 404
    .line 405
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 406
    .line 407
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 408
    .line 409
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-nez v1, :cond_10

    .line 416
    .line 417
    const/4 v1, 0x0

    .line 418
    :cond_10
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_11
    const/4 v1, 0x0

    .line 422
    :goto_8
    if-nez v1, :cond_13

    .line 423
    .line 424
    if-eqz v0, :cond_13

    .line 425
    .line 426
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    if-eqz v0, :cond_11

    .line 431
    .line 432
    iget-object v1, v0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 433
    .line 434
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 435
    .line 436
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    if-nez v1, :cond_12

    .line 443
    .line 444
    const/4 v1, 0x0

    .line 445
    :cond_12
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 446
    .line 447
    goto :goto_8

    .line 448
    :cond_13
    if-nez v0, :cond_14

    .line 449
    .line 450
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->g()Landroidx/compose/ui/geometry/Rect;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    .line 455
    .line 456
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 457
    .line 458
    float-to-double v2, v2

    .line 459
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 460
    .line 461
    .line 462
    move-result-wide v2

    .line 463
    double-to-float v2, v2

    .line 464
    float-to-int v2, v2

    .line 465
    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 466
    .line 467
    float-to-double v3, v3

    .line 468
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 469
    .line 470
    .line 471
    move-result-wide v3

    .line 472
    double-to-float v3, v3

    .line 473
    float-to-int v3, v3

    .line 474
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 475
    .line 476
    float-to-double v4, v4

    .line 477
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 478
    .line 479
    .line 480
    move-result-wide v4

    .line 481
    double-to-float v4, v4

    .line 482
    invoke-static {v4}, Lkotlin/math/MathKt;->b(F)I

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 487
    .line 488
    float-to-double v5, v0

    .line 489
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 490
    .line 491
    .line 492
    move-result-wide v5

    .line 493
    double-to-float v0, v5

    .line 494
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v7, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    return v0

    .line 506
    :cond_14
    const-wide/16 v1, 0x0

    .line 507
    .line 508
    move-wide v5, v1

    .line 509
    const/4 v3, 0x0

    .line 510
    :goto_9
    if-eqz v0, :cond_25

    .line 511
    .line 512
    iget-object v7, v0, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 513
    .line 514
    iget-object v10, v0, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 515
    .line 516
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 517
    .line 518
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 519
    .line 520
    invoke-virtual {v10, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v12

    .line 524
    if-nez v12, :cond_15

    .line 525
    .line 526
    const/4 v12, 0x0

    .line 527
    :cond_15
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 528
    .line 529
    if-eqz v12, :cond_24

    .line 530
    .line 531
    iget-object v13, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 532
    .line 533
    iget-object v13, v13, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 534
    .line 535
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 536
    .line 537
    .line 538
    move-result-object v13

    .line 539
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 540
    .line 541
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 542
    .line 543
    invoke-virtual {v7}, Landroidx/compose/ui/node/NodeCoordinator;->L()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    if-eqz v7, :cond_16

    .line 548
    .line 549
    check-cast v7, Landroidx/compose/ui/node/NodeCoordinator;

    .line 550
    .line 551
    invoke-virtual {v7, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 552
    .line 553
    .line 554
    move-result-wide v17

    .line 555
    move-wide/from16 v14, v17

    .line 556
    .line 557
    :goto_a
    const-wide v20, 0xffffffffL

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    goto :goto_b

    .line 563
    :cond_16
    move-wide v14, v1

    .line 564
    goto :goto_a

    .line 565
    :goto_b
    invoke-virtual {v13, v14, v15}, Landroidx/compose/ui/geometry/Rect;->i(J)Landroidx/compose/ui/geometry/Rect;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->d()Landroidx/compose/ui/node/NodeCoordinator;

    .line 570
    .line 571
    .line 572
    move-result-object v13

    .line 573
    if-eqz v13, :cond_18

    .line 574
    .line 575
    invoke-virtual {v13}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 576
    .line 577
    .line 578
    move-result-object v14

    .line 579
    iget-boolean v14, v14, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 580
    .line 581
    if-eqz v14, :cond_17

    .line 582
    .line 583
    goto :goto_c

    .line 584
    :cond_17
    const/4 v13, 0x0

    .line 585
    :goto_c
    if-eqz v13, :cond_18

    .line 586
    .line 587
    invoke-virtual {v13, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 588
    .line 589
    .line 590
    move-result-wide v13

    .line 591
    goto :goto_d

    .line 592
    :cond_18
    move-wide v13, v1

    .line 593
    :goto_d
    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 594
    .line 595
    .line 596
    move-result-wide v13

    .line 597
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->d()Landroidx/compose/ui/node/NodeCoordinator;

    .line 598
    .line 599
    .line 600
    move-result-object v15

    .line 601
    move-wide/from16 p1, v5

    .line 602
    .line 603
    const/16 v17, 0x20

    .line 604
    .line 605
    if-eqz v15, :cond_19

    .line 606
    .line 607
    iget-wide v4, v15, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_19
    move-wide v4, v1

    .line 611
    :goto_e
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 612
    .line 613
    .line 614
    move-result-wide v4

    .line 615
    invoke-static {v13, v14, v4, v5}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    iget v5, v4, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 620
    .line 621
    iget v6, v7, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 622
    .line 623
    sub-float/2addr v5, v6

    .line 624
    iget v6, v4, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 625
    .line 626
    iget v13, v7, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 627
    .line 628
    sub-float/2addr v6, v13

    .line 629
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 630
    .line 631
    .line 632
    move-result v13

    .line 633
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 634
    .line 635
    .line 636
    move-result v14

    .line 637
    cmpg-float v13, v13, v14

    .line 638
    .line 639
    if-nez v13, :cond_1b

    .line 640
    .line 641
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 642
    .line 643
    .line 644
    move-result v13

    .line 645
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 646
    .line 647
    .line 648
    move-result v14

    .line 649
    cmpg-float v13, v13, v14

    .line 650
    .line 651
    if-gez v13, :cond_1a

    .line 652
    .line 653
    goto :goto_f

    .line 654
    :cond_1a
    move v5, v6

    .line 655
    goto :goto_f

    .line 656
    :cond_1b
    move/from16 v5, p0

    .line 657
    .line 658
    :goto_f
    iget v6, v4, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 659
    .line 660
    iget v13, v7, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 661
    .line 662
    sub-float/2addr v6, v13

    .line 663
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 664
    .line 665
    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 666
    .line 667
    sub-float/2addr v4, v7

    .line 668
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 673
    .line 674
    .line 675
    move-result v13

    .line 676
    cmpg-float v7, v7, v13

    .line 677
    .line 678
    if-nez v7, :cond_1d

    .line 679
    .line 680
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 685
    .line 686
    .line 687
    move-result v13

    .line 688
    cmpg-float v7, v7, v13

    .line 689
    .line 690
    if-gez v7, :cond_1c

    .line 691
    .line 692
    goto :goto_10

    .line 693
    :cond_1c
    move v6, v4

    .line 694
    goto :goto_10

    .line 695
    :cond_1d
    move/from16 v6, p0

    .line 696
    .line 697
    :goto_10
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    int-to-long v4, v4

    .line 702
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 703
    .line 704
    .line 705
    move-result v6

    .line 706
    int-to-long v6, v6

    .line 707
    shl-long v4, v4, v17

    .line 708
    .line 709
    and-long v6, v6, v20

    .line 710
    .line 711
    or-long/2addr v4, v6

    .line 712
    invoke-static {v4, v5, v1, v2}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 713
    .line 714
    .line 715
    move-result v6

    .line 716
    if-eqz v6, :cond_1e

    .line 717
    .line 718
    move-wide v6, v4

    .line 719
    goto :goto_11

    .line 720
    :cond_1e
    shr-long v6, v4, v17

    .line 721
    .line 722
    long-to-int v6, v6

    .line 723
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 724
    .line 725
    .line 726
    move-result v6

    .line 727
    and-long v13, v4, v20

    .line 728
    .line 729
    long-to-int v7, v13

    .line 730
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 731
    .line 732
    .line 733
    move-result v7

    .line 734
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 735
    .line 736
    invoke-virtual {v10, v13}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v13

    .line 740
    if-nez v13, :cond_1f

    .line 741
    .line 742
    const/4 v13, 0x0

    .line 743
    :cond_1f
    check-cast v13, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 744
    .line 745
    iget-object v13, v8, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 746
    .line 747
    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 748
    .line 749
    if-ne v13, v14, :cond_20

    .line 750
    .line 751
    neg-float v6, v6

    .line 752
    :cond_20
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 753
    .line 754
    invoke-virtual {v10, v13}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v10

    .line 758
    if-nez v10, :cond_21

    .line 759
    .line 760
    const/4 v10, 0x0

    .line 761
    :cond_21
    check-cast v10, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 762
    .line 763
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 764
    .line 765
    .line 766
    move-result v6

    .line 767
    int-to-long v13, v6

    .line 768
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    int-to-long v6, v6

    .line 773
    shl-long v13, v13, v17

    .line 774
    .line 775
    and-long v6, v6, v20

    .line 776
    .line 777
    or-long/2addr v6, v13

    .line 778
    :goto_11
    iget-object v10, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 779
    .line 780
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 781
    .line 782
    if-eqz v10, :cond_22

    .line 783
    .line 784
    shr-long v12, v6, v17

    .line 785
    .line 786
    long-to-int v12, v12

    .line 787
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 788
    .line 789
    .line 790
    move-result v12

    .line 791
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 792
    .line 793
    .line 794
    move-result-object v12

    .line 795
    and-long v6, v6, v20

    .line 796
    .line 797
    long-to-int v6, v6

    .line 798
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 803
    .line 804
    .line 805
    move-result-object v6

    .line 806
    invoke-interface {v10, v12, v6}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    check-cast v6, Ljava/lang/Boolean;

    .line 811
    .line 812
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    if-ne v6, v9, :cond_22

    .line 817
    .line 818
    goto :goto_12

    .line 819
    :cond_22
    if-eqz v3, :cond_23

    .line 820
    .line 821
    :goto_12
    move v3, v9

    .line 822
    :goto_13
    move-wide/from16 v6, p1

    .line 823
    .line 824
    goto :goto_14

    .line 825
    :cond_23
    const/4 v3, 0x0

    .line 826
    goto :goto_13

    .line 827
    :goto_14
    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 828
    .line 829
    .line 830
    move-result-wide v5

    .line 831
    goto :goto_15

    .line 832
    :cond_24
    move-wide v6, v5

    .line 833
    const/16 v17, 0x20

    .line 834
    .line 835
    const-wide v20, 0xffffffffL

    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    move-wide v5, v6

    .line 841
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->l()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    goto/16 :goto_9

    .line 846
    .line 847
    :cond_25
    return v3

    .line 848
    :sswitch_4
    if-eqz v3, :cond_26

    .line 849
    .line 850
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    .line 851
    .line 852
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    goto :goto_16

    .line 857
    :cond_26
    const/4 v0, 0x0

    .line 858
    :goto_16
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 859
    .line 860
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    if-nez v1, :cond_27

    .line 865
    .line 866
    const/4 v15, 0x0

    .line 867
    goto :goto_17

    .line 868
    :cond_27
    move-object v15, v1

    .line 869
    :goto_17
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 870
    .line 871
    if-eqz v15, :cond_0

    .line 872
    .line 873
    iget-object v1, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 874
    .line 875
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 876
    .line 877
    if-eqz v1, :cond_0

    .line 878
    .line 879
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 880
    .line 881
    if-nez v0, :cond_28

    .line 882
    .line 883
    const-string v0, ""

    .line 884
    .line 885
    :cond_28
    invoke-direct {v2, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    check-cast v0, Ljava/lang/Boolean;

    .line 893
    .line 894
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 895
    .line 896
    .line 897
    move-result v0

    .line 898
    return v0

    .line 899
    :sswitch_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 900
    .line 901
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    if-nez v0, :cond_29

    .line 906
    .line 907
    const/4 v15, 0x0

    .line 908
    goto :goto_18

    .line 909
    :cond_29
    move-object v15, v0

    .line 910
    :goto_18
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 911
    .line 912
    if-eqz v15, :cond_0

    .line 913
    .line 914
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 915
    .line 916
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 917
    .line 918
    if-eqz v0, :cond_0

    .line 919
    .line 920
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    check-cast v0, Ljava/lang/Boolean;

    .line 925
    .line 926
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    return v0

    .line 931
    :sswitch_6
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 932
    .line 933
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    if-nez v0, :cond_2a

    .line 938
    .line 939
    const/4 v15, 0x0

    .line 940
    goto :goto_19

    .line 941
    :cond_2a
    move-object v15, v0

    .line 942
    :goto_19
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 943
    .line 944
    if-eqz v15, :cond_0

    .line 945
    .line 946
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 947
    .line 948
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 949
    .line 950
    if-eqz v0, :cond_0

    .line 951
    .line 952
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    check-cast v0, Ljava/lang/Boolean;

    .line 957
    .line 958
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    return v0

    .line 963
    :sswitch_7
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 964
    .line 965
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    if-nez v0, :cond_2b

    .line 970
    .line 971
    const/4 v15, 0x0

    .line 972
    goto :goto_1a

    .line 973
    :cond_2b
    move-object v15, v0

    .line 974
    :goto_1a
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 975
    .line 976
    if-eqz v15, :cond_0

    .line 977
    .line 978
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 979
    .line 980
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 981
    .line 982
    if-eqz v0, :cond_0

    .line 983
    .line 984
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    check-cast v0, Ljava/lang/Boolean;

    .line 989
    .line 990
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    return v0

    .line 995
    :sswitch_8
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 996
    .line 997
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    if-nez v0, :cond_2c

    .line 1002
    .line 1003
    const/4 v15, 0x0

    .line 1004
    goto :goto_1b

    .line 1005
    :cond_2c
    move-object v15, v0

    .line 1006
    :goto_1b
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1007
    .line 1008
    if-eqz v15, :cond_0

    .line 1009
    .line 1010
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1011
    .line 1012
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1013
    .line 1014
    if-eqz v0, :cond_0

    .line 1015
    .line 1016
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    check-cast v0, Ljava/lang/Boolean;

    .line 1021
    .line 1022
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    return v0

    .line 1027
    :sswitch_9
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1028
    .line 1029
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    if-nez v0, :cond_2d

    .line 1034
    .line 1035
    const/4 v15, 0x0

    .line 1036
    goto :goto_1c

    .line 1037
    :cond_2d
    move-object v15, v0

    .line 1038
    :goto_1c
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1039
    .line 1040
    if-eqz v15, :cond_0

    .line 1041
    .line 1042
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1043
    .line 1044
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1045
    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    .line 1048
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    check-cast v0, Ljava/lang/Boolean;

    .line 1053
    .line 1054
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v0

    .line 1058
    return v0

    .line 1059
    :goto_1d
    const/16 v0, 0x1000

    .line 1060
    .line 1061
    if-ne v1, v0, :cond_2e

    .line 1062
    .line 1063
    move v0, v9

    .line 1064
    goto :goto_1e

    .line 1065
    :cond_2e
    const/4 v0, 0x0

    .line 1066
    :goto_1e
    const/16 v2, 0x2000

    .line 1067
    .line 1068
    if-ne v1, v2, :cond_2f

    .line 1069
    .line 1070
    move v2, v9

    .line 1071
    goto :goto_1f

    .line 1072
    :cond_2f
    const/4 v2, 0x0

    .line 1073
    :goto_1f
    const v3, 0x1020039

    .line 1074
    .line 1075
    .line 1076
    if-ne v1, v3, :cond_30

    .line 1077
    .line 1078
    move v3, v9

    .line 1079
    goto :goto_20

    .line 1080
    :cond_30
    const/4 v3, 0x0

    .line 1081
    :goto_20
    const v4, 0x102003b

    .line 1082
    .line 1083
    .line 1084
    if-ne v1, v4, :cond_31

    .line 1085
    .line 1086
    move v4, v9

    .line 1087
    goto :goto_21

    .line 1088
    :cond_31
    const/4 v4, 0x0

    .line 1089
    :goto_21
    const v5, 0x1020038

    .line 1090
    .line 1091
    .line 1092
    if-ne v1, v5, :cond_32

    .line 1093
    .line 1094
    move v5, v9

    .line 1095
    goto :goto_22

    .line 1096
    :cond_32
    const/4 v5, 0x0

    .line 1097
    :goto_22
    const v7, 0x102003a

    .line 1098
    .line 1099
    .line 1100
    if-ne v1, v7, :cond_33

    .line 1101
    .line 1102
    move v1, v9

    .line 1103
    goto :goto_23

    .line 1104
    :cond_33
    const/4 v1, 0x0

    .line 1105
    :goto_23
    if-nez v3, :cond_35

    .line 1106
    .line 1107
    if-nez v4, :cond_35

    .line 1108
    .line 1109
    if-nez v0, :cond_35

    .line 1110
    .line 1111
    if-eqz v2, :cond_34

    .line 1112
    .line 1113
    goto :goto_24

    .line 1114
    :cond_34
    const/4 v7, 0x0

    .line 1115
    goto :goto_25

    .line 1116
    :cond_35
    :goto_24
    move v7, v9

    .line 1117
    :goto_25
    if-nez v5, :cond_37

    .line 1118
    .line 1119
    if-nez v1, :cond_37

    .line 1120
    .line 1121
    if-nez v0, :cond_37

    .line 1122
    .line 1123
    if-eqz v2, :cond_36

    .line 1124
    .line 1125
    goto :goto_26

    .line 1126
    :cond_36
    const/4 v9, 0x0

    .line 1127
    :cond_37
    :goto_26
    if-nez v0, :cond_38

    .line 1128
    .line 1129
    if-eqz v2, :cond_3e

    .line 1130
    .line 1131
    :cond_38
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1132
    .line 1133
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    if-nez v0, :cond_39

    .line 1138
    .line 1139
    const/4 v0, 0x0

    .line 1140
    :cond_39
    check-cast v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 1141
    .line 1142
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1143
    .line 1144
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    if-nez v1, :cond_3a

    .line 1149
    .line 1150
    const/4 v1, 0x0

    .line 1151
    :cond_3a
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1152
    .line 1153
    if-eqz v0, :cond_3e

    .line 1154
    .line 1155
    iget-object v10, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->b:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 1156
    .line 1157
    if-eqz v1, :cond_3e

    .line 1158
    .line 1159
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v3

    .line 1163
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 1164
    .line 1165
    .line 1166
    move-result v3

    .line 1167
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v4

    .line 1171
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 1172
    .line 1173
    .line 1174
    move-result v4

    .line 1175
    cmpg-float v5, v3, v4

    .line 1176
    .line 1177
    if-gez v5, :cond_3b

    .line 1178
    .line 1179
    move v3, v4

    .line 1180
    :cond_3b
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v4

    .line 1184
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 1185
    .line 1186
    .line 1187
    move-result v4

    .line 1188
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v5

    .line 1192
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 1193
    .line 1194
    .line 1195
    move-result v5

    .line 1196
    cmpl-float v6, v4, v5

    .line 1197
    .line 1198
    if-lez v6, :cond_3c

    .line 1199
    .line 1200
    move v4, v5

    .line 1201
    :cond_3c
    sub-float/2addr v3, v4

    .line 1202
    const/high16 v4, 0x41a00000    # 20.0f

    .line 1203
    .line 1204
    div-float/2addr v3, v4

    .line 1205
    if-eqz v2, :cond_3d

    .line 1206
    .line 1207
    neg-float v3, v3

    .line 1208
    :cond_3d
    iget-object v1, v1, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1209
    .line 1210
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1211
    .line 1212
    if-eqz v1, :cond_0

    .line 1213
    .line 1214
    iget v0, v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->a:F

    .line 1215
    .line 1216
    add-float/2addr v0, v3

    .line 1217
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    check-cast v0, Ljava/lang/Boolean;

    .line 1226
    .line 1227
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    return v0

    .line 1232
    :cond_3e
    iget-object v0, v8, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 1233
    .line 1234
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 1235
    .line 1236
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->c()J

    .line 1241
    .line 1242
    .line 1243
    move-result-wide v0

    .line 1244
    new-instance v10, Ljava/util/ArrayList;

    .line 1245
    .line 1246
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .line 1248
    .line 1249
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1250
    .line 1251
    invoke-virtual {v13, v11}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v11

    .line 1255
    if-nez v11, :cond_3f

    .line 1256
    .line 1257
    const/4 v11, 0x0

    .line 1258
    :cond_3f
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1259
    .line 1260
    if-eqz v11, :cond_40

    .line 1261
    .line 1262
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1263
    .line 1264
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 1265
    .line 1266
    if-eqz v11, :cond_40

    .line 1267
    .line 1268
    invoke-interface {v11, v10}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v11

    .line 1272
    check-cast v11, Ljava/lang/Boolean;

    .line 1273
    .line 1274
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v11

    .line 1278
    if-eqz v11, :cond_40

    .line 1279
    .line 1280
    const/4 v11, 0x0

    .line 1281
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v10

    .line 1285
    check-cast v10, Ljava/lang/Float;

    .line 1286
    .line 1287
    goto :goto_27

    .line 1288
    :cond_40
    const/4 v10, 0x0

    .line 1289
    :goto_27
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1290
    .line 1291
    invoke-virtual {v13, v11}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v11

    .line 1295
    if-nez v11, :cond_41

    .line 1296
    .line 1297
    const/4 v11, 0x0

    .line 1298
    :cond_41
    check-cast v11, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1299
    .line 1300
    if-nez v11, :cond_42

    .line 1301
    .line 1302
    goto/16 :goto_0

    .line 1303
    .line 1304
    :cond_42
    iget-object v11, v11, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1305
    .line 1306
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1307
    .line 1308
    invoke-virtual {v13, v12}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v12

    .line 1312
    if-nez v12, :cond_43

    .line 1313
    .line 1314
    const/4 v12, 0x0

    .line 1315
    :cond_43
    check-cast v12, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1316
    .line 1317
    if-eqz v12, :cond_4e

    .line 1318
    .line 1319
    if-eqz v7, :cond_4e

    .line 1320
    .line 1321
    if-eqz v10, :cond_44

    .line 1322
    .line 1323
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 1324
    .line 1325
    .line 1326
    move-result v7

    .line 1327
    goto :goto_28

    .line 1328
    :cond_44
    shr-long v14, v0, v17

    .line 1329
    .line 1330
    long-to-int v7, v14

    .line 1331
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1332
    .line 1333
    .line 1334
    move-result v7

    .line 1335
    :goto_28
    if-nez v3, :cond_45

    .line 1336
    .line 1337
    if-eqz v2, :cond_46

    .line 1338
    .line 1339
    :cond_45
    neg-float v7, v7

    .line 1340
    :cond_46
    iget-object v8, v8, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1341
    .line 1342
    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1343
    .line 1344
    if-ne v8, v14, :cond_48

    .line 1345
    .line 1346
    if-nez v3, :cond_47

    .line 1347
    .line 1348
    if-eqz v4, :cond_48

    .line 1349
    .line 1350
    :cond_47
    neg-float v7, v7

    .line 1351
    :cond_48
    invoke-static {v12, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1352
    .line 1353
    .line 1354
    move-result v3

    .line 1355
    if-eqz v3, :cond_4e

    .line 1356
    .line 1357
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1358
    .line 1359
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v1

    .line 1363
    if-nez v1, :cond_4a

    .line 1364
    .line 1365
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1366
    .line 1367
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v1

    .line 1371
    if-eqz v1, :cond_49

    .line 1372
    .line 1373
    goto :goto_29

    .line 1374
    :cond_49
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 1375
    .line 1376
    if-eqz v11, :cond_0

    .line 1377
    .line 1378
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    invoke-interface {v11, v0, v6}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    check-cast v0, Ljava/lang/Boolean;

    .line 1387
    .line 1388
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1389
    .line 1390
    .line 1391
    move-result v0

    .line 1392
    return v0

    .line 1393
    :cond_4a
    :goto_29
    cmpl-float v1, v7, p0

    .line 1394
    .line 1395
    if-lez v1, :cond_4c

    .line 1396
    .line 1397
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1398
    .line 1399
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    if-nez v0, :cond_4b

    .line 1404
    .line 1405
    const/4 v15, 0x0

    .line 1406
    goto :goto_2a

    .line 1407
    :cond_4b
    move-object v15, v0

    .line 1408
    :goto_2a
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1409
    .line 1410
    goto :goto_2c

    .line 1411
    :cond_4c
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    if-nez v0, :cond_4d

    .line 1416
    .line 1417
    const/4 v15, 0x0

    .line 1418
    goto :goto_2b

    .line 1419
    :cond_4d
    move-object v15, v0

    .line 1420
    :goto_2b
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1421
    .line 1422
    :goto_2c
    if-eqz v15, :cond_0

    .line 1423
    .line 1424
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1425
    .line 1426
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1427
    .line 1428
    if-eqz v0, :cond_0

    .line 1429
    .line 1430
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    check-cast v0, Ljava/lang/Boolean;

    .line 1435
    .line 1436
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    return v0

    .line 1441
    :cond_4e
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1442
    .line 1443
    invoke-virtual {v13, v3}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v3

    .line 1447
    if-nez v3, :cond_4f

    .line 1448
    .line 1449
    const/4 v3, 0x0

    .line 1450
    :cond_4f
    check-cast v3, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1451
    .line 1452
    if-eqz v3, :cond_0

    .line 1453
    .line 1454
    if-eqz v9, :cond_0

    .line 1455
    .line 1456
    if-eqz v10, :cond_50

    .line 1457
    .line 1458
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 1459
    .line 1460
    .line 1461
    move-result v0

    .line 1462
    goto :goto_2d

    .line 1463
    :cond_50
    and-long v0, v0, v20

    .line 1464
    .line 1465
    long-to-int v0, v0

    .line 1466
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    :goto_2d
    if-nez v5, :cond_51

    .line 1471
    .line 1472
    if-eqz v2, :cond_52

    .line 1473
    .line 1474
    :cond_51
    neg-float v0, v0

    .line 1475
    :cond_52
    invoke-static {v3, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->x(Landroidx/compose/ui/semantics/ScrollAxisRange;F)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v1

    .line 1479
    if-eqz v1, :cond_0

    .line 1480
    .line 1481
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1482
    .line 1483
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1484
    .line 1485
    .line 1486
    move-result v2

    .line 1487
    if-nez v2, :cond_54

    .line 1488
    .line 1489
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1490
    .line 1491
    invoke-virtual {v13, v2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1492
    .line 1493
    .line 1494
    move-result v2

    .line 1495
    if-eqz v2, :cond_53

    .line 1496
    .line 1497
    goto :goto_2e

    .line 1498
    :cond_53
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 1499
    .line 1500
    if-eqz v11, :cond_0

    .line 1501
    .line 1502
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    invoke-interface {v11, v6, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    check-cast v0, Ljava/lang/Boolean;

    .line 1511
    .line 1512
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1513
    .line 1514
    .line 1515
    move-result v0

    .line 1516
    return v0

    .line 1517
    :cond_54
    :goto_2e
    cmpl-float v0, v0, p0

    .line 1518
    .line 1519
    if-lez v0, :cond_56

    .line 1520
    .line 1521
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1522
    .line 1523
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    if-nez v0, :cond_55

    .line 1528
    .line 1529
    const/4 v15, 0x0

    .line 1530
    goto :goto_2f

    .line 1531
    :cond_55
    move-object v15, v0

    .line 1532
    :goto_2f
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1533
    .line 1534
    goto :goto_31

    .line 1535
    :cond_56
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v0

    .line 1539
    if-nez v0, :cond_57

    .line 1540
    .line 1541
    const/4 v15, 0x0

    .line 1542
    goto :goto_30

    .line 1543
    :cond_57
    move-object v15, v0

    .line 1544
    :goto_30
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1545
    .line 1546
    :goto_31
    if-eqz v15, :cond_0

    .line 1547
    .line 1548
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1549
    .line 1550
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1551
    .line 1552
    if-eqz v0, :cond_0

    .line 1553
    .line 1554
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    check-cast v0, Ljava/lang/Boolean;

    .line 1559
    .line 1560
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1561
    .line 1562
    .line 1563
    move-result v0

    .line 1564
    return v0

    .line 1565
    :sswitch_a
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1566
    .line 1567
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v0

    .line 1571
    if-nez v0, :cond_58

    .line 1572
    .line 1573
    const/4 v15, 0x0

    .line 1574
    goto :goto_32

    .line 1575
    :cond_58
    move-object v15, v0

    .line 1576
    :goto_32
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1577
    .line 1578
    if-eqz v15, :cond_0

    .line 1579
    .line 1580
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1581
    .line 1582
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1583
    .line 1584
    if-eqz v0, :cond_0

    .line 1585
    .line 1586
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v0

    .line 1590
    check-cast v0, Ljava/lang/Boolean;

    .line 1591
    .line 1592
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1593
    .line 1594
    .line 1595
    move-result v0

    .line 1596
    return v0

    .line 1597
    :sswitch_b
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1598
    .line 1599
    invoke-virtual {v13, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v1

    .line 1603
    if-nez v1, :cond_59

    .line 1604
    .line 1605
    const/4 v1, 0x0

    .line 1606
    :cond_59
    check-cast v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1607
    .line 1608
    if-eqz v1, :cond_5a

    .line 1609
    .line 1610
    iget-object v1, v1, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1611
    .line 1612
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 1613
    .line 1614
    if-eqz v1, :cond_5a

    .line 1615
    .line 1616
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v1

    .line 1620
    check-cast v1, Ljava/lang/Boolean;

    .line 1621
    .line 1622
    move-object/from16 v16, v1

    .line 1623
    .line 1624
    :goto_33
    const/16 v1, 0xc

    .line 1625
    .line 1626
    const/4 v3, 0x0

    .line 1627
    goto :goto_34

    .line 1628
    :cond_5a
    const/16 v16, 0x0

    .line 1629
    .line 1630
    goto :goto_33

    .line 1631
    :goto_34
    invoke-static {v2, v0, v9, v3, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1632
    .line 1633
    .line 1634
    if-eqz v16, :cond_0

    .line 1635
    .line 1636
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1637
    .line 1638
    .line 1639
    move-result v0

    .line 1640
    return v0

    .line 1641
    :cond_5b
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1642
    .line 1643
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v0

    .line 1647
    if-nez v0, :cond_5c

    .line 1648
    .line 1649
    const/4 v15, 0x0

    .line 1650
    goto :goto_35

    .line 1651
    :cond_5c
    move-object v15, v0

    .line 1652
    :goto_35
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1653
    .line 1654
    .line 1655
    move-result v0

    .line 1656
    if-eqz v0, :cond_0

    .line 1657
    .line 1658
    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v0

    .line 1662
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 1663
    .line 1664
    const/16 v1, 0x8

    .line 1665
    .line 1666
    const/4 v11, 0x0

    .line 1667
    invoke-virtual {v0, v1, v11, v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c(IZZ)Z

    .line 1668
    .line 1669
    .line 1670
    return v9

    .line 1671
    :cond_5d
    invoke-virtual {v7}, Landroid/view/View;->isInTouchMode()Z

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    if-eqz v0, :cond_5e

    .line 1676
    .line 1677
    invoke-virtual {v7}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1678
    .line 1679
    .line 1680
    :cond_5e
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1681
    .line 1682
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v0

    .line 1686
    if-nez v0, :cond_5f

    .line 1687
    .line 1688
    const/4 v15, 0x0

    .line 1689
    goto :goto_36

    .line 1690
    :cond_5f
    move-object v15, v0

    .line 1691
    :goto_36
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1692
    .line 1693
    if-eqz v15, :cond_0

    .line 1694
    .line 1695
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1696
    .line 1697
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1698
    .line 1699
    if-eqz v0, :cond_0

    .line 1700
    .line 1701
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v0

    .line 1705
    check-cast v0, Ljava/lang/Boolean;

    .line 1706
    .line 1707
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1708
    .line 1709
    .line 1710
    move-result v0

    .line 1711
    return v0

    .line 1712
    :cond_60
    if-eqz v3, :cond_61

    .line 1713
    .line 1714
    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 1715
    .line 1716
    invoke-virtual {v3, v0, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1717
    .line 1718
    .line 1719
    move-result v0

    .line 1720
    goto :goto_37

    .line 1721
    :cond_61
    move v0, v15

    .line 1722
    :goto_37
    if-eqz v3, :cond_62

    .line 1723
    .line 1724
    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 1725
    .line 1726
    invoke-virtual {v3, v1, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 1727
    .line 1728
    .line 1729
    move-result v15

    .line 1730
    :cond_62
    const/4 v1, 0x0

    .line 1731
    invoke-virtual {v2, v11, v0, v15, v1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 1732
    .line 1733
    .line 1734
    move-result v0

    .line 1735
    if-eqz v0, :cond_63

    .line 1736
    .line 1737
    invoke-virtual {v2, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A(I)I

    .line 1738
    .line 1739
    .line 1740
    move-result v3

    .line 1741
    const/16 v4, 0xc

    .line 1742
    .line 1743
    const/4 v5, 0x0

    .line 1744
    invoke-static {v2, v3, v1, v5, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 1745
    .line 1746
    .line 1747
    :cond_63
    return v0

    .line 1748
    :cond_64
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1749
    .line 1750
    invoke-virtual {v13, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v0

    .line 1754
    if-nez v0, :cond_65

    .line 1755
    .line 1756
    const/4 v15, 0x0

    .line 1757
    goto :goto_38

    .line 1758
    :cond_65
    move-object v15, v0

    .line 1759
    :goto_38
    check-cast v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 1760
    .line 1761
    if-eqz v15, :cond_0

    .line 1762
    .line 1763
    iget-object v0, v15, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 1764
    .line 1765
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1766
    .line 1767
    if-eqz v0, :cond_0

    .line 1768
    .line 1769
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    check-cast v0, Ljava/lang/Boolean;

    .line 1774
    .line 1775
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1776
    .line 1777
    .line 1778
    move-result v0

    .line 1779
    return v0

    .line 1780
    :cond_66
    if-eqz v3, :cond_0

    .line 1781
    .line 1782
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1783
    .line 1784
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1785
    .line 1786
    .line 1787
    move-result v0

    .line 1788
    const-string v5, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 1789
    .line 1790
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v3

    .line 1794
    if-ne v1, v4, :cond_67

    .line 1795
    .line 1796
    move v1, v9

    .line 1797
    goto :goto_39

    .line 1798
    :cond_67
    const/4 v1, 0x0

    .line 1799
    :goto_39
    iget-object v5, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D:Ljava/lang/Integer;

    .line 1800
    .line 1801
    if-nez v5, :cond_68

    .line 1802
    .line 1803
    goto :goto_3a

    .line 1804
    :cond_68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1805
    .line 1806
    .line 1807
    move-result v5

    .line 1808
    if-eq v10, v5, :cond_69

    .line 1809
    .line 1810
    :goto_3a
    iput v15, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->C:I

    .line 1811
    .line 1812
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v5

    .line 1816
    iput-object v5, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->D:Ljava/lang/Integer;

    .line 1817
    .line 1818
    :cond_69
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v5

    .line 1822
    if-eqz v5, :cond_0

    .line 1823
    .line 1824
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1825
    .line 1826
    .line 1827
    move-result v6

    .line 1828
    if-nez v6, :cond_6a

    .line 1829
    .line 1830
    goto/16 :goto_0

    .line 1831
    .line 1832
    :cond_6a
    invoke-static {v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t(Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/String;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v6

    .line 1836
    if-eqz v6, :cond_6c

    .line 1837
    .line 1838
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 1839
    .line 1840
    .line 1841
    move-result v8

    .line 1842
    if-nez v8, :cond_6b

    .line 1843
    .line 1844
    goto :goto_3b

    .line 1845
    :cond_6b
    const-string v8, "impl"

    .line 1846
    .line 1847
    if-eq v0, v9, :cond_78

    .line 1848
    .line 1849
    const/4 v10, 0x2

    .line 1850
    if-eq v0, v10, :cond_75

    .line 1851
    .line 1852
    const/4 v7, 0x4

    .line 1853
    if-eq v0, v7, :cond_6f

    .line 1854
    .line 1855
    const/16 v8, 0x8

    .line 1856
    .line 1857
    if-eq v0, v8, :cond_6d

    .line 1858
    .line 1859
    const/16 v8, 0x10

    .line 1860
    .line 1861
    if-eq v0, v8, :cond_6f

    .line 1862
    .line 1863
    :cond_6c
    :goto_3b
    const/4 v7, 0x0

    .line 1864
    goto/16 :goto_3c

    .line 1865
    .line 1866
    :cond_6d
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->c:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1867
    .line 1868
    if-nez v7, :cond_6e

    .line 1869
    .line 1870
    new-instance v7, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1871
    .line 1872
    invoke-direct {v7}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 1873
    .line 1874
    .line 1875
    sput-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->c:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1876
    .line 1877
    :cond_6e
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;->c:Landroidx/compose/ui/platform/AccessibilityIterators$ParagraphTextSegmentIterator;

    .line 1878
    .line 1879
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1880
    .line 1881
    .line 1882
    iput-object v6, v7, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->a:Ljava/lang/String;

    .line 1883
    .line 1884
    goto/16 :goto_3c

    .line 1885
    .line 1886
    :cond_6f
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1887
    .line 1888
    invoke-virtual {v13, v8}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 1889
    .line 1890
    .line 1891
    move-result v8

    .line 1892
    if-nez v8, :cond_70

    .line 1893
    .line 1894
    goto :goto_3b

    .line 1895
    :cond_70
    invoke-static {v12}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v8

    .line 1899
    if-nez v8, :cond_71

    .line 1900
    .line 1901
    goto :goto_3b

    .line 1902
    :cond_71
    if-ne v0, v7, :cond_73

    .line 1903
    .line 1904
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1905
    .line 1906
    if-nez v7, :cond_72

    .line 1907
    .line 1908
    new-instance v7, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1909
    .line 1910
    invoke-direct {v7}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 1911
    .line 1912
    .line 1913
    sput-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1914
    .line 1915
    :cond_72
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;

    .line 1916
    .line 1917
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1918
    .line 1919
    .line 1920
    iput-object v6, v7, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->a:Ljava/lang/String;

    .line 1921
    .line 1922
    iput-object v8, v7, Landroidx/compose/ui/platform/AccessibilityIterators$LineTextSegmentIterator;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1923
    .line 1924
    goto/16 :goto_3c

    .line 1925
    .line 1926
    :cond_73
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->e:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1927
    .line 1928
    if-nez v7, :cond_74

    .line 1929
    .line 1930
    new-instance v7, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1931
    .line 1932
    invoke-direct {v7}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 1933
    .line 1934
    .line 1935
    new-instance v10, Landroid/graphics/Rect;

    .line 1936
    .line 1937
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1938
    .line 1939
    .line 1940
    sput-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->e:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1941
    .line 1942
    :cond_74
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->e:Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    .line 1943
    .line 1944
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1945
    .line 1946
    .line 1947
    iput-object v6, v7, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->a:Ljava/lang/String;

    .line 1948
    .line 1949
    iput-object v8, v7, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1950
    .line 1951
    iput-object v11, v7, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->d:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1952
    .line 1953
    goto :goto_3c

    .line 1954
    :cond_75
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v7

    .line 1958
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v7

    .line 1962
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v7

    .line 1966
    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1967
    .line 1968
    sget-object v10, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1969
    .line 1970
    if-nez v10, :cond_76

    .line 1971
    .line 1972
    new-instance v10, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1973
    .line 1974
    invoke-direct {v10}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 1975
    .line 1976
    .line 1977
    invoke-static {v7}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v7

    .line 1981
    iput-object v7, v10, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->c:Ljava/text/BreakIterator;

    .line 1982
    .line 1983
    sput-object v10, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1984
    .line 1985
    :cond_76
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;

    .line 1986
    .line 1987
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1988
    .line 1989
    .line 1990
    iput-object v6, v7, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->a:Ljava/lang/String;

    .line 1991
    .line 1992
    iget-object v10, v7, Landroidx/compose/ui/platform/AccessibilityIterators$WordTextSegmentIterator;->c:Ljava/text/BreakIterator;

    .line 1993
    .line 1994
    if-eqz v10, :cond_77

    .line 1995
    .line 1996
    invoke-virtual {v10, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 1997
    .line 1998
    .line 1999
    goto :goto_3c

    .line 2000
    :cond_77
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 2001
    .line 2002
    .line 2003
    const/16 v16, 0x0

    .line 2004
    .line 2005
    throw v16

    .line 2006
    :cond_78
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v7

    .line 2010
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v7

    .line 2014
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v7

    .line 2018
    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2019
    .line 2020
    sget-object v10, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 2021
    .line 2022
    if-nez v10, :cond_79

    .line 2023
    .line 2024
    new-instance v10, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 2025
    .line 2026
    invoke-direct {v10}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 2027
    .line 2028
    .line 2029
    invoke-static {v7}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v7

    .line 2033
    iput-object v7, v10, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->c:Ljava/text/BreakIterator;

    .line 2034
    .line 2035
    sput-object v10, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 2036
    .line 2037
    :cond_79
    sget-object v7, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->d:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    .line 2038
    .line 2039
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2040
    .line 2041
    .line 2042
    iput-object v6, v7, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->a:Ljava/lang/String;

    .line 2043
    .line 2044
    iget-object v10, v7, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->c:Ljava/text/BreakIterator;

    .line 2045
    .line 2046
    if-eqz v10, :cond_7a

    .line 2047
    .line 2048
    invoke-virtual {v10, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 2049
    .line 2050
    .line 2051
    goto :goto_3c

    .line 2052
    :cond_7a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    const/16 v16, 0x0

    .line 2056
    .line 2057
    throw v16

    .line 2058
    :goto_3c
    if-nez v7, :cond_7b

    .line 2059
    .line 2060
    goto/16 :goto_0

    .line 2061
    .line 2062
    :cond_7b
    invoke-virtual {v2, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2063
    .line 2064
    .line 2065
    move-result v6

    .line 2066
    if-ne v6, v15, :cond_7d

    .line 2067
    .line 2068
    if-eqz v1, :cond_7c

    .line 2069
    .line 2070
    const/4 v5, 0x0

    .line 2071
    goto :goto_3d

    .line 2072
    :cond_7c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 2073
    .line 2074
    .line 2075
    move-result v5

    .line 2076
    :goto_3d
    move v6, v5

    .line 2077
    :cond_7d
    if-eqz v1, :cond_7e

    .line 2078
    .line 2079
    invoke-interface {v7, v6}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->a(I)[I

    .line 2080
    .line 2081
    .line 2082
    move-result-object v5

    .line 2083
    goto :goto_3e

    .line 2084
    :cond_7e
    invoke-interface {v7, v6}, Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;->b(I)[I

    .line 2085
    .line 2086
    .line 2087
    move-result-object v5

    .line 2088
    :goto_3e
    if-nez v5, :cond_7f

    .line 2089
    .line 2090
    goto/16 :goto_0

    .line 2091
    .line 2092
    :cond_7f
    const/16 v19, 0x0

    .line 2093
    .line 2094
    aget v6, v5, v19

    .line 2095
    .line 2096
    aget v5, v5, v9

    .line 2097
    .line 2098
    if-eqz v3, :cond_83

    .line 2099
    .line 2100
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2101
    .line 2102
    invoke-virtual {v13, v3}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v3

    .line 2106
    if-nez v3, :cond_83

    .line 2107
    .line 2108
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2109
    .line 2110
    invoke-virtual {v13, v3}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 2111
    .line 2112
    .line 2113
    move-result v3

    .line 2114
    if-eqz v3, :cond_83

    .line 2115
    .line 2116
    invoke-virtual {v2, v11}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->r(Landroidx/compose/ui/semantics/SemanticsNode;)I

    .line 2117
    .line 2118
    .line 2119
    move-result v3

    .line 2120
    if-ne v3, v15, :cond_81

    .line 2121
    .line 2122
    if-eqz v1, :cond_80

    .line 2123
    .line 2124
    move v3, v6

    .line 2125
    goto :goto_3f

    .line 2126
    :cond_80
    move v3, v5

    .line 2127
    :cond_81
    :goto_3f
    if-eqz v1, :cond_82

    .line 2128
    .line 2129
    move v7, v5

    .line 2130
    goto :goto_41

    .line 2131
    :cond_82
    move v7, v6

    .line 2132
    goto :goto_41

    .line 2133
    :cond_83
    if-eqz v1, :cond_84

    .line 2134
    .line 2135
    move v3, v5

    .line 2136
    goto :goto_40

    .line 2137
    :cond_84
    move v3, v6

    .line 2138
    :goto_40
    move v7, v3

    .line 2139
    :goto_41
    if-eqz v1, :cond_85

    .line 2140
    .line 2141
    move v12, v4

    .line 2142
    goto :goto_42

    .line 2143
    :cond_85
    move v12, v14

    .line 2144
    :goto_42
    new-instance v10, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2145
    .line 2146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2147
    .line 2148
    .line 2149
    move-result-wide v16

    .line 2150
    move v13, v0

    .line 2151
    move v15, v5

    .line 2152
    move v14, v6

    .line 2153
    invoke-direct/range {v10 .. v17}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;IIIIJ)V

    .line 2154
    .line 2155
    .line 2156
    iput-object v10, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->H:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$PendingTextTraversedEvent;

    .line 2157
    .line 2158
    invoke-virtual {v2, v11, v3, v7, v9}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K(Landroidx/compose/ui/semantics/SemanticsNode;IIZ)Z

    .line 2159
    .line 2160
    .line 2161
    return v9

    .line 2162
    :cond_86
    iget v1, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 2163
    .line 2164
    if-ne v1, v0, :cond_87

    .line 2165
    .line 2166
    iput v15, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 2167
    .line 2168
    const/4 v3, 0x0

    .line 2169
    iput-object v3, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2170
    .line 2171
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 2172
    .line 2173
    .line 2174
    const/high16 v1, 0x10000

    .line 2175
    .line 2176
    const/16 v5, 0xc

    .line 2177
    .line 2178
    invoke-static {v2, v0, v1, v3, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2179
    .line 2180
    .line 2181
    return v9

    .line 2182
    :cond_87
    const/16 v19, 0x0

    .line 2183
    .line 2184
    return v19

    .line 2185
    :cond_88
    const/high16 v1, 0x10000

    .line 2186
    .line 2187
    const/4 v3, 0x0

    .line 2188
    const/16 v5, 0xc

    .line 2189
    .line 2190
    const/16 v19, 0x0

    .line 2191
    .line 2192
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 2193
    .line 2194
    .line 2195
    move-result v6

    .line 2196
    if-eqz v6, :cond_8b

    .line 2197
    .line 2198
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 2199
    .line 2200
    .line 2201
    move-result v4

    .line 2202
    if-eqz v4, :cond_8b

    .line 2203
    .line 2204
    iget v4, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 2205
    .line 2206
    if-ne v4, v0, :cond_89

    .line 2207
    .line 2208
    return v19

    .line 2209
    :cond_89
    if-eq v4, v15, :cond_8a

    .line 2210
    .line 2211
    invoke-static {v2, v4, v1, v3, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2212
    .line 2213
    .line 2214
    :cond_8a
    iput v0, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 2215
    .line 2216
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 2217
    .line 2218
    .line 2219
    const v1, 0x8000

    .line 2220
    .line 2221
    .line 2222
    invoke-static {v2, v0, v1, v3, v5}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 2223
    .line 2224
    .line 2225
    return v9

    .line 2226
    :cond_8b
    const/16 v19, 0x0

    .line 2227
    .line 2228
    :goto_43
    return v19

    .line 2229
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_8
        0x40000 -> :sswitch_7
        0x80000 -> :sswitch_6
        0x100000 -> :sswitch_5
        0x200000 -> :sswitch_4
        0x1020036 -> :sswitch_3
        0x102003d -> :sswitch_2
        0x1020054 -> :sswitch_1
    .end sparse-switch

    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    :pswitch_data_0
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    :pswitch_data_1
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
