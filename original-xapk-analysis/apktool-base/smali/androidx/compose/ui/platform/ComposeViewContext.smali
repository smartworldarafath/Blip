.class public final Landroidx/compose/ui/platform/ComposeViewContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:Landroidx/compose/runtime/CompositionContext;

.field public d:Landroidx/lifecycle/LifecycleOwner;

.field public e:Landroidx/savedstate/SavedStateRegistryOwner;

.field public f:Landroidx/lifecycle/ViewModelStoreOwner;

.field public final g:Landroidx/compose/ui/res/ImageVectorCache;

.field public final h:Landroidx/compose/ui/res/ResourceIdCache;

.field public final i:Landroid/content/res/Configuration;

.field public final j:Landroidx/compose/runtime/MutableState;

.field public final k:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

.field public final l:Landroidx/compose/ui/platform/AndroidUriHandler;

.field public final m:Landroidx/compose/ui/platform/AndroidClipboardManager;

.field public final n:Landroidx/compose/ui/platform/Clipboard;

.field public final o:Landroidx/compose/ui/text/font/Font$ResourceLoader;

.field public final p:Landroidx/compose/runtime/MutableState;

.field public final q:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final r:Landroidx/compose/ui/platform/AndroidViewConfiguration;

.field public final s:Landroidx/compose/ui/node/LayoutNodeDrawScope;

.field public final t:Landroidx/compose/ui/platform/LazyWindowInfo;

.field public final u:Landroidx/compose/ui/graphics/CanvasHolder;

.field public v:I

.field public w:Landroidx/compose/ui/platform/AndroidSoundEffect;

