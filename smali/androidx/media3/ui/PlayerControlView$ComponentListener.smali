.class final Landroidx/media3/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic j:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Landroidx/media3/common/Player$Events;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x5

    .line 3
    const/16 v2, 0xd

    .line 4
    .line 5
    filled-new-array {v0, v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {p1, v3}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v3, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->q()V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v3, 0x7

    .line 23
    filled-new-array {v0, v1, v3, v2}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->s()V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/16 v0, 0x8

    .line 39
    .line 40
    filled-new-array {v0, v2}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->t()V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/16 v0, 0x9

    .line 56
    .line 57
    filled-new-array {v0, v2}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->v()V

    .line 70
    .line 71
    .line 72
    :cond_3
    new-array v0, v3, [I

    .line 73
    .line 74
    fill-array-data v0, :array_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    .line 86
    .line 87
    .line 88
    :cond_4
    const/16 v0, 0xb

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    filled-new-array {v0, v1, v2}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->w()V

    .line 104
    .line 105
    .line 106
    :cond_5
    const/16 v0, 0xc

    .line 107
    .line 108
    filled-new-array {v0, v2}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->r()V

    .line 121
    .line 122
    .line 123
    :cond_6
    const/4 v0, 0x2

    .line 124
    filled-new-array {v0, v2}, [I

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->a([I)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    sget-object p1, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->x()V

    .line 137
    .line 138
    .line 139
    :cond_7
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->R:Landroid/view/View;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->Q:Landroid/view/View;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->P:Landroid/view/View;

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 12
    .line 13
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 14
    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 20
    .line 21
    .line 22
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-ne v6, p1, :cond_1

    .line 25
    .line 26
    check-cast v5, Landroidx/media3/common/BasePlayer;

    .line 27
    .line 28
    const/16 p0, 0x9

    .line 29
    .line 30
    invoke-virtual {v5, p0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_13

    .line 35
    .line 36
    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->a0()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    .line 41
    .line 42
    if-ne v6, p1, :cond_2

    .line 43
    .line 44
    check-cast v5, Landroidx/media3/common/BasePlayer;

    .line 45
    .line 46
    const/4 p0, 0x7

    .line 47
    invoke-virtual {v5, p0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_13

    .line 52
    .line 53
    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->b0()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/view/View;

    .line 58
    .line 59
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    if-ne v6, p1, :cond_4

    .line 67
    .line 68
    invoke-interface {v5}, Landroidx/media3/common/Player;->y()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    const/4 p1, 0x4

    .line 73
    if-eq p0, p1, :cond_13

    .line 74
    .line 75
    check-cast v5, Landroidx/media3/common/BasePlayer;

    .line 76
    .line 77
    const/16 p0, 0xc

    .line 78
    .line 79
    invoke-virtual {v5, p0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_13

    .line 84
    .line 85
    invoke-interface {v5}, Landroidx/media3/common/Player;->v()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-interface {v5}, Landroidx/media3/common/Player;->S()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    add-long/2addr v2, v0

    .line 94
    invoke-interface {v5}, Landroidx/media3/common/Player;->getDuration()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    cmp-long p1, v0, v9

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    :cond_3
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-virtual {v5, p0, v0, v1}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_4
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/view/View;

    .line 115
    .line 116
    if-ne v6, p1, :cond_6

    .line 117
    .line 118
    check-cast v5, Landroidx/media3/common/BasePlayer;

    .line 119
    .line 120
    const/16 p0, 0xb

    .line 121
    .line 122
    invoke-virtual {v5, p0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_13

    .line 127
    .line 128
    invoke-interface {v5}, Landroidx/media3/common/Player;->T()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    neg-long v0, v0

    .line 133
    invoke-interface {v5}, Landroidx/media3/common/Player;->S()J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    add-long/2addr v2, v0

    .line 138
    invoke-interface {v5}, Landroidx/media3/common/Player;->getDuration()J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    cmp-long p1, v0, v9

    .line 143
    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    :cond_5
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    invoke-virtual {v5, p0, v0, v1}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_6
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    .line 159
    .line 160
    const/4 v7, 0x1

    .line 161
    if-ne v6, p1, :cond_8

    .line 162
    .line 163
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->D0:Z

    .line 164
    .line 165
    invoke-static {v5, p0}, Landroidx/media3/common/util/Util;->L(Landroidx/media3/common/Player;Z)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_7

    .line 170
    .line 171
    invoke-static {v5}, Landroidx/media3/common/util/Util;->x(Landroidx/media3/common/Player;)Z

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_7
    check-cast v5, Landroidx/media3/common/BasePlayer;

    .line 176
    .line 177
    invoke-virtual {v5, v7}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_13

    .line 182
    .line 183
    const/4 p0, 0x0

    .line 184
    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->u(Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_8
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->J:Landroid/widget/ImageView;

    .line 189
    .line 190
    if-ne v6, p1, :cond_e

    .line 191
    .line 192
    const/16 p1, 0xf

    .line 193
    .line 194
    move-object v0, v5

    .line 195
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_13

    .line 202
    .line 203
    invoke-interface {v5}, Landroidx/media3/common/Player;->J()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->J0:I

    .line 208
    .line 209
    move v0, v7

    .line 210
    :goto_0
    const/4 v1, 0x2

    .line 211
    if-gt v0, v1, :cond_d

    .line 212
    .line 213
    add-int v2, p1, v0

    .line 214
    .line 215
    rem-int/lit8 v2, v2, 0x3

    .line 216
    .line 217
    if-eqz v2, :cond_c

    .line 218
    .line 219
    if-eq v2, v7, :cond_a

    .line 220
    .line 221
    if-eq v2, v1, :cond_9

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_9
    and-int/lit8 v1, p0, 0x2

    .line 225
    .line 226
    if-eqz v1, :cond_b

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_a
    and-int/lit8 v1, p0, 0x1

    .line 230
    .line 231
    if-eqz v1, :cond_b

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_c
    :goto_2
    move p1, v2

    .line 238
    :cond_d
    invoke-interface {v5, p1}, Landroidx/media3/common/Player;->E(I)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_e
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/ImageView;

    .line 243
    .line 244
    if-ne v6, p1, :cond_f

    .line 245
    .line 246
    const/16 p0, 0xe

    .line 247
    .line 248
    move-object p1, v5

    .line 249
    check-cast p1, Landroidx/media3/common/BasePlayer;

    .line 250
    .line 251
    invoke-virtual {p1, p0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-eqz p0, :cond_13

    .line 256
    .line 257
    invoke-interface {v5}, Landroidx/media3/common/Player;->N()Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    xor-int/2addr p0, v7

    .line 262
    invoke-interface {v5, p0}, Landroidx/media3/common/Player;->j(Z)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_f
    if-ne v3, p1, :cond_10

    .line 267
    .line 268
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 272
    .line 273
    invoke-virtual {p0, p1, v3}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_10
    if-ne v2, p1, :cond_11

    .line 278
    .line 279
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 283
    .line 284
    invoke-virtual {p0, p1, v2}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_11
    if-ne v1, p1, :cond_12

    .line 289
    .line 290
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 294
    .line 295
    invoke-virtual {p0, p1, v1}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_12
    if-ne v0, p1, :cond_13

    .line 300
    .line 301
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 305
    .line 306
    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 307
    .line 308
    .line 309
    :cond_13
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->P0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
