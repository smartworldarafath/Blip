.class Landroidx/recyclerview/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic j:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$2;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 10
    .line 11
    iget-wide v3, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->d:J

    .line 12
    .line 13
    iget-object v5, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    iget-object v7, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    iget-object v9, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->k:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    iget-object v11, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->i:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    if-eqz v8, :cond_0

    .line 40
    .line 41
    if-eqz v12, :cond_0

    .line 42
    .line 43
    if-eqz v10, :cond_0

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    if-eqz v14, :cond_1

    .line 56
    .line 57
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    .line 63
    iget-object v15, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object/from16 v16, v5

    .line 70
    .line 71
    iget-object v5, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->q:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    move/from16 v17, v6

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    .line 88
    .line 89
    invoke-direct {v6, v15, v2, v1, v14}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroid/view/View;Landroid/view/ViewPropertyAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    .line 98
    .line 99
    move-object/from16 v5, v16

    .line 100
    .line 101
    move/from16 v6, v17

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move-object/from16 v16, v5

    .line 105
    .line 106
    move/from16 v17, v6

    .line 107
    .line 108
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 109
    .line 110
    .line 111
    if-nez v8, :cond_3

    .line 112
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    .line 120
    .line 121
    iget-object v5, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->m:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    .line 130
    .line 131
    invoke-direct {v5, v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 132
    .line 133
    .line 134
    if-nez v17, :cond_2

    .line 135
    .line 136
    const/4 v6, 0x0

    .line 137
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 142
    .line 143
    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 144
    .line 145
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 146
    .line 147
    sget-object v6, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 148
    .line 149
    invoke-virtual {v2, v5, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;->run()V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    if-nez v10, :cond_5

    .line 157
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    .line 165
    .line 166
    iget-object v5, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->n:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 172
    .line 173
    .line 174
    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator$2;

    .line 175
    .line 176
    invoke-direct {v5, v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator$2;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    if-nez v17, :cond_4

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 187
    .line 188
    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 189
    .line 190
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 191
    .line 192
    sget-object v6, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 193
    .line 194
    invoke-virtual {v2, v5, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    invoke-virtual {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->run()V

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_2
    if-nez v12, :cond_b

    .line 202
    .line 203
    new-instance v2, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    .line 210
    .line 211
    iget-object v5, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->l:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 217
    .line 218
    .line 219
    new-instance v5, Landroidx/recyclerview/widget/DefaultItemAnimator$3;

    .line 220
    .line 221
    invoke-direct {v5, v1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator$3;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 222
    .line 223
    .line 224
    if-eqz v17, :cond_7

    .line 225
    .line 226
    if-eqz v8, :cond_7

    .line 227
    .line 228
    if-nez v10, :cond_6

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_6
    invoke-virtual {v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->run()V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    .line 236
    .line 237
    if-nez v17, :cond_8

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    move-wide v3, v6

    .line 241
    :goto_4
    if-nez v8, :cond_9

    .line 242
    .line 243
    iget-wide v8, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->e:J

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_9
    move-wide v8, v6

    .line 247
    :goto_5
    if-nez v10, :cond_a

    .line 248
    .line 249
    iget-wide v6, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->f:J

    .line 250
    .line 251
    :cond_a
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 252
    .line 253
    .line 254
    move-result-wide v6

    .line 255
    add-long/2addr v6, v3

    .line 256
    const/4 v1, 0x0

    .line 257
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 262
    .line 263
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 264
    .line 265
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 266
    .line 267
    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_b
    :goto_6
    const/4 v1, 0x0

    .line 272
    :goto_7
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Z

    .line 273
    .line 274
    return-void
.end method