.field public final x:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeViewContext;Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 26
    .line 27
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->c:Landroidx/compose/runtime/CompositionContext;

    .line 28
    .line 29
    iput-object p4, p0, Landroidx/compose/ui/platform/ComposeViewContext;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 30
    .line 31
    iput-object p5, p0, Landroidx/compose/ui/platform/ComposeViewContext;->e:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 32
    .line 33
    iput-object p6, p0, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ImageVectorCache;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p3, Landroidx/compose/ui/res/ImageVectorCache;

    .line 44
    .line 45
    invoke-direct {p3}, Landroidx/compose/ui/res/ImageVectorCache;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_1
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ImageVectorCache;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroidx/compose/ui/res/ResourceIdCache;

    .line 53
    .line 54
    if-nez p3, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance p3, Landroidx/compose/ui/res/ResourceIdCache;

    .line 57
    .line 58
    invoke-direct {p3}, Landroidx/compose/ui/res/ResourceIdCache;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroidx/compose/ui/res/ResourceIdCache;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->i:Landroid/content/res/Configuration;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    new-instance p3, Landroid/content/res/Configuration;

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-direct {p3, p4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->i:Landroid/content/res/Configuration;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->j:Landroidx/compose/runtime/MutableState;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    new-instance p4, Landroid/content/res/Configuration;

    .line 99
    .line 100
    invoke-direct {p4, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    :goto_3
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->j:Landroidx/compose/runtime/MutableState;

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->k:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    new-instance p3, Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string p5, "accessibility"

    .line 127
    .line 128
    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    check-cast p4, Landroid/view/accessibility/AccessibilityManager;

    .line 136
    .line 137
    :goto_4
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->k:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->l:Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_7
    new-instance p3, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object p4

    .line 153
    invoke-direct {p3, p4}, Landroidx/compose/ui/platform/AndroidUriHandler;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    :goto_5
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->l:Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->m:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    new-instance p3, Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    invoke-direct {p3, p4}, Landroidx/compose/ui/platform/AndroidClipboardManager;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    :goto_6
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->m:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 176
    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->n:Landroidx/compose/ui/platform/Clipboard;

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_9
    new-instance p4, Landroidx/compose/ui/platform/AndroidClipboardImpl;

    .line 186
    .line 187
    invoke-direct {p4, p3}, Landroidx/compose/ui/platform/AndroidClipboardImpl;-><init>(Landroidx/compose/ui/platform/AndroidClipboardManager;)V

    .line 188
    .line 189
    .line 190
    move-object p3, p4

    .line 191
    :goto_7
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->n:Landroidx/compose/ui/platform/Clipboard;

    .line 192
    .line 193
    if-eqz v1, :cond_a

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->o:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_a
    new-instance p3, Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 202
    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    :goto_8
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->o:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 210
    .line 211
    if-eqz v1, :cond_b

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->p:Landroidx/compose/runtime/MutableState;

    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-static {p3}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 228
    .line 229
    .line 230
    move-result-object p4

    .line 231
    invoke-static {p3, p4}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    :goto_9
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->p:Landroidx/compose/runtime/MutableState;

    .line 236
    .line 237
    if-eqz p1, :cond_c

    .line 238
    .line 239
    iget-object v0, p1, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 240
    .line 241
    :cond_c
    if-ne p2, v0, :cond_d

    .line 242
    .line 243
    iget-object p3, p1, Landroidx/compose/ui/platform/ComposeViewContext;->q:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_d
    new-instance p3, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 247
    .line 248
    invoke-direct {p3, p2}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;-><init>(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    :goto_a
    iput-object p3, p0, Landroidx/compose/ui/platform/ComposeViewContext;->q:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 252
    .line 253
    if-eqz v1, :cond_e

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object p2, p1, Landroidx/compose/ui/platform/ComposeViewContext;->r:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    .line 259
    .line 260
    goto :goto_b

    .line 261
    :cond_e
    new-instance p3, Landroidx/compose/ui/platform/AndroidViewConfiguration;

    .line 262
    .line 263
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-direct {p3, p2}, Landroidx/compose/ui/platform/AndroidViewConfiguration;-><init>(Landroid/view/ViewConfiguration;)V

    .line 272
    .line 273
    .line 274
    move-object p2, p3

    .line 275
    :goto_b
    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->r:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    .line 276
    .line 277
    if-eqz p1, :cond_f

    .line 278
    .line 279
    iget-object p2, p1, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 280
    .line 281
    if-nez p2, :cond_10

    .line 282
    .line 283
    :cond_f
    new-instance p2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 284
    .line 285
    invoke-direct {p2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;-><init>()V

    .line 286
    .line 287
    .line 288
    :cond_10
    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 289
    .line 290
    new-instance p2, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 291
    .line 292
    invoke-direct {p2}, Landroidx/compose/ui/platform/LazyWindowInfo;-><init>()V

    .line 293
    .line 294
    .line 295
    iput-object p2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 296
    .line 297
    if-eqz p1, :cond_11

    .line 298
    .line 299
    iget-object p1, p1, Landroidx/compose/ui/platform/ComposeViewContext;->u:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 300
    .line 301
    if-nez p1, :cond_12

    .line 302
    .line 303
    :cond_11
    new-instance p1, Landroidx/compose/ui/graphics/CanvasHolder;

    .line 304
    .line 305
    invoke-direct {p1}, Landroidx/compose/ui/graphics/CanvasHolder;-><init>()V

    .line 306
    .line 307
    .line 308
    :cond_12
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 309
    .line 310
    new-instance p1, Lr1;

    .line 311
    .line 312
    const/16 p2, 0x9

    .line 313
    .line 314
    invoke-direct {p1, p2, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    new-instance p1, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    .line 318
    .line 319
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;)V

    .line 320
    .line 321
    .line 322
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->x:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    .line 323
    .line 324
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v5, 0x761ec9f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x4

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    move v5, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v5, 0x2

    .line 29
    :goto_0
    or-int/2addr v5, v3

    .line 30
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    const/16 v7, 0x20

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v7, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v5, v7

    .line 42
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v7, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v5, v7

    .line 54
    and-int/lit16 v7, v5, 0x93

    .line 55
    .line 56
    const/16 v8, 0x92

    .line 57
    .line 58
    const/4 v9, 0x1

    .line 59
    if-eq v7, v8, :cond_3

    .line 60
    .line 61
    move v7, v9

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/4 v7, 0x0

    .line 64
    :goto_3
    and-int/2addr v5, v9

    .line 65
    invoke-virtual {v4, v5, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_14

    .line 70
    .line 71
    const v5, 0x7f0a0108

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    instance-of v8, v7, Ljava/util/Set;

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    if-eqz v8, :cond_5

    .line 82
    .line 83
    instance-of v8, v7, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 84
    .line 85
    if-eqz v8, :cond_4

    .line 86
    .line 87
    instance-of v8, v7, Lkotlin/jvm/internal/markers/KMutableSet;

    .line 88
    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    :cond_4
    check-cast v7, Ljava/util/Set;

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move-object v7, v10

    .line 95
    :goto_4
    if-nez v7, :cond_9

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    instance-of v8, v7, Landroid/view/View;

    .line 102
    .line 103
    if-eqz v8, :cond_6

    .line 104
    .line 105
    check-cast v7, Landroid/view/View;

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_6
    move-object v7, v10

    .line 109
    :goto_5
    if-eqz v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v7, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    goto :goto_6

    .line 116
    :cond_7
    move-object v5, v10

    .line 117
    :goto_6
    instance-of v7, v5, Ljava/util/Set;

    .line 118
    .line 119
    if-eqz v7, :cond_a

    .line 120
    .line 121
    instance-of v7, v5, Lkotlin/jvm/internal/markers/KMappedMarker;

    .line 122
    .line 123
    if-eqz v7, :cond_8

    .line 124
    .line 125
    instance-of v7, v5, Lkotlin/jvm/internal/markers/KMutableSet;

    .line 126
    .line 127
    if-eqz v7, :cond_a

    .line 128
    .line 129
    :cond_8
    move-object v10, v5

    .line 130
    check-cast v10, Ljava/util/Set;

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_9
    move-object v10, v7

    .line 134
    :cond_a
    :goto_7
    if-eqz v10, :cond_b

    .line 135
    .line 136
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->v()Landroidx/compose/runtime/tooling/CompositionData;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    iput-boolean v9, v4, Landroidx/compose/runtime/GapComposer;->q:Z

    .line 144
    .line 145
    iput-boolean v9, v4, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 146
    .line 147
    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 148
    .line 149
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c()V

    .line 150
    .line 151
    .line 152
    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->H:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->c()V

    .line 155
    .line 156
    .line 157
    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 158
    .line 159
    iget-object v7, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 160
    .line 161
    iget-object v8, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->s:Ljava/util/HashMap;

    .line 162
    .line 163
    iput-object v8, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->e:Ljava/util/HashMap;

    .line 164
    .line 165
    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->t:Landroidx/collection/MutableIntObjectMap;

    .line 166
    .line 167
    iput-object v7, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->f:Landroidx/collection/MutableIntObjectMap;

    .line 168
    .line 169
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 182
    .line 183
    if-nez v5, :cond_c

    .line 184
    .line 185
    if-ne v7, v8, :cond_d

    .line 186
    .line 187
    :cond_c
    new-instance v7, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-direct {v7, v5}, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;-><init>(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_d
    check-cast v7, Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;

    .line 200
    .line 201
    sget-object v5, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ComposeViewContext;->d()Landroidx/lifecycle/LifecycleOwner;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    sget-object v5, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ComposeViewContext;->g()V

    .line 214
    .line 215
    .line 216
    iget-object v9, v0, Landroidx/compose/ui/platform/ComposeViewContext;->e:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 217
    .line 218
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 226
    .line 227
    iget-object v9, v0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ImageVectorCache;

    .line 228
    .line 229
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 234
    .line 235
    iget-object v9, v0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroidx/compose/ui/res/ResourceIdCache;

    .line 236
    .line 237
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->v:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 242
    .line 243
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v15

    .line 251
    if-nez v9, :cond_e

    .line 252
    .line 253
    if-ne v15, v8, :cond_f

    .line 254
    .line 255
    :cond_e
    new-instance v15, Lc;

    .line 256
    .line 257
    const/16 v9, 0xc

    .line 258
    .line 259
    invoke-direct {v15, v9, v0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_f
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 266
    .line 267
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/ProvidedValue;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 272
    .line 273
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 278
    .line 279
    .line 280
    move-result-object v16

    .line 281
    sget-object v5, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 282
    .line 283
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 284
    .line 285
    .line 286
    move-result-object v17

    .line 287
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 288
    .line 289
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getConfiguration()Landroid/content/res/Configuration;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 294
    .line 295
    .line 296
    move-result-object v18

    .line 297
    sget-object v5, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 298
    .line 299
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    if-nez v9, :cond_10

    .line 308
    .line 309
    if-ne v10, v8, :cond_11

    .line 310
    .line 311
    :cond_10
    new-instance v10, Lm0;

    .line 312
    .line 313
    const/4 v9, 0x3

    .line 314
    invoke-direct {v10, v1, v9}, Lm0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_11
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 321
    .line 322
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/ProvidedValue;

    .line 323
    .line 324
    .line 325
    move-result-object v19

    .line 326
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 327
    .line 328
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 333
    .line 334
    .line 335
    move-result-object v20

    .line 336
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->x:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 337
    .line 338
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v10

    .line 346
    if-nez v9, :cond_12

    .line 347
    .line 348
    if-ne v10, v8, :cond_13

    .line 349
    .line 350
    :cond_12
    new-instance v10, Lm0;

    .line 351
    .line 352
    invoke-direct {v10, v1, v6}, Lm0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_13
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 359
    .line 360
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/ProvidedValue;

    .line 361
    .line 362
    .line 363
    move-result-object v21

    .line 364
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 365
    .line 366
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 371
    .line 372
    .line 373
    move-result-object v22

    .line 374
    sget-object v5, Landroidx/compose/runtime/HostDefaultProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 375
    .line 376
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 377
    .line 378
    .line 379
    move-result-object v23

    .line 380
    filled-new-array/range {v11 .. v23}, [Landroidx/compose/runtime/ProvidedValue;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    new-instance v6, Li6;

    .line 385
    .line 386
    invoke-direct {v6, v1, v0, v2}, Li6;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/ComposeViewContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 387
    .line 388
    .line 389
    const v7, 0x4e86c15f

    .line 390
    .line 391
    .line 392
    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    const/16 v7, 0x38

    .line 397
    .line 398
    invoke-static {v5, v6, v4, v7}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_14
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 403
    .line 404
    .line 405
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    if-eqz v4, :cond_15

    .line 410
    .line 411
    new-instance v5, Li6;

    .line 412
    .line 413
    invoke-direct {v5, v0, v1, v2, v3}, Li6;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 414
    .line 415
    .line 416
    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 417
    .line 418
    :cond_15
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:I

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "ComposeViewContext"

    .line 10
    .line 11
    const-string v1, "View count has dropped below 0"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:I

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->x:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final c()Landroidx/compose/runtime/CompositionContext;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ComposeViewContext;->g()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->c:Landroidx/compose/runtime/CompositionContext;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final d()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ComposeViewContext;->g()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->v:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Landroidx/compose/ui/platform/ComposeViewContext;->x:Landroidx/compose/ui/platform/ComposeViewContext$callback$1;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/ComposeViewContext;->f(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/ui/platform/LazyWindowInfo;->a:Landroidx/compose/runtime/MutableState;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final f(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->i:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ImageVectorCache;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/compose/ui/res/ImageVectorCache;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget v2, v2, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->b:I

    .line 48
    .line 49
    invoke-static {v0, v2}, Landroid/content/res/Configuration;->needNewResources(II)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->j:Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    new-instance v2, Landroid/content/res/Configuration;

    .line 62
    .line 63
    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroidx/compose/ui/res/ResourceIdCache;

    .line 70
    .line 71
    monitor-enter p1

    .line 72
    :try_start_0
    iget-object v1, p1, Landroidx/compose/ui/res/ResourceIdCache;->a:Landroidx/collection/MutableIntObjectMap;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/collection/MutableIntObjectMap;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p1

    .line 78
    const/high16 p1, 0x10000000

    .line 79
    .line 80
    and-int/2addr p1, v0

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->p:Landroidx/compose/runtime/MutableState;

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {p1, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    const p1, 0x2fff1d80

    .line 99
    .line 100
    .line 101
    and-int/2addr p1, v0

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit p1

    .line 112
    throw p0

    .line 113
    :cond_4
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->c:Landroidx/compose/runtime/CompositionContext;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->a(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    instance-of v3, v2, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    check-cast v2, Landroid/view/View;

    .line 32
    .line 33
    invoke-static {v2}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->a(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2}, Landroidx/core/viewtree/ViewTree;->a(Landroid/view/View;)Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->b(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    iput-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->c:Landroidx/compose/runtime/CompositionContext;

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 51
    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    invoke-static {v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->d:Landroidx/lifecycle/LifecycleOwner;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const-string p0, "Composed into a View which doesn\'t propagate ViewTreeLifecycleOwner!"

    .line 64
    .line 65
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->e:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 70
    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    invoke-static {v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iput-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->e:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    const-string p0, "Composed into a View which doesn\'t propagate ViewTreeSavedStateRegistryOwner!"

    .line 83
    .line 84
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 89
    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    invoke-static {v1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 97
    .line 98
    :cond_8
    return-void
.end method
