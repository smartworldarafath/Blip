.class public Landroidx/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;,
        Landroidx/media3/ui/PlayerControlView$SettingsAdapter;,
        Landroidx/media3/ui/PlayerControlView$ComponentListener;,
        Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;,
        Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;,
        Landroidx/media3/ui/PlayerControlView$VisibilityListener;,
        Landroidx/media3/ui/PlayerControlView$TrackInformation;,
        Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;,
        Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$SettingViewHolder;
    }
.end annotation


# static fields
.field public static final Q0:[F


# instance fields
.field public final A:Landroid/widget/PopupWindow;

.field public A0:Z

.field public final B:I

.field public B0:Z

.field public final C:Landroid/widget/ImageView;

.field public C0:Z

.field public final D:Landroid/widget/ImageView;

.field public D0:Z

.field public final E:Landroid/widget/ImageView;

.field public E0:Z

.field public final F:Landroid/view/View;

.field public F0:Z

.field public final G:Landroid/view/View;

.field public G0:I

.field public final H:Landroid/widget/TextView;

.field public H0:Z

.field public final I:Landroid/widget/TextView;

.field public I0:I

.field public final J:Landroid/widget/ImageView;

.field public J0:I

.field public final K:Landroid/widget/ImageView;

.field public K0:[J

.field public final L:Landroid/widget/ImageView;

.field public L0:[Z

.field public final M:Landroid/widget/ImageView;

.field public final M0:[J

.field public final N:Landroid/widget/ImageView;

.field public final N0:[Z

.field public final O:Landroid/widget/ImageView;

.field public O0:J

.field public final P:Landroid/view/View;

.field public P0:Z

.field public final Q:Landroid/view/View;

.field public final R:Landroid/view/View;

.field public final S:Landroid/widget/TextView;

.field public final T:Landroid/widget/TextView;

.field public final U:Landroidx/media3/ui/TimeBar;

.field public final V:Ljava/lang/StringBuilder;

.field public final W:Ljava/util/Formatter;

.field public final a0:Landroidx/media3/common/Timeline$Period;

.field public final b0:Landroidx/media3/common/Timeline$Window;

.field public final c0:Le;

.field public final d0:Landroid/graphics/drawable/Drawable;

.field public final e0:Landroid/graphics/drawable/Drawable;

.field public final f0:Landroid/graphics/drawable/Drawable;

.field public final g0:Landroid/graphics/drawable/Drawable;

.field public final h0:Landroid/graphics/drawable/Drawable;

.field public final i0:Ljava/lang/String;

.field public final j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field public final j0:Ljava/lang/String;

.field public final k:Landroid/content/res/Resources;

.field public final k0:Ljava/lang/String;

.field public final l:Landroid/os/Handler;

.field public final l0:Landroid/graphics/drawable/Drawable;

.field public final m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

.field public final m0:Landroid/graphics/drawable/Drawable;

.field public final n:Ljava/lang/Class;

.field public final n0:F

.field public final o:Ljava/lang/reflect/Method;

.field public final o0:F

.field public final p:Ljava/lang/reflect/Method;

.field public final p0:Ljava/lang/String;

.field public final q:Ljava/lang/Class;

.field public final q0:Ljava/lang/String;

.field public final r:Ljava/lang/reflect/Method;

.field public final r0:Landroid/graphics/drawable/Drawable;

.field public final s:Ljava/lang/reflect/Method;

.field public final s0:Landroid/graphics/drawable/Drawable;

.field public final t:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final t0:Ljava/lang/String;

.field public final u:Landroidx/recyclerview/widget/RecyclerView;

.field public final u0:Ljava/lang/String;

.field public final v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

.field public final v0:Landroid/graphics/drawable/Drawable;

.field public final w:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final w0:Landroid/graphics/drawable/Drawable;

.field public final x:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field public final x0:Ljava/lang/String;

.field public final y:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

.field public final y0:Ljava/lang/String;

.field public final z:Landroidx/media3/ui/DefaultTrackNameProvider;

.field public z0:Landroidx/media3/common/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.ui"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "isScrubbingModeEnabled"

    .line 6
    .line 7
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    const-string v4, "setScrubbingModeEnabled"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-direct {v0, v1, v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    iput-boolean v7, v0, Landroidx/media3/ui/PlayerControlView;->D0:Z

    .line 18
    .line 19
    const/16 v8, 0x1388

    .line 20
    .line 21
    iput v8, v0, Landroidx/media3/ui/PlayerControlView;->G0:I

    .line 22
    .line 23
    iput v6, v0, Landroidx/media3/ui/PlayerControlView;->J0:I

    .line 24
    .line 25
    const/16 v8, 0xc8

    .line 26
    .line 27
    iput v8, v0, Landroidx/media3/ui/PlayerControlView;->I0:I

    .line 28
    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    const v9, 0x7f0d0030

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const/high16 v8, 0x40000

    .line 40
    .line 41
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 42
    .line 43
    .line 44
    new-instance v8, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 45
    .line 46
    invoke-direct {v8, v0}, Landroidx/media3/ui/PlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 47
    .line 48
    .line 49
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 50
    .line 51
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    new-instance v8, Landroidx/media3/common/Timeline$Period;

    .line 59
    .line 60
    invoke-direct {v8}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->a0:Landroidx/media3/common/Timeline$Period;

    .line 64
    .line 65
    new-instance v8, Landroidx/media3/common/Timeline$Window;

    .line 66
    .line 67
    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->b0:Landroidx/media3/common/Timeline$Window;

    .line 71
    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->V:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    new-instance v9, Ljava/util/Formatter;

    .line 80
    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-direct {v9, v8, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 86
    .line 87
    .line 88
    iput-object v9, v0, Landroidx/media3/ui/PlayerControlView;->W:Ljava/util/Formatter;

    .line 89
    .line 90
    new-array v8, v6, [J

    .line 91
    .line 92
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 93
    .line 94
    new-array v8, v6, [Z

    .line 95
    .line 96
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 97
    .line 98
    new-array v8, v6, [J

    .line 99
    .line 100
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->M0:[J

    .line 101
    .line 102
    new-array v8, v6, [Z

    .line 103
    .line 104
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->N0:[Z

    .line 105
    .line 106
    new-instance v8, Le;

    .line 107
    .line 108
    const/16 v9, 0xc

    .line 109
    .line 110
    invoke-direct {v8, v9, v0}, Le;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->c0:Le;

    .line 114
    .line 115
    :try_start_0
    const-class v8, Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .line 117
    :try_start_1
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v8, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 122
    .line 123
    .line 124
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :try_start_2
    invoke-virtual {v8, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 126
    .line 127
    .line 128
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-object v9, v5

    .line 131
    goto :goto_0

    .line 132
    :catch_1
    move-object v8, v5

    .line 133
    move-object v9, v8

    .line 134
    :catch_2
    :goto_0
    move-object v10, v5

    .line 135
    :goto_1
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->n:Ljava/lang/Class;

    .line 136
    .line 137
    iput-object v9, v0, Landroidx/media3/ui/PlayerControlView;->o:Ljava/lang/reflect/Method;

    .line 138
    .line 139
    iput-object v10, v0, Landroidx/media3/ui/PlayerControlView;->p:Ljava/lang/reflect/Method;

    .line 140
    .line 141
    :try_start_3
    const-string v8, "androidx.media3.transformer.CompositionPlayer"

    .line 142
    .line 143
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    .line 147
    :try_start_4
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v8, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    .line 155
    :try_start_5
    invoke-virtual {v8, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    .line 159
    goto :goto_3

    .line 160
    :catch_3
    move-object v3, v5

    .line 161
    goto :goto_2

    .line 162
    :catch_4
    move-object v3, v5

    .line 163
    move-object v8, v3

    .line 164
    :catch_5
    :goto_2
    move-object v2, v5

    .line 165
    :goto_3
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->q:Ljava/lang/Class;

    .line 166
    .line 167
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->r:Ljava/lang/reflect/Method;

    .line 168
    .line 169
    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->s:Ljava/lang/reflect/Method;

    .line 170
    .line 171
    const v2, 0x7f0a00b8

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->S:Landroid/widget/TextView;

    .line 181
    .line 182
    const v2, 0x7f0a00cd

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Landroid/widget/TextView;

    .line 190
    .line 191
    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/widget/TextView;

    .line 192
    .line 193
    const v2, 0x7f0a00d9

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .line 202
    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/widget/ImageView;

    .line 203
    .line 204
    if-eqz v2, :cond_0

    .line 205
    .line 206
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    :cond_0
    const v3, 0x7f0a00be

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Landroid/widget/ImageView;

    .line 219
    .line 220
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->N:Landroid/widget/ImageView;

    .line 221
    .line 222
    new-instance v4, Lrd;

    .line 223
    .line 224
    invoke-direct {v4, v0}, Lrd;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 225
    .line 226
    .line 227
    const/16 v8, 0x8

    .line 228
    .line 229
    if-nez v3, :cond_1

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    :goto_4
    const v3, 0x7f0a00c4

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Landroid/widget/ImageView;

    .line 246
    .line 247
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->O:Landroid/widget/ImageView;

    .line 248
    .line 249
    new-instance v4, Lrd;

    .line 250
    .line 251
    invoke-direct {v4, v0}, Lrd;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 252
    .line 253
    .line 254
    if-nez v3, :cond_2

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    :goto_5
    const v3, 0x7f0a00d4

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->P:Landroid/view/View;

    .line 271
    .line 272
    if-eqz v3, :cond_3

    .line 273
    .line 274
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 275
    .line 276
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    :cond_3
    const v3, 0x7f0a00cc

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->Q:Landroid/view/View;

    .line 287
    .line 288
    if-eqz v3, :cond_4

    .line 289
    .line 290
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 291
    .line 292
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    :cond_4
    const v3, 0x7f0a00ae

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->R:Landroid/view/View;

    .line 303
    .line 304
    if-eqz v3, :cond_5

    .line 305
    .line 306
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 307
    .line 308
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    :cond_5
    const v3, 0x7f0a00cf

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    check-cast v4, Landroidx/media3/ui/TimeBar;

    .line 319
    .line 320
    const v8, 0x7f0a00d0

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    if-eqz v4, :cond_6

    .line 328
    .line 329
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_6
    if-eqz v8, :cond_7

    .line 333
    .line 334
    new-instance v4, Landroidx/media3/ui/DefaultTimeBar;

    .line 335
    .line 336
    invoke-direct {v4, v1}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    check-cast v3, Landroid/view/ViewGroup;

    .line 354
    .line 355
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 363
    .line 364
    .line 365
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_7
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 369
    .line 370
    :goto_6
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 371
    .line 372
    if-eqz v3, :cond_8

    .line 373
    .line 374
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 375
    .line 376
    check-cast v3, Landroidx/media3/ui/DefaultTimeBar;

    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    iget-object v3, v3, Landroidx/media3/ui/DefaultTimeBar;->G:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 382
    .line 383
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    :cond_8
    invoke-static {v5}, Landroidx/media3/common/util/Util;->k(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->l:Landroid/os/Handler;

    .line 391
    .line 392
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/content/res/Resources;

    .line 397
    .line 398
    const v4, 0x7f0a00cb

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Landroid/widget/ImageView;

    .line 406
    .line 407
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    .line 408
    .line 409
    if-eqz v4, :cond_9

    .line 410
    .line 411
    iget-object v8, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 412
    .line 413
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    :cond_9
    const v4, 0x7f0a00ce

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    check-cast v4, Landroid/widget/ImageView;

    .line 424
    .line 425
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    .line 426
    .line 427
    if-eqz v4, :cond_a

    .line 428
    .line 429
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    const v9, 0x7f0800ba

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v9, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    .line 442
    .line 443
    iget-object v8, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 444
    .line 445
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    .line 447
    .line 448
    :cond_a
    const v8, 0x7f0a00c5

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    check-cast v8, Landroid/widget/ImageView;

    .line 456
    .line 457
    iput-object v8, v0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    .line 458
    .line 459
    if-eqz v8, :cond_b

    .line 460
    .line 461
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    const v10, 0x7f0800b5

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v10, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    .line 474
    .line 475
    iget-object v9, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 476
    .line 477
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    .line 479
    .line 480
    :cond_b
    const v9, 0x7f090001

    .line 481
    .line 482
    .line 483
    invoke-static {v1, v9}, Landroidx/core/content/res/ResourcesCompat;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    const v10, 0x7f0a00d2

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    check-cast v10, Landroid/widget/ImageView;

    .line 495
    .line 496
    const v11, 0x7f0a00d3

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    check-cast v11, Landroid/widget/TextView;

    .line 504
    .line 505
    if-eqz v10, :cond_c

    .line 506
    .line 507
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    const v12, 0x7f0800c3

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v12, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 515
    .line 516
    .line 517
    move-result-object v11

    .line 518
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    .line 520
    .line 521
    iput-object v10, v0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 522
    .line 523
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroid/widget/TextView;

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_c
    if-eqz v11, :cond_d

    .line 527
    .line 528
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 529
    .line 530
    .line 531
    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroid/widget/TextView;

    .line 532
    .line 533
    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 534
    .line 535
    goto :goto_7

    .line 536
    :cond_d
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroid/widget/TextView;

    .line 537
    .line 538
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 539
    .line 540
    :goto_7
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 541
    .line 542
    if-eqz v10, :cond_e

    .line 543
    .line 544
    iget-object v11, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 545
    .line 546
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    .line 548
    .line 549
    :cond_e
    const v10, 0x7f0a00bc

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    check-cast v10, Landroid/widget/ImageView;

    .line 557
    .line 558
    const v11, 0x7f0a00bd

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 562
    .line 563
    .line 564
    move-result-object v11

    .line 565
    check-cast v11, Landroid/widget/TextView;

    .line 566
    .line 567
    if-eqz v10, :cond_f

    .line 568
    .line 569
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 570
    .line 571
    .line 572
    move-result-object v9

    .line 573
    const v11, 0x7f0800c2

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3, v11, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 577
    .line 578
    .line 579
    move-result-object v9

    .line 580
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 581
    .line 582
    .line 583
    iput-object v10, v0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 584
    .line 585
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/widget/TextView;

    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_f
    if-eqz v11, :cond_10

    .line 589
    .line 590
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 591
    .line 592
    .line 593
    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/widget/TextView;

    .line 594
    .line 595
    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 596
    .line 597
    goto :goto_8

    .line 598
    :cond_10
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/widget/TextView;

    .line 599
    .line 600
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 601
    .line 602
    :goto_8
    iget-object v9, v0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 603
    .line 604
    if-eqz v9, :cond_11

    .line 605
    .line 606
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 607
    .line 608
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    .line 610
    .line 611
    :cond_11
    const v9, 0x7f0a00d1

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    check-cast v9, Landroid/widget/ImageView;

    .line 619
    .line 620
    iput-object v9, v0, Landroidx/media3/ui/PlayerControlView;->J:Landroid/widget/ImageView;

    .line 621
    .line 622
    if-eqz v9, :cond_12

    .line 623
    .line 624
    iget-object v10, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 625
    .line 626
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .line 628
    .line 629
    :cond_12
    const v10, 0x7f0a00d6

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 633
    .line 634
    .line 635
    move-result-object v10

    .line 636
    check-cast v10, Landroid/widget/ImageView;

    .line 637
    .line 638
    iput-object v10, v0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/ImageView;

    .line 639
    .line 640
    if-eqz v10, :cond_13

    .line 641
    .line 642
    iget-object v11, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 643
    .line 644
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    .line 646
    .line 647
    :cond_13
    const v11, 0x7f0b0009

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 651
    .line 652
    .line 653
    move-result v11

    .line 654
    int-to-float v11, v11

    .line 655
    const/high16 v12, 0x42c80000    # 100.0f

    .line 656
    .line 657
    div-float/2addr v11, v12

    .line 658
    iput v11, v0, Landroidx/media3/ui/PlayerControlView;->n0:F

    .line 659
    .line 660
    const v11, 0x7f0b0008

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    int-to-float v11, v11

    .line 668
    div-float/2addr v11, v12

    .line 669
    iput v11, v0, Landroidx/media3/ui/PlayerControlView;->o0:F

    .line 670
    .line 671
    const v11, 0x7f0a00df

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 675
    .line 676
    .line 677
    move-result-object v11

    .line 678
    check-cast v11, Landroid/widget/ImageView;

    .line 679
    .line 680
    iput-object v11, v0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/ImageView;

    .line 681
    .line 682
    if-eqz v11, :cond_14

    .line 683
    .line 684
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 685
    .line 686
    .line 687
    move-result-object v12

    .line 688
    const v13, 0x7f0800c7

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3, v13, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0, v11, v6}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 699
    .line 700
    .line 701
    :cond_14
    new-instance v12, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 702
    .line 703
    invoke-direct {v12, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 704
    .line 705
    .line 706
    iput-object v12, v0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 707
    .line 708
    iput-boolean v7, v12, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    .line 709
    .line 710
    const v13, 0x7f110052

    .line 711
    .line 712
    .line 713
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v13

    .line 717
    const v14, 0x7f0800c4

    .line 718
    .line 719
    .line 720
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 721
    .line 722
    .line 723
    move-result-object v15

    .line 724
    invoke-virtual {v3, v14, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 725
    .line 726
    .line 727
    move-result-object v14

    .line 728
    const v15, 0x7f110073

    .line 729
    .line 730
    .line 731
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v15

    .line 735
    filled-new-array {v13, v15}, [Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v13

    .line 739
    const v15, 0x7f0800b0

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    invoke-virtual {v3, v15, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    filled-new-array {v14, v6}, [Landroid/graphics/drawable/Drawable;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    new-instance v14, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 755
    .line 756
    invoke-direct {v14, v0, v13, v6}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 757
    .line 758
    .line 759
    iput-object v14, v0, Landroidx/media3/ui/PlayerControlView;->v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 760
    .line 761
    const v6, 0x7f0700a0

    .line 762
    .line 763
    .line 764
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    iput v6, v0, Landroidx/media3/ui/PlayerControlView;->B:I

    .line 769
    .line 770
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    const v13, 0x7f0d0032

    .line 775
    .line 776
    .line 777
    invoke-virtual {v6, v13, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 782
    .line 783
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 784
    .line 785
    invoke-virtual {v5, v14}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 786
    .line 787
    .line 788
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 789
    .line 790
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 791
    .line 792
    .line 793
    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 797
    .line 798
    .line 799
    new-instance v6, Landroid/widget/PopupWindow;

    .line 800
    .line 801
    const/4 v13, -0x2

    .line 802
    invoke-direct {v6, v5, v13, v13, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 803
    .line 804
    .line 805
    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 806
    .line 807
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 808
    .line 809
    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 810
    .line 811
    .line 812
    iput-boolean v7, v0, Landroidx/media3/ui/PlayerControlView;->P0:Z

    .line 813
    .line 814
    new-instance v5, Landroidx/media3/ui/DefaultTrackNameProvider;

    .line 815
    .line 816
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    invoke-direct {v5, v6}, Landroidx/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    .line 821
    .line 822
    .line 823
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->z:Landroidx/media3/ui/DefaultTrackNameProvider;

    .line 824
    .line 825
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    const v6, 0x7f0800c6

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->r0:Landroid/graphics/drawable/Drawable;

    .line 837
    .line 838
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    const v6, 0x7f0800c5

    .line 843
    .line 844
    .line 845
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->s0:Landroid/graphics/drawable/Drawable;

    .line 850
    .line 851
    const v5, 0x7f110047

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v5

    .line 858
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->t0:Ljava/lang/String;

    .line 859
    .line 860
    const v5, 0x7f110046

    .line 861
    .line 862
    .line 863
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->u0:Ljava/lang/String;

    .line 868
    .line 869
    new-instance v5, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 870
    .line 871
    invoke-direct {v5, v0}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 872
    .line 873
    .line 874
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->x:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 875
    .line 876
    new-instance v5, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 877
    .line 878
    invoke-direct {v5, v0}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 879
    .line 880
    .line 881
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->y:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 882
    .line 883
    new-instance v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 884
    .line 885
    const/high16 v6, 0x7f030000

    .line 886
    .line 887
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v6

    .line 891
    sget-object v13, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 892
    .line 893
    invoke-direct {v5, v0, v6, v13}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    .line 894
    .line 895
    .line 896
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->w:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 897
    .line 898
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 899
    .line 900
    .line 901
    move-result-object v5

    .line 902
    const v6, 0x7f0800b9

    .line 903
    .line 904
    .line 905
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->d0:Landroid/graphics/drawable/Drawable;

    .line 910
    .line 911
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    const v6, 0x7f0800b8

    .line 916
    .line 917
    .line 918
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 919
    .line 920
    .line 921
    move-result-object v5

    .line 922
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->e0:Landroid/graphics/drawable/Drawable;

    .line 923
    .line 924
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 925
    .line 926
    .line 927
    move-result-object v5

    .line 928
    const v6, 0x7f0800b4

    .line 929
    .line 930
    .line 931
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 932
    .line 933
    .line 934
    move-result-object v5

    .line 935
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->v0:Landroid/graphics/drawable/Drawable;

    .line 936
    .line 937
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 938
    .line 939
    .line 940
    move-result-object v5

    .line 941
    const v6, 0x7f0800b3

    .line 942
    .line 943
    .line 944
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 945
    .line 946
    .line 947
    move-result-object v5

    .line 948
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->w0:Landroid/graphics/drawable/Drawable;

    .line 949
    .line 950
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 951
    .line 952
    .line 953
    move-result-object v5

    .line 954
    const v6, 0x7f0800bc

    .line 955
    .line 956
    .line 957
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 958
    .line 959
    .line 960
    move-result-object v5

    .line 961
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->f0:Landroid/graphics/drawable/Drawable;

    .line 962
    .line 963
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    const v6, 0x7f0800bd

    .line 968
    .line 969
    .line 970
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 971
    .line 972
    .line 973
    move-result-object v5

    .line 974
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->g0:Landroid/graphics/drawable/Drawable;

    .line 975
    .line 976
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 977
    .line 978
    .line 979
    move-result-object v5

    .line 980
    const v6, 0x7f0800bb

    .line 981
    .line 982
    .line 983
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 984
    .line 985
    .line 986
    move-result-object v5

    .line 987
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->h0:Landroid/graphics/drawable/Drawable;

    .line 988
    .line 989
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 990
    .line 991
    .line 992
    move-result-object v5

    .line 993
    const v6, 0x7f0800c1

    .line 994
    .line 995
    .line 996
    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->l0:Landroid/graphics/drawable/Drawable;

    .line 1001
    .line 1002
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    const v5, 0x7f0800c0

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v1

    .line 1013
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->m0:Landroid/graphics/drawable/Drawable;

    .line 1014
    .line 1015
    const v1, 0x7f11004b

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->x0:Ljava/lang/String;

    .line 1023
    .line 1024
    const v1, 0x7f11004a

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->y0:Ljava/lang/String;

    .line 1032
    .line 1033
    const v1, 0x7f110055

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->i0:Ljava/lang/String;

    .line 1041
    .line 1042
    const v1, 0x7f110056

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->j0:Ljava/lang/String;

    .line 1050
    .line 1051
    const v1, 0x7f110054

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->k0:Ljava/lang/String;

    .line 1059
    .line 1060
    const v1, 0x7f11005c

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->p0:Ljava/lang/String;

    .line 1068
    .line 1069
    const v1, 0x7f11005b

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->q0:Ljava/lang/String;

    .line 1077
    .line 1078
    const v1, 0x7f0a00b0

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    check-cast v1, Landroid/view/ViewGroup;

    .line 1086
    .line 1087
    invoke-virtual {v12, v1, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1088
    .line 1089
    .line 1090
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 1091
    .line 1092
    invoke-virtual {v12, v1, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 1096
    .line 1097
    invoke-virtual {v12, v1, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v12, v4, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v12, v8, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1104
    .line 1105
    .line 1106
    const/4 v1, 0x0

    .line 1107
    invoke-virtual {v12, v10, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v12, v2, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v12, v11, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1114
    .line 1115
    .line 1116
    iget v2, v0, Landroidx/media3/ui/PlayerControlView;->J0:I

    .line 1117
    .line 1118
    if-eqz v2, :cond_15

    .line 1119
    .line 1120
    move v6, v7

    .line 1121
    goto :goto_9

    .line 1122
    :cond_15
    move v6, v1

    .line 1123
    :goto_9
    invoke-virtual {v12, v9, v6}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 1124
    .line 1125
    .line 1126
    new-instance v1, Lsd;

    .line 1127
    .line 1128
    invoke-direct {v1, v0}, Lsd;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1132
    .line 1133
    .line 1134
    return-void
.end method

.method public static a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->E0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/common/BasePlayer;

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->o()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->b0:Landroidx/media3/common/Timeline$Window;

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    invoke-virtual {v0, v3, v4, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-wide v4, v4, Landroidx/media3/common/Timeline$Window;->k:J

    .line 42
    .line 43
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->N(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    cmp-long v6, p2, v4

    .line 48
    .line 49
    if-gez v6, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 53
    .line 54
    if-ne v3, v6, :cond_1

    .line 55
    .line 56
    move-wide p2, v4

    .line 57
    :goto_1
    invoke-virtual {p1, v3, p2, p3, v2}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    sub-long/2addr p2, v4

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    check-cast p1, Landroidx/media3/common/BasePlayer;

    .line 66
    .line 67
    const/4 v0, 0x5

    .line 68
    invoke-virtual {p1, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->s()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static synthetic b(Landroidx/media3/ui/PlayerControlView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z
    .locals 8

    .line 1
    check-cast p0, Landroidx/media3/common/BasePlayer;

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->o()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-le v0, v2, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x64

    .line 25
    .line 26
    if-le v0, v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v1

    .line 30
    :goto_0
    if-ge v3, v0, :cond_3

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    invoke-virtual {p0, v3, p1, v4, v5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-wide v4, v4, Landroidx/media3/common/Timeline$Window;->k:J

    .line 39
    .line 40
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long v4, v4, v6

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return v2

    .line 54
    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/PlaybackParameters;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    .line 23
    .line 24
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->b:F

    .line 25
    .line 26
    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v1}, Landroidx/media3/common/Player;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/KeyEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    const/16 v4, 0x58

    .line 13
    .line 14
    const/16 v5, 0x57

    .line 15
    .line 16
    const/16 v6, 0x7f

    .line 17
    .line 18
    const/16 v7, 0x7e

    .line 19
    .line 20
    const/16 v8, 0x4f

    .line 21
    .line 22
    const/16 v9, 0x55

    .line 23
    .line 24
    const/16 v10, 0x59

    .line 25
    .line 26
    const/16 v11, 0x5a

    .line 27
    .line 28
    if-eq v1, v11, :cond_0

    .line 29
    .line 30
    if-eq v1, v10, :cond_0

    .line 31
    .line 32
    if-eq v1, v9, :cond_0

    .line 33
    .line 34
    if-eq v1, v8, :cond_0

    .line 35
    .line 36
    if-eq v1, v7, :cond_0

    .line 37
    .line 38
    if-eq v1, v6, :cond_0

    .line 39
    .line 40
    if-eq v1, v5, :cond_0

    .line 41
    .line 42
    if-ne v1, v4, :cond_c

    .line 43
    .line 44
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    const/4 v13, 0x1

    .line 49
    if-nez v12, :cond_b

    .line 50
    .line 51
    const-wide/16 v14, 0x0

    .line 52
    .line 53
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    if-ne v1, v11, :cond_2

    .line 59
    .line 60
    invoke-interface {v2}, Landroidx/media3/common/Player;->y()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x4

    .line 65
    if-eq v0, v1, :cond_b

    .line 66
    .line 67
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 68
    .line 69
    const/16 v0, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_b

    .line 76
    .line 77
    invoke-interface {v2}, Landroidx/media3/common/Player;->v()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-interface {v2}, Landroidx/media3/common/Player;->S()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    add-long/2addr v5, v3

    .line 86
    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    cmp-long v1, v3, v16

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    :cond_1
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    invoke-virtual {v2, v0, v3, v4}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_2
    if-ne v1, v10, :cond_4

    .line 108
    .line 109
    move-object v10, v2

    .line 110
    check-cast v10, Landroidx/media3/common/BasePlayer;

    .line 111
    .line 112
    const/16 v11, 0xb

    .line 113
    .line 114
    invoke-virtual {v10, v11}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_4

    .line 119
    .line 120
    invoke-interface {v10}, Landroidx/media3/common/Player;->T()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    neg-long v0, v0

    .line 125
    invoke-interface {v10}, Landroidx/media3/common/Player;->S()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    add-long/2addr v2, v0

    .line 130
    invoke-interface {v10}, Landroidx/media3/common/Player;->getDuration()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    cmp-long v4, v0, v16

    .line 135
    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    :cond_3
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    invoke-virtual {v10, v11, v0, v1}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-nez v10, :cond_b

    .line 155
    .line 156
    if-eq v1, v8, :cond_9

    .line 157
    .line 158
    if-eq v1, v9, :cond_9

    .line 159
    .line 160
    if-eq v1, v5, :cond_8

    .line 161
    .line 162
    if-eq v1, v4, :cond_7

    .line 163
    .line 164
    if-eq v1, v7, :cond_6

    .line 165
    .line 166
    if-eq v1, v6, :cond_5

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_5
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 170
    .line 171
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 172
    .line 173
    invoke-virtual {v2, v13}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->u(Z)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_6
    invoke-static {v2}, Landroidx/media3/common/util/Util;->x(Landroidx/media3/common/Player;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_7
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 188
    .line 189
    const/4 v0, 0x7

    .line 190
    invoke-virtual {v2, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_b

    .line 195
    .line 196
    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->b0()V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_8
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 201
    .line 202
    const/16 v0, 0x9

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    invoke-virtual {v2}, Landroidx/media3/common/BasePlayer;->a0()V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_9
    iget-boolean v0, v0, Landroidx/media3/ui/PlayerControlView;->D0:Z

    .line 215
    .line 216
    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->L(Landroidx/media3/common/Player;Z)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_a

    .line 221
    .line 222
    invoke-static {v2}, Landroidx/media3/common/util/Util;->x(Landroidx/media3/common/Player;)Z

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_a
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 227
    .line 228
    invoke-virtual {v2, v13}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->u(Z)V

    .line 235
    .line 236
    .line 237
    :cond_b
    :goto_0
    return v13

    .line 238
    :cond_c
    return v3
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->d(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->u()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->P0:Z

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->P0:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->B:I

    .line 30
    .line 31
    sub-int/2addr v0, p0

    .line 32
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    neg-int v1, v1

    .line 37
    sub-int/2addr v1, p0

    .line 38
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final f(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-ge v3, v4, :cond_4

    .line 15
    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/media3/common/Tracks$Group;

    .line 21
    .line 22
    iget-object v5, v4, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    .line 23
    .line 24
    iget v5, v5, Landroidx/media3/common/TrackGroup;->c:I

    .line 25
    .line 26
    if-eq v5, p2, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    move v5, v2

    .line 30
    :goto_1
    iget v6, v4, Landroidx/media3/common/Tracks$Group;->a:I

    .line 31
    .line 32
    if-ge v5, v6, :cond_3

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->a(I)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v6, v4, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    .line 42
    .line 43
    iget-object v6, v6, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 44
    .line 45
    aget-object v6, v6, v5

    .line 46
    .line 47
    iget v7, v6, Landroidx/media3/common/Format;->e:I

    .line 48
    .line 49
    and-int/lit8 v7, v7, 0x2

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroidx/media3/ui/DefaultTrackNameProvider;

    .line 55
    .line 56
    invoke-virtual {v7, v6}, Landroidx/media3/ui/DefaultTrackNameProvider;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 61
    .line 62
    invoke-direct {v7, p1, v3, v5, v6}, Landroidx/media3/ui/PlayerControlView$TrackInformation;-><init>(Landroidx/media3/common/Tracks;IILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->n:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->o:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRepeatToggleModes()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->J0:I

    .line 2
    .line 3
    return p0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getShowSubtitleButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getShowTimeoutMs()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->G0:I

    .line 2
    .line 3
    return p0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final h(Landroidx/media3/common/Player;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->q:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final i(Landroidx/media3/common/Player;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->n:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final k(Landroidx/media3/common/Player;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/common/Player;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->p:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/common/Player;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->s:Ljava/lang/reflect/Method;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p0, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    :cond_1
    const/4 p0, 0x1

    .line 55
    return p0

    .line 56
    :cond_2
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final l()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->q()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->t()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->x()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->r()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->w()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final n(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->n0:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->o0:F

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->A0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->A0:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->y0:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w0:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->x0:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->v0:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->N:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->O:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->y:Landroidx/media3/ui/f;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->m()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->y:Landroidx/media3/ui/f;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->c0:Le;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sub-int/2addr p4, p2

    .line 11
    sub-int/2addr p5, p3

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->C0:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->b0:Landroidx/media3/common/Timeline$Window;

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->c(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x5

    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_0
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 48
    .line 49
    const/4 v2, 0x7

    .line 50
    invoke-virtual {v0, v2}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/16 v3, 0xb

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/16 v4, 0xc

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/16 v5, 0x9

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v1, 0x0

    .line 74
    move v0, v1

    .line 75
    move v2, v0

    .line 76
    move v3, v2

    .line 77
    move v4, v3

    .line 78
    :goto_1
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/content/res/Resources;

    .line 79
    .line 80
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 81
    .line 82
    const-wide/16 v7, 0x3e8

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    iget-object v9, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 87
    .line 88
    if-eqz v9, :cond_3

    .line 89
    .line 90
    invoke-interface {v9}, Landroidx/media3/common/Player;->T()J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const-wide/16 v9, 0x1388

    .line 96
    .line 97
    :goto_2
    div-long/2addr v9, v7

    .line 98
    long-to-int v9, v9

    .line 99
    iget-object v10, p0, Landroidx/media3/ui/PlayerControlView;->I:Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v10, :cond_4

    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    if-eqz v6, :cond_5

    .line 111
    .line 112
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const v11, 0x7f0f0001

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object v9, p0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 131
    .line 132
    if-eqz v4, :cond_8

    .line 133
    .line 134
    iget-object v10, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 135
    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    invoke-interface {v10}, Landroidx/media3/common/Player;->v()J

    .line 139
    .line 140
    .line 141
    move-result-wide v10

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    const-wide/16 v10, 0x3a98

    .line 144
    .line 145
    :goto_3
    div-long/2addr v10, v7

    .line 146
    long-to-int v7, v10

    .line 147
    iget-object v8, p0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/widget/TextView;

    .line 148
    .line 149
    if-eqz v8, :cond_7

    .line 150
    .line 151
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    if-eqz v9, :cond_8

    .line 159
    .line 160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const/high16 v10, 0x7f0f0000

    .line 169
    .line 170
    invoke-virtual {v5, v10, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v9, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    .line 178
    .line 179
    invoke-virtual {p0, v5, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v6, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v9, v4}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 194
    .line 195
    if-eqz p0, :cond_9

    .line 196
    .line 197
    invoke-interface {p0, v1}, Landroidx/media3/ui/TimeBar;->setEnabled(Z)V

    .line 198
    .line 199
    .line 200
    :cond_9
    :goto_4
    return-void
.end method

.method public final q()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_b

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerControlView;->D0:Z

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->L(Landroidx/media3/common/Player;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->d0:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->e0:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const v1, 0x7f110051

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const v1, 0x7f110050

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/content/res/Resources;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_7

    .line 59
    :cond_3
    invoke-interface {v1}, Landroidx/media3/common/Player;->y()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 64
    .line 65
    const/16 v4, 0x10

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    invoke-interface {v1}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-interface {v1}, Landroidx/media3/common/Player;->D()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    iget-object v7, v1, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 91
    .line 92
    const-wide/16 v8, 0x0

    .line 93
    .line 94
    invoke-virtual {v4, v6, v7, v8, v9}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 99
    .line 100
    :goto_2
    if-eqz v4, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    move v4, v2

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    :goto_3
    move v4, v5

    .line 106
    :goto_4
    invoke-virtual {v1, v5}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-ne v3, v5, :cond_7

    .line 111
    .line 112
    const/4 v7, 0x2

    .line 113
    invoke-virtual {v1, v7}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_7

    .line 118
    .line 119
    move v7, v5

    .line 120
    goto :goto_5

    .line 121
    :cond_7
    move v7, v2

    .line 122
    :goto_5
    const/4 v8, 0x4

    .line 123
    if-ne v3, v8, :cond_8

    .line 124
    .line 125
    invoke-virtual {v1, v8}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    move v1, v5

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    move v1, v2

    .line 134
    :goto_6
    if-eqz v4, :cond_a

    .line 135
    .line 136
    if-nez v6, :cond_9

    .line 137
    .line 138
    if-nez v7, :cond_9

    .line 139
    .line 140
    if-eqz v1, :cond_a

    .line 141
    .line 142
    :cond_9
    move v2, v5

    .line 143
    :cond_a
    :goto_7
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 144
    .line 145
    .line 146
    :cond_b
    :goto_8
    return-void
.end method

.method public final r()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/PlaybackParameters;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 14
    .line 15
    .line 16
    move v3, v1

    .line 17
    move v4, v3

    .line 18
    :goto_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 19
    .line 20
    iget-object v6, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->e:[F

    .line 21
    .line 22
    array-length v7, v6

    .line 23
    if-ge v3, v7, :cond_2

    .line 24
    .line 25
    aget v5, v6, v3

    .line 26
    .line 27
    sub-float v5, v0, v5

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    cmpg-float v6, v5, v2

    .line 34
    .line 35
    if-gez v6, :cond_1

    .line 36
    .line 37
    move v4, v3

    .line 38
    move v2, v5

    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iput v4, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->f:I

    .line 43
    .line 44
    iget-object v0, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->d:[Ljava/lang/String;

    .line 45
    .line 46
    aget-object v0, v0, v4

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 49
    .line 50
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e:[Ljava/lang/String;

    .line 51
    .line 52
    aput-object v0, v3, v1

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e(I)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    :cond_3
    move v1, v0

    .line 68
    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->P:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final s()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    move-object v2, v0

    .line 20
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->O0:J

    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/media3/common/Player;->w()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    add-long/2addr v3, v1

    .line 35
    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->O0:J

    .line 36
    .line 37
    invoke-interface {v0}, Landroidx/media3/common/Player;->P()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    add-long/2addr v5, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerControlView;->F0:Z

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->V:Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->W:Ljava/util/Formatter;

    .line 57
    .line 58
    invoke-static {v2, v7, v3, v4}, Landroidx/media3/common/util/Util;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {v1, v3, v4}, Landroidx/media3/ui/TimeBar;->setPosition(J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/common/Player;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    move-wide v5, v3

    .line 79
    :cond_3
    invoke-interface {v1, v5, v6}, Landroidx/media3/ui/TimeBar;->setBufferedPosition(J)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->c0:Le;

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    move v6, v5

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-interface {v0}, Landroidx/media3/common/Player;->y()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    :goto_1
    const-wide/16 v7, 0x3e8

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    move-object v9, v0

    .line 101
    check-cast v9, Landroidx/media3/common/BasePlayer;

    .line 102
    .line 103
    invoke-virtual {v9}, Landroidx/media3/common/BasePlayer;->X()Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_8

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-interface {v1}, Landroidx/media3/ui/TimeBar;->getPreferredUpdateDelay()J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    goto :goto_2

    .line 116
    :cond_6
    move-wide v5, v7

    .line 117
    :goto_2
    rem-long/2addr v3, v7

    .line 118
    sub-long v3, v7, v3

    .line 119
    .line 120
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    invoke-interface {v0}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/PlaybackParameters;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    cmpl-float v1, v0, v1

    .line 132
    .line 133
    if-lez v1, :cond_7

    .line 134
    .line 135
    long-to-float v1, v3

    .line 136
    div-float/2addr v1, v0

    .line 137
    float-to-long v7, v1

    .line 138
    :cond_7
    move-wide v9, v7

    .line 139
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->I0:I

    .line 140
    .line 141
    int-to-long v11, v0

    .line 142
    const-wide/16 v13, 0x3e8

    .line 143
    .line 144
    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_8
    const/4 v0, 0x4

    .line 153
    if-eq v6, v0, :cond_9

    .line 154
    .line 155
    if-eq v6, v5, :cond_9

    .line 156
    .line 157
    invoke-virtual {p0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_3
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    .line 4
    .line 5
    return-void
.end method

.method public setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V
    .locals 3

    .line 1
    const v0, 0x7f0a00c2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Landroidx/media3/common/ViewProvider;->getView()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v2, Landroidx/media3/ui/PlayerControlView$1;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0, v1}, Landroidx/media3/ui/PlayerControlView$1;-><init>(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->l:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v0, Lu3;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {v0, v1, p0}, Lu3;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lu3;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const-string p0, "The media route button placeholder has no parent view."

    .line 51
    .line 52
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string p0, "The media route button placeholder is missing."

    .line 57
    .line 58
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    const/16 v3, 0x8

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->N:Landroid/widget/ImageView;

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_1
    if-eqz p1, :cond_3

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_3
    move v1, v0

    .line 28
    :goto_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->O:Landroid/widget/ImageView;

    .line 29
    .line 30
    if-nez p0, :cond_4

    .line 31
    .line 32
    return-void

    .line 33
    :cond_4
    if-eqz v1, :cond_5

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/media3/common/Player;->L()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    :cond_1
    move v2, v3

    .line 32
    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 36
    .line 37
    if-ne v0, p1, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->B(Landroidx/media3/common/Player$Listener;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->H(Landroidx/media3/common/Player$Listener;)V

    .line 52
    .line 53
    .line 54
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->m()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->J0:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/media3/common/Player;->J()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->E(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x2

    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    if-ne v0, v3, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 41
    .line 42
    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->E(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-ne p1, v3, :cond_2

    .line 47
    .line 48
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 51
    .line 52
    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->E(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 56
    .line 57
    move v1, v2

    .line 58
    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->J:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->t()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->C0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->w()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->D0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->G0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->g(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->I0:I

    .line 10
    .line 11
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->H0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->J:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->J0:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->i0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->f0:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    const/16 v5, 0xf

    .line 34
    .line 35
    move-object v6, v1

    .line 36
    check-cast v6, Landroidx/media3/common/BasePlayer;

    .line 37
    .line 38
    invoke-virtual {v6, v5}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Landroidx/media3/common/Player;->J()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    if-eq v1, v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    if-eq v1, v2, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->h0:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->k0:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->g0:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_7
    :goto_1
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v2, p0, Landroidx/media3/ui/PlayerControlView;->B:I

    .line 12
    .line 13
    mul-int/lit8 v3, v2, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    mul-int/lit8 v2, v2, 0x2

    .line 34
    .line 35
    sub-int/2addr p0, v2

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->B0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->q0:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->m0:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    const/16 v5, 0xe

    .line 38
    .line 39
    move-object v6, v1

    .line 40
    check-cast v6, Landroidx/media3/common/BasePlayer;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v3, 0x1

    .line 50
    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Landroidx/media3/common/Player;->N()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->l0:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Landroidx/media3/common/Player;->N()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->p0:Ljava/lang/String;

    .line 71
    .line 72
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->C0:Z

    .line 9
    .line 10
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->b0:Landroidx/media3/common/Timeline$Window;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-static {v1, v3}, Landroidx/media3/ui/PlayerControlView;->c(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move v2, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v2, v4

    .line 25
    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->E0:Z

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    iput-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->O0:J

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 33
    .line 34
    const/16 v8, 0x11

    .line 35
    .line 36
    invoke-virtual {v2, v8}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-eqz v8, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sget-object v8, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->p()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_11

    .line 54
    .line 55
    invoke-interface {v1}, Landroidx/media3/common/Player;->D()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->E0:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    move v9, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v9, v1

    .line 66
    :goto_2
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->o()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int/2addr v2, v5

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move v2, v1

    .line 75
    :goto_3
    move v14, v4

    .line 76
    move-wide v12, v6

    .line 77
    :goto_4
    if-gt v9, v2, :cond_6

    .line 78
    .line 79
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    if-ne v9, v1, :cond_5

    .line 85
    .line 86
    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->N(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    iput-wide v10, v0, Landroidx/media3/ui/PlayerControlView;->O0:J

    .line 91
    .line 92
    :cond_5
    invoke-virtual {v8, v9, v3}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 93
    .line 94
    .line 95
    iget-wide v10, v3, Landroidx/media3/common/Timeline$Window;->k:J

    .line 96
    .line 97
    cmp-long v10, v10, v15

    .line 98
    .line 99
    if-nez v10, :cond_7

    .line 100
    .line 101
    iget-boolean v1, v0, Landroidx/media3/ui/PlayerControlView;->E0:Z

    .line 102
    .line 103
    xor-int/2addr v1, v5

    .line 104
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 105
    .line 106
    .line 107
    :cond_6
    move v4, v5

    .line 108
    goto/16 :goto_c

    .line 109
    .line 110
    :cond_7
    iget v10, v3, Landroidx/media3/common/Timeline$Window;->l:I

    .line 111
    .line 112
    :goto_5
    iget v11, v3, Landroidx/media3/common/Timeline$Window;->m:I

    .line 113
    .line 114
    if-gt v10, v11, :cond_10

    .line 115
    .line 116
    iget-object v11, v0, Landroidx/media3/ui/PlayerControlView;->a0:Landroidx/media3/common/Timeline$Period;

    .line 117
    .line 118
    invoke-virtual {v8, v10, v11, v4}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 119
    .line 120
    .line 121
    move-wide/from16 v17, v15

    .line 122
    .line 123
    iget-object v15, v11, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 124
    .line 125
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v15, v11, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 129
    .line 130
    iget v15, v15, Landroidx/media3/common/AdPlaybackState;->a:I

    .line 131
    .line 132
    :goto_6
    if-ge v4, v15, :cond_f

    .line 133
    .line 134
    invoke-virtual {v11, v4}, Landroidx/media3/common/Timeline$Period;->d(I)J

    .line 135
    .line 136
    .line 137
    move-wide/from16 v19, v6

    .line 138
    .line 139
    iget-wide v6, v11, Landroidx/media3/common/Timeline$Period;->e:J

    .line 140
    .line 141
    cmp-long v21, v6, v19

    .line 142
    .line 143
    if-ltz v21, :cond_e

    .line 144
    .line 145
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 146
    .line 147
    move/from16 v22, v1

    .line 148
    .line 149
    array-length v1, v5

    .line 150
    if-ne v14, v1, :cond_9

    .line 151
    .line 152
    array-length v1, v5

    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_7

    .line 157
    :cond_8
    array-length v1, v5

    .line 158
    mul-int/lit8 v1, v1, 0x2

    .line 159
    .line 160
    :goto_7
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 165
    .line 166
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 167
    .line 168
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 173
    .line 174
    :cond_9
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 175
    .line 176
    add-long/2addr v6, v12

    .line 177
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->N(J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v5

    .line 181
    aput-wide v5, v1, v14

    .line 182
    .line 183
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 184
    .line 185
    iget-object v5, v11, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 186
    .line 187
    invoke-virtual {v5, v4}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    iget v6, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:I

    .line 192
    .line 193
    const/4 v7, -0x1

    .line 194
    if-ne v6, v7, :cond_a

    .line 195
    .line 196
    move-object/from16 v23, v1

    .line 197
    .line 198
    move/from16 v24, v4

    .line 199
    .line 200
    const/4 v4, 0x1

    .line 201
    const/16 v21, 0x1

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_a
    const/4 v7, 0x0

    .line 205
    :goto_8
    if-ge v7, v6, :cond_d

    .line 206
    .line 207
    move-object/from16 v23, v1

    .line 208
    .line 209
    iget-object v1, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->e:[I

    .line 210
    .line 211
    aget v1, v1, v7

    .line 212
    .line 213
    move/from16 v24, v4

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    if-ne v1, v4, :cond_b

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    move-object/from16 v1, v23

    .line 224
    .line 225
    move/from16 v4, v24

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_c
    :goto_9
    move/from16 v21, v4

    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_d
    move-object/from16 v23, v1

    .line 232
    .line 233
    move/from16 v24, v4

    .line 234
    .line 235
    const/4 v4, 0x1

    .line 236
    const/16 v21, 0x0

    .line 237
    .line 238
    :goto_a
    xor-int/lit8 v1, v21, 0x1

    .line 239
    .line 240
    aput-boolean v1, v23, v14

    .line 241
    .line 242
    add-int/lit8 v14, v14, 0x1

    .line 243
    .line 244
    goto :goto_b

    .line 245
    :cond_e
    move/from16 v22, v1

    .line 246
    .line 247
    move/from16 v24, v4

    .line 248
    .line 249
    move v4, v5

    .line 250
    :goto_b
    add-int/lit8 v1, v24, 0x1

    .line 251
    .line 252
    move v5, v4

    .line 253
    move-wide/from16 v6, v19

    .line 254
    .line 255
    move v4, v1

    .line 256
    move/from16 v1, v22

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_f
    move/from16 v22, v1

    .line 260
    .line 261
    move v4, v5

    .line 262
    move-wide/from16 v19, v6

    .line 263
    .line 264
    add-int/lit8 v10, v10, 0x1

    .line 265
    .line 266
    move-wide/from16 v15, v17

    .line 267
    .line 268
    const/4 v4, 0x0

    .line 269
    goto/16 :goto_5

    .line 270
    .line 271
    :cond_10
    move/from16 v22, v1

    .line 272
    .line 273
    move v4, v5

    .line 274
    move-wide/from16 v19, v6

    .line 275
    .line 276
    move-wide/from16 v17, v15

    .line 277
    .line 278
    iget-wide v5, v3, Landroidx/media3/common/Timeline$Window;->k:J

    .line 279
    .line 280
    add-long/2addr v12, v5

    .line 281
    add-int/lit8 v9, v9, 0x1

    .line 282
    .line 283
    move v5, v4

    .line 284
    move-wide/from16 v6, v19

    .line 285
    .line 286
    const/4 v4, 0x0

    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :goto_c
    move-wide v6, v12

    .line 290
    goto :goto_f

    .line 291
    :cond_11
    move v4, v5

    .line 292
    move-wide/from16 v19, v6

    .line 293
    .line 294
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    const/16 v1, 0x10

    .line 300
    .line 301
    invoke-virtual {v2, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_13

    .line 306
    .line 307
    invoke-interface {v2}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_12

    .line 316
    .line 317
    move-wide/from16 v1, v17

    .line 318
    .line 319
    move-wide/from16 v5, v19

    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_12
    invoke-interface {v2}, Landroidx/media3/common/Player;->D()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    iget-object v2, v2, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 327
    .line 328
    move-wide/from16 v5, v19

    .line 329
    .line 330
    invoke-virtual {v1, v3, v2, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iget-wide v1, v1, Landroidx/media3/common/Timeline$Window;->k:J

    .line 335
    .line 336
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->N(J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    :goto_d
    cmp-long v3, v1, v17

    .line 341
    .line 342
    if-eqz v3, :cond_14

    .line 343
    .line 344
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 345
    .line 346
    .line 347
    move-result-wide v6

    .line 348
    :goto_e
    const/4 v14, 0x0

    .line 349
    goto :goto_f

    .line 350
    :cond_13
    move-wide/from16 v5, v19

    .line 351
    .line 352
    :cond_14
    move-wide v6, v5

    .line 353
    goto :goto_e

    .line 354
    :goto_f
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->N(J)J

    .line 355
    .line 356
    .line 357
    move-result-wide v1

    .line 358
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->S:Landroid/widget/TextView;

    .line 359
    .line 360
    if-eqz v3, :cond_15

    .line 361
    .line 362
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->V:Ljava/lang/StringBuilder;

    .line 363
    .line 364
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->W:Ljava/util/Formatter;

    .line 365
    .line 366
    invoke-static {v5, v6, v1, v2}, Landroidx/media3/common/util/Util;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    :cond_15
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->U:Landroidx/media3/ui/TimeBar;

    .line 374
    .line 375
    if-eqz v3, :cond_19

    .line 376
    .line 377
    invoke-interface {v3, v1, v2}, Landroidx/media3/ui/TimeBar;->setDuration(J)V

    .line 378
    .line 379
    .line 380
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->M0:[J

    .line 381
    .line 382
    array-length v2, v1

    .line 383
    add-int v5, v14, v2

    .line 384
    .line 385
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 386
    .line 387
    array-length v7, v6

    .line 388
    if-le v5, v7, :cond_16

    .line 389
    .line 390
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 395
    .line 396
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 397
    .line 398
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 403
    .line 404
    :cond_16
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 405
    .line 406
    const/4 v7, 0x0

    .line 407
    invoke-static {v1, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->N0:[Z

    .line 411
    .line 412
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 413
    .line 414
    invoke-static {v1, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->K0:[J

    .line 418
    .line 419
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->L0:[Z

    .line 420
    .line 421
    check-cast v3, Landroidx/media3/ui/DefaultTimeBar;

    .line 422
    .line 423
    if-eqz v5, :cond_18

    .line 424
    .line 425
    if-eqz v1, :cond_17

    .line 426
    .line 427
    if-eqz v2, :cond_17

    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_17
    move v4, v7

    .line 431
    :cond_18
    :goto_10
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 432
    .line 433
    .line 434
    iput v5, v3, Landroidx/media3/ui/DefaultTimeBar;->V:I

    .line 435
    .line 436
    iput-object v1, v3, Landroidx/media3/ui/DefaultTimeBar;->W:[J

    .line 437
    .line 438
    iput-object v2, v3, Landroidx/media3/ui/DefaultTimeBar;->a0:[Z

    .line 439
    .line 440
    invoke-virtual {v3}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 441
    .line 442
    .line 443
    :cond_19
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->s()V

    .line 444
    .line 445
    .line 446
    return-void
.end method

.method public final x()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->d:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->d:Ljava/util/List;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/widget/ImageView;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    const/16 v6, 0x1e

    .line 26
    .line 27
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 28
    .line 29
    invoke-virtual {v1, v6}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_6

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 36
    .line 37
    const/16 v6, 0x1d

    .line 38
    .line 39
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 40
    .line 41
    invoke-virtual {v1, v6}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 50
    .line 51
    invoke-interface {v1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0, v1, v5}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->d:Ljava/util/List;

    .line 60
    .line 61
    iget-object v7, v2, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->f:Landroidx/media3/ui/PlayerControlView;

    .line 62
    .line 63
    iget-object v8, v7, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 64
    .line 65
    iget-object v9, v7, Landroidx/media3/ui/PlayerControlView;->v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-interface {v8}, Landroidx/media3/common/Player;->O()Landroidx/media3/common/TrackSelectionParameters;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_1

    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const v6, 0x7f110072

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v6, v9, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e:[Ljava/lang/String;

    .line 92
    .line 93
    aput-object v2, v6, v5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v2, v8}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->h(Landroidx/media3/common/TrackSelectionParameters;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v6, 0x7f110071

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object v6, v9, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e:[Ljava/lang/String;

    .line 114
    .line 115
    aput-object v2, v6, v5

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move v2, v4

    .line 119
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-ge v2, v7, :cond_4

    .line 124
    .line 125
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    check-cast v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 130
    .line 131
    iget-object v8, v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;->a:Landroidx/media3/common/Tracks$Group;

    .line 132
    .line 133
    iget v10, v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;->b:I

    .line 134
    .line 135
    iget-object v8, v8, Landroidx/media3/common/Tracks$Group;->e:[Z

    .line 136
    .line 137
    aget-boolean v8, v8, v10

    .line 138
    .line 139
    if-eqz v8, :cond_3

    .line 140
    .line 141
    iget-object v2, v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;->c:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v6, v9, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e:[Ljava/lang/String;

    .line 144
    .line 145
    aput-object v2, v6, v5

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    const/4 v2, 0x3

    .line 160
    invoke-virtual {p0, v1, v2}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->h(Ljava/util/List;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->h(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->a()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-lez v0, :cond_7

    .line 180
    .line 181
    move v0, v5

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    move v0, v4

    .line 184
    :goto_3
    invoke-virtual {p0, v3, v0}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e(I)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_8

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e(I)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    :cond_8
    move v4, v5

    .line 202
    :cond_9
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->P:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {p0, v0, v4}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
