.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/Player;


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final U(I)V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {p0, v2, v0, v1, p1}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final V(I)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/Player;->h()Landroidx/media3/common/Player$Commands;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final W()Z
    .locals 4

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final X()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/Player;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/media3/common/Player;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Landroidx/media3/common/Player;->I()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public abstract Y(IJZ)V
.end method

.method public final Z(IJ)V
    .locals 1

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final a0()V
    .locals 10

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-nez v0, :cond_b

    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/common/Player;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    move v0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {p0}, Landroidx/media3/common/Player;->J()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v4, :cond_2

    .line 45
    .line 46
    move v6, v5

    .line 47
    :cond_2
    invoke-interface {p0}, Landroidx/media3/common/Player;->N()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v0, v2, v6, v7}, Landroidx/media3/common/Timeline;->e(IIZ)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_0
    if-eq v0, v3, :cond_3

    .line 56
    .line 57
    move v0, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v0, v5

    .line 60
    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    move v0, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-interface {p0}, Landroidx/media3/common/Player;->J()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-ne v8, v4, :cond_5

    .line 88
    .line 89
    move v8, v5

    .line 90
    :cond_5
    invoke-interface {p0}, Landroidx/media3/common/Player;->N()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-virtual {v0, v2, v8, v9}, Landroidx/media3/common/Timeline;->e(IIZ)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    :goto_2
    if-ne v0, v3, :cond_6

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_6
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ne v0, v1, :cond_7

    .line 109
    .line 110
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p0, v0, v6, v7, v4}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    invoke-virtual {p0, v0, v6, v7, v5}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->W()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_9

    .line 137
    .line 138
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iget-object v3, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 143
    .line 144
    const-wide/16 v8, 0x0

    .line 145
    .line 146
    invoke-virtual {v0, v2, v3, v8, v9}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 151
    .line 152
    if-eqz v0, :cond_9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    move v4, v5

    .line 156
    :goto_3
    if-eqz v4, :cond_a

    .line 157
    .line 158
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {p0, v0, v6, v7, v5}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_a
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_b
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final b0()V
    .locals 14

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-nez v0, :cond_10

    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/media3/common/Player;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    move v0, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-interface {p0}, Landroidx/media3/common/Player;->J()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-ne v6, v4, :cond_2

    .line 44
    .line 45
    move v6, v5

    .line 46
    :cond_2
    invoke-interface {p0}, Landroidx/media3/common/Player;->N()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-virtual {v0, v2, v6, v7}, Landroidx/media3/common/Timeline;->k(IIZ)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    if-eq v0, v3, :cond_3

    .line 55
    .line 56
    move v0, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v0, v5

    .line 59
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->W()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const-wide/16 v8, 0x0

    .line 69
    .line 70
    if-eqz v2, :cond_a

    .line 71
    .line 72
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-nez v10, :cond_4

    .line 81
    .line 82
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    iget-object v11, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 87
    .line 88
    invoke-virtual {v2, v10, v11, v8, v9}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Window;->f:Z

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    move v2, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v2, v5

    .line 99
    :goto_2
    if-nez v2, :cond_a

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    move v0, v3

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-interface {p0}, Landroidx/media3/common/Player;->J()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-ne v8, v4, :cond_6

    .line 124
    .line 125
    move v8, v5

    .line 126
    :cond_6
    invoke-interface {p0}, Landroidx/media3/common/Player;->N()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    invoke-virtual {v0, v2, v8, v9}, Landroidx/media3/common/Timeline;->k(IIZ)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    :goto_3
    if-ne v0, v3, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-ne v0, v1, :cond_8

    .line 145
    .line 146
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0, v0, v6, v7, v4}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_8
    invoke-virtual {p0, v0, v6, v7, v5}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_9
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_a
    if-eqz v0, :cond_f

    .line 163
    .line 164
    invoke-interface {p0}, Landroidx/media3/common/Player;->S()J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    invoke-interface {p0}, Landroidx/media3/common/Player;->k()J

    .line 169
    .line 170
    .line 171
    move-result-wide v12

    .line 172
    cmp-long v0, v10, v12

    .line 173
    .line 174
    if-gtz v0, :cond_f

    .line 175
    .line 176
    invoke-interface {p0}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_b

    .line 185
    .line 186
    move v0, v3

    .line 187
    goto :goto_4

    .line 188
    :cond_b
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-interface {p0}, Landroidx/media3/common/Player;->J()I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-ne v8, v4, :cond_c

    .line 197
    .line 198
    move v8, v5

    .line 199
    :cond_c
    invoke-interface {p0}, Landroidx/media3/common/Player;->N()Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    invoke-virtual {v0, v2, v8, v9}, Landroidx/media3/common/Timeline;->k(IIZ)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    :goto_4
    if-ne v0, v3, :cond_d

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_d
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-ne v0, v1, :cond_e

    .line 218
    .line 219
    invoke-interface {p0}, Landroidx/media3/common/Player;->D()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {p0, v0, v6, v7, v4}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_e
    invoke-virtual {p0, v0, v6, v7, v5}, Landroidx/media3/common/BasePlayer;->Y(IJZ)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_f
    invoke-virtual {p0, v1, v8, v9}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_10
    :goto_5
    invoke-virtual {p0, v1}, Landroidx/media3/common/BasePlayer;->U(I)V

    .line 236
    .line 237
    .line 238
    return-void
.end method
