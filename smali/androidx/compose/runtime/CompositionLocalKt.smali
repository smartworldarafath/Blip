.class public abstract Landroidx/compose/runtime/CompositionLocalKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x8ed3d8b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0xc9

    .line 16
    .line 17
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->b:Landroidx/compose/runtime/OpaqueKey;

    .line 18
    .line 19
    invoke-virtual {p2, v2, v3}, Landroidx/compose/runtime/GapComposer;->T(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move-object v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    check-cast v2, Landroidx/compose/runtime/ValueHolder;

    .line 41
    .line 42
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/ProvidedValue;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 43
    .line 44
    invoke-virtual {v3, p0, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->d(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-boolean v6, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    if-eqz v6, :cond_5

    .line 62
    .line 63
    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->g:Z

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    :cond_2
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 74
    .line 75
    invoke-virtual {v1, v3, v5}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->b(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_3
    iput-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->J:Z

    .line 80
    .line 81
    :cond_4
    move v2, v8

    .line 82
    goto :goto_4

    .line 83
    :cond_5
    iget-object v6, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 84
    .line 85
    iget v9, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 86
    .line 87
    iget-object v10, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 88
    .line 89
    invoke-virtual {v6, v10, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b([II)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast v6, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->z()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_6

    .line 103
    .line 104
    if-nez v2, :cond_7

    .line 105
    .line 106
    :cond_6
    iget-boolean v9, p0, Landroidx/compose/runtime/ProvidedValue;->g:Z

    .line 107
    .line 108
    if-nez v9, :cond_a

    .line 109
    .line 110
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_7

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 120
    .line 121
    if-nez v2, :cond_8

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_8
    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 125
    .line 126
    if-eqz v2, :cond_9

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    :goto_1
    move-object v1, v6

    .line 130
    goto :goto_3

    .line 131
    :cond_a
    :goto_2
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 132
    .line 133
    invoke-virtual {v1, v3, v5}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->b(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_3
    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 138
    .line 139
    if-nez v2, :cond_b

    .line 140
    .line 141
    if-eq v6, v1, :cond_4

    .line 142
    .line 143
    :cond_b
    move v2, v7

    .line 144
    :goto_4
    if-eqz v2, :cond_c

    .line 145
    .line 146
    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 147
    .line 148
    if-nez v3, :cond_c

    .line 149
    .line 150
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->I(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 151
    .line 152
    .line 153
    :cond_c
    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 156
    .line 157
    .line 158
    iput-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 159
    .line 160
    iput-object v1, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 161
    .line 162
    const/16 v2, 0xca

    .line 163
    .line 164
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    .line 165
    .line 166
    invoke-virtual {p2, v2, v8, v3, v1}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    shr-int/lit8 v1, p3, 0x3

    .line 170
    .line 171
    and-int/lit8 v1, v1, 0xe

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->b()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_d

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_d
    move v7, v8

    .line 194
    :goto_5
    iput-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 195
    .line 196
    iput-object v4, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    if-eqz p2, :cond_e

    .line 203
    .line 204
    new-instance v0, Lt2;

    .line 205
    .line 206
    const/4 v1, 0x5

    .line 207
    invoke-direct {v0, p3, v1, p0, p1}, Lt2;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 211
    .line 212
    :cond_e
    return-void
.end method

.method public static final b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x18bf8a0a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0xc9

    .line 16
    .line 17
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->b:Landroidx/compose/runtime/OpaqueKey;

    .line 18
    .line 19
    invoke-virtual {p2, v2, v3}, Landroidx/compose/runtime/GapComposer;->T(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->m:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 29
    .line 30
    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p2, v1, v2}, Landroidx/compose/runtime/GapComposer;->f0(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->J:Z

    .line 39
    .line 40
    :cond_0
    :goto_0
    move v2, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget-object v2, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 43
    .line 44
    iget v5, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 45
    .line 46
    invoke-virtual {v2, v5, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v2, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 54
    .line 55
    iget-object v5, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 56
    .line 57
    iget v6, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    .line 58
    .line 59
    invoke-virtual {v5, v6, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast v5, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 67
    .line 68
    invoke-static {p0, v1, v5}, Landroidx/compose/runtime/CompositionLocalMapKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->z()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    iget-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 79
    .line 80
    if-nez v7, :cond_3

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget v1, p2, Landroidx/compose/runtime/GapComposer;->l:I

    .line 90
    .line 91
    iget-object v5, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    add-int/2addr v5, v1

    .line 98
    iput v5, p2, Landroidx/compose/runtime/GapComposer;->l:I

    .line 99
    .line 100
    move-object v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :goto_1
    invoke-virtual {p2, v1, v6}, Landroidx/compose/runtime/GapComposer;->f0(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-boolean v5, p2, Landroidx/compose/runtime/GapComposer;->y:Z

    .line 107
    .line 108
    if-nez v5, :cond_4

    .line 109
    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_0

    .line 115
    .line 116
    :cond_4
    move v2, v3

    .line 117
    :goto_2
    if-eqz v2, :cond_5

    .line 118
    .line 119
    iget-boolean v5, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 120
    .line 121
    if-nez v5, :cond_5

    .line 122
    .line 123
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->I(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-boolean v5, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 127
    .line 128
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/IntStack;->c(I)V

    .line 129
    .line 130
    .line 131
    iput-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 132
    .line 133
    iput-object v1, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 134
    .line 135
    const/16 v2, 0xca

    .line 136
    .line 137
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    .line 138
    .line 139
    invoke-virtual {p2, v2, v4, v5, v1}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    shr-int/lit8 v1, p3, 0x3

    .line 143
    .line 144
    and-int/lit8 v1, v1, 0xe

    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1, p2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->b()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    move v3, v4

    .line 167
    :goto_3
    iput-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    .line 168
    .line 169
    const/4 v0, 0x0

    .line 170
    iput-object v0, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 171
    .line 172
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-eqz p2, :cond_7

    .line 177
    .line 178
    new-instance v0, Lt2;

    .line 179
    .line 180
    const/4 v1, 0x4

    .line 181
    invoke-direct {v0, p3, v1, p0, p1}, Lt2;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 185
    .line 186
    :cond_7
    return-void
.end method
