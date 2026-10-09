.class public final synthetic Landroidx/media3/ui/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/ui/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/ui/a;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x1d

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/ui/a;->k:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0x7f0a00c7

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->r:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const v0, 0x7f0a00c6

    .line 36
    .line 37
    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->s:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    :pswitch_0
    check-cast p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->f:Landroidx/media3/ui/PlayerControlView;

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    check-cast p1, Landroidx/media3/common/BasePlayer;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 63
    .line 64
    invoke-interface {p1}, Landroidx/media3/common/Player;->O()Landroidx/media3/common/TrackSelectionParameters;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 69
    .line 70
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 76
    .line 77
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x3

    .line 81
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->b(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->d()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->f()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->h()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a()Landroidx/media3/common/TrackSelectionParameters;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->F(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void

    .line 106
    :pswitch_1
    check-cast p0, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;

    .line 107
    .line 108
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;->x:Landroidx/media3/ui/PlayerControlView;

    .line 109
    .line 110
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 111
    .line 112
    const/4 v2, -0x1

    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    .line 130
    invoke-virtual {v3, p0}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-ne v3, v2, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->s:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 138
    .line 139
    if-ne p0, v0, :cond_7

    .line 140
    .line 141
    move v2, v3

    .line 142
    :cond_7
    :goto_1
    iget-object p0, p1, Landroidx/media3/ui/PlayerControlView;->P:Landroid/view/View;

    .line 143
    .line 144
    if-nez v2, :cond_8

    .line 145
    .line 146
    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView;->w:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0, p0}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    if-ne v2, v1, :cond_9

    .line 156
    .line 157
    iget-object v0, p1, Landroidx/media3/ui/PlayerControlView;->y:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, p0}, Landroidx/media3/ui/PlayerControlView;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_9
    iget-object p0, p1, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void

    .line 172
    :pswitch_2
    check-cast p0, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 173
    .line 174
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->f:Landroidx/media3/ui/PlayerControlView;

    .line 175
    .line 176
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 177
    .line 178
    if-eqz p1, :cond_b

    .line 179
    .line 180
    check-cast p1, Landroidx/media3/common/BasePlayer;

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_a

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 190
    .line 191
    invoke-interface {p1}, Landroidx/media3/common/Player;->O()Landroidx/media3/common/TrackSelectionParameters;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 196
    .line 197
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 203
    .line 204
    invoke-direct {v2, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->b(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 208
    .line 209
    .line 210
    const/4 p1, 0x0

    .line 211
    invoke-virtual {v2, v1, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->i(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a()Landroidx/media3/common/TrackSelectionParameters;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->F(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    const v2, 0x7f110071

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->e:[Ljava/lang/String;

    .line 235
    .line 236
    aput-object v0, p1, v1

    .line 237
    .line 238
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/PopupWindow;

    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 241
    .line 242
    .line 243
    :cond_b
    :goto_3
    return-void

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
