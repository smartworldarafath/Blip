.class public abstract Lnet/blip/android/ui/peerpicker/AndroidPeerPickerListItemsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move-object v9, p3

    .line 4
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v1, 0x7de374f0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v1, v0, 0x6

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x2

    .line 25
    :goto_0
    or-int/2addr v4, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v4, v0

    .line 28
    :goto_1
    and-int/lit8 v5, v0, 0x30

    .line 29
    .line 30
    if-nez v5, :cond_3

    .line 31
    .line 32
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    const/16 v5, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v5, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v4, v5

    .line 44
    :cond_3
    and-int/lit16 v5, v0, 0x180

    .line 45
    .line 46
    if-nez v5, :cond_5

    .line 47
    .line 48
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    const/16 v5, 0x100

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/16 v5, 0x80

    .line 58
    .line 59
    :goto_3
    or-int/2addr v4, v5

    .line 60
    :cond_5
    and-int/lit16 v5, v4, 0x93

    .line 61
    .line 62
    const/16 v6, 0x92

    .line 63
    .line 64
    if-eq v5, v6, :cond_6

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    const/4 v5, 0x0

    .line 69
    :goto_4
    and-int/lit8 v6, v4, 0x1

    .line 70
    .line 71
    invoke-virtual {v9, v6, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_7

    .line 76
    .line 77
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v7, "Send to "

    .line 87
    .line 88
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v5, " for the first time?"

    .line 95
    .line 96
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->a()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const-string v8, " ("

    .line 112
    .line 113
    const-string v10, ") before!"

    .line 114
    .line 115
    const-string v11, "Just checking, because you\u2019ve never sent files to "

    .line 116
    .line 117
    invoke-static {v11, v6, v8, v7, v10}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    move v7, v4

    .line 122
    move-object v4, v6

    .line 123
    new-instance v6, Lkotlin/Pair;

    .line 124
    .line 125
    const-string v8, "Send"

    .line 126
    .line 127
    invoke-direct {v6, v8, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move v8, v7

    .line 131
    new-instance v7, Lkotlin/Pair;

    .line 132
    .line 133
    const-string v10, "Cancel"

    .line 134
    .line 135
    invoke-direct {v7, v10, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    shl-int/lit8 v8, v8, 0x9

    .line 139
    .line 140
    const/high16 v10, 0x70000

    .line 141
    .line 142
    and-int/2addr v10, v8

    .line 143
    const/4 v11, 0x4

    .line 144
    move-object v3, v5

    .line 145
    const/4 v5, 0x0

    .line 146
    move-object v8, p2

    .line 147
    invoke-static/range {v3 .. v11}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 152
    .line 153
    .line 154
    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    new-instance v0, Lj1;

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    move-object v1, p0

    .line 164
    move-object v2, p1

    .line 165
    move-object v3, p2

    .line 166
    move/from16 v4, p4

    .line 167
    .line 168
    invoke-direct/range {v0 .. v5}, Lj1;-><init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 169
    .line 170
    .line 171
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    :cond_8
    return-void
.end method

.method public static final b(Lnet/blip/shared/SelectableLazyListScope;Lnet/blip/libblip/PeerPickerContent;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Li1;

    .line 11
    .line 12
    move-object v5, p1

    .line 13
    move v1, p2

    .line 14
    move-object v2, p4

    .line 15
    move-object v3, p5

    .line 16
    move-object v4, p6

    .line 17
    invoke-direct/range {v0 .. v5}, Li1;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerPickerContent;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    const p2, 0x452c39ac

    .line 23
    .line 24
    .line 25
    const/4 p4, 0x1

    .line 26
    invoke-direct {p1, p2, p4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Lb0;

    .line 30
    .line 31
    invoke-direct {p2, p4, p3}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance p3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    const p5, -0x750e7031

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, p5, p4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 40
    .line 41
    .line 42
    instance-of p2, v5, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 43
    .line 44
    const p5, 0x1460bef2

    .line 45
    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    move-object p2, v5

    .line 50
    check-cast p2, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 51
    .line 52
    iget-object p3, p2, Lnet/blip/libblip/PeerPickerContent$Overview;->b:Ljava/util/List;

    .line 53
    .line 54
    iget-object p6, p2, Lnet/blip/libblip/PeerPickerContent$Overview;->a:Ljava/util/List;

    .line 55
    .line 56
    iget-boolean p2, p2, Lnet/blip/libblip/PeerPickerContent$Overview;->c:Z

    .line 57
    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    sget-object p1, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectableLazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p2, Lnet/blip/shared/SelectionListKt$items$7;

    .line 67
    .line 68
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {p6}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    new-instance v1, Lnet/blip/shared/SelectionListKt$items$3;

    .line 76
    .line 77
    invoke-direct {v1, p6}, Lnet/blip/shared/SelectionListKt$items$3;-><init>(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lnet/blip/shared/SelectionListKt$items$4;

    .line 81
    .line 82
    invoke-direct {v2, p2, p6}, Lnet/blip/shared/SelectionListKt$items$4;-><init>(Lnet/blip/shared/SelectionListKt$items$7;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Lnet/blip/shared/SelectionListKt$items$5;

    .line 86
    .line 87
    invoke-direct {p2, p1, p6}, Lnet/blip/shared/SelectionListKt$items$5;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 91
    .line 92
    invoke-direct {v3, p5, p4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/blip/shared/SelectableLazyListScope;->a(ILnet/blip/shared/SelectionListKt$items$3;Lnet/blip/shared/SelectionListKt$items$4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 96
    .line 97
    .line 98
    new-instance p2, Lnet/blip/shared/SelectionListKt$items$7;

    .line 99
    .line 100
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    new-instance v1, Lnet/blip/shared/SelectionListKt$items$3;

    .line 108
    .line 109
    invoke-direct {v1, p3}, Lnet/blip/shared/SelectionListKt$items$3;-><init>(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lnet/blip/shared/SelectionListKt$items$4;

    .line 113
    .line 114
    invoke-direct {v2, p2, p3}, Lnet/blip/shared/SelectionListKt$items$4;-><init>(Lnet/blip/shared/SelectionListKt$items$7;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Lnet/blip/shared/SelectionListKt$items$5;

    .line 118
    .line 119
    invoke-direct {p2, p1, p3}, Lnet/blip/shared/SelectionListKt$items$5;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 123
    .line 124
    invoke-direct {p1, p5, p4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0, v1, v2, p1}, Lnet/blip/shared/SelectableLazyListScope;->a(ILnet/blip/shared/SelectionListKt$items$3;Lnet/blip/shared/SelectionListKt$items$4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_1

    .line 135
    .line 136
    sget-object p1, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectableLazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    sget-object p1, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectableLazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_2
    instance-of p2, v5, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 154
    .line 155
    if-eqz p2, :cond_6

    .line 156
    .line 157
    move-object p2, v5

    .line 158
    check-cast p2, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 159
    .line 160
    iget-object p6, p2, Lnet/blip/libblip/PeerPickerContent$SearchResults;->c:Lnet/blip/libblip/frontend/Search$Status;

    .line 161
    .line 162
    iget-object v0, p2, Lnet/blip/libblip/PeerPickerContent$SearchResults;->b:Ljava/util/ArrayList;

    .line 163
    .line 164
    iget-object v1, p2, Lnet/blip/libblip/PeerPickerContent$SearchResults;->a:Ljava/util/ArrayList;

    .line 165
    .line 166
    new-instance v2, Lnet/blip/shared/SelectionListKt$items$7;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    new-instance v4, Lnet/blip/shared/SelectionListKt$items$3;

    .line 176
    .line 177
    invoke-direct {v4, v1}, Lnet/blip/shared/SelectionListKt$items$3;-><init>(Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    new-instance v6, Lnet/blip/shared/SelectionListKt$items$4;

    .line 181
    .line 182
    invoke-direct {v6, v2, v1}, Lnet/blip/shared/SelectionListKt$items$4;-><init>(Lnet/blip/shared/SelectionListKt$items$7;Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    new-instance v2, Lnet/blip/shared/SelectionListKt$items$5;

    .line 186
    .line 187
    invoke-direct {v2, p1, v1}, Lnet/blip/shared/SelectionListKt$items$5;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 191
    .line 192
    invoke-direct {v1, p5, p4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v3, v4, v6, v1}, Lnet/blip/shared/SelectableLazyListScope;->a(ILnet/blip/shared/SelectionListKt$items$3;Lnet/blip/shared/SelectionListKt$items$4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_3

    .line 203
    .line 204
    new-instance v1, Lb0;

    .line 205
    .line 206
    const/4 v2, 0x7

    .line 207
    invoke-direct {v1, v2, v5}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 211
    .line 212
    const v3, 0x4109b7a6

    .line 213
    .line 214
    .line 215
    invoke-direct {v2, v3, p4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v2}, Lnet/blip/shared/SelectableLazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 219
    .line 220
    .line 221
    new-instance v1, Lnet/blip/shared/SelectionListKt$items$7;

    .line 222
    .line 223
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    new-instance v3, Lnet/blip/shared/SelectionListKt$items$3;

    .line 231
    .line 232
    invoke-direct {v3, v0}, Lnet/blip/shared/SelectionListKt$items$3;-><init>(Ljava/util/List;)V

    .line 233
    .line 234
    .line 235
    new-instance v4, Lnet/blip/shared/SelectionListKt$items$4;

    .line 236
    .line 237
    invoke-direct {v4, v1, v0}, Lnet/blip/shared/SelectionListKt$items$4;-><init>(Lnet/blip/shared/SelectionListKt$items$7;Ljava/util/List;)V

    .line 238
    .line 239
    .line 240
    new-instance v1, Lnet/blip/shared/SelectionListKt$items$5;

    .line 241
    .line 242
    invoke-direct {v1, p1, v0}, Lnet/blip/shared/SelectionListKt$items$5;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/util/List;)V

    .line 243
    .line 244
    .line 245
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 246
    .line 247
    invoke-direct {p1, p5, p4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v2, v3, v4, p1}, Lnet/blip/shared/SelectableLazyListScope;->a(ILnet/blip/shared/SelectionListKt$items$3;Lnet/blip/shared/SelectionListKt$items$4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 251
    .line 252
    .line 253
    :cond_3
    sget-object p1, Lnet/blip/libblip/frontend/Search$Status;->p:Lnet/blip/libblip/frontend/Search$Status;

    .line 254
    .line 255
    if-ne p6, p1, :cond_4

    .line 256
    .line 257
    iget-boolean p1, p2, Lnet/blip/libblip/PeerPickerContent$SearchResults;->d:Z

    .line 258
    .line 259
    if-eqz p1, :cond_4

    .line 260
    .line 261
    sget-object p1, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectableLazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 264
    .line 265
    .line 266
    :cond_4
    sget-object p1, Lnet/blip/libblip/frontend/Search$Status;->o:Lnet/blip/libblip/frontend/Search$Status;

    .line 267
    .line 268
    if-ne p6, p1, :cond_5

    .line 269
    .line 270
    invoke-virtual {p0, p3}, Lnet/blip/shared/SelectableLazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 271
    .line 272
    .line 273
    :cond_5
    return-void

    .line 274
    :cond_6
    invoke-static {}, Lk8;->e()V

    .line 275
    .line 276
    .line 277
    return-void
.end method
