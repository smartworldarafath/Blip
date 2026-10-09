.class public final Landroidx/compose/runtime/RecordingApplier;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/Applier<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/collection/MutableIntList;

.field public final b:Landroidx/collection/MutableObjectList;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/MutableIntList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/MutableIntList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/RecordingApplier;->b:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/runtime/RecordingApplier;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntList;->b(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->b:Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->b:Landroidx/collection/MutableObjectList;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e(III)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->b(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/collection/MutableIntList;->b(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/collection/MutableIntList;->b(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->b(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroidx/collection/MutableIntList;->b(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->b:Landroidx/collection/MutableObjectList;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final i(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object v1, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntList;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntList;->b(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/RecordingApplier;->b:Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final k(Landroidx/compose/ui/node/UiApplier;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 10

    .line 1
    iget-object v3, p0, Landroidx/compose/runtime/RecordingApplier;->a:Landroidx/collection/MutableIntList;

    .line 2
    .line 3
    iget v0, v3, Landroidx/collection/IntList;->b:I

    .line 4
    .line 5
    new-instance v2, Landroidx/collection/MutableObjectList;

    .line 6
    .line 7
    invoke-direct {v2}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v4, v1

    .line 12
    move v5, v4

    .line 13
    move v6, v5

    .line 14
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/RecordingApplier;->b:Landroidx/collection/MutableObjectList;

    .line 15
    .line 16
    if-ge v4, v0, :cond_1

    .line 17
    .line 18
    add-int/lit8 v7, v4, 0x1

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v3, v4}, Landroidx/collection/IntList;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    packed-switch v8, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto :goto_3

    .line 28
    :pswitch_0
    iget-object v4, p1, Landroidx/compose/runtime/AbstractApplier;->c:Ljava/lang/Object;

    .line 29
    .line 30
    instance-of v8, v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 31
    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    move-object v8, v4

    .line 35
    check-cast v8, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 36
    .line 37
    iget-object v9, p2, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 38
    .line 39
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    invoke-interface {v8}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->b()V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    move-object v5, p0

    .line 50
    move v4, v7

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_2
    invoke-virtual {v2, v4}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/node/UiApplier;->d()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 v9, 0x2

    .line 77
    invoke-static {v9, v8}, Lkotlin/jvm/internal/TypeIntrinsics;->c(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    add-int/lit8 v5, v5, 0x2

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {p1, v4, v8}, Landroidx/compose/runtime/Applier;->h(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :goto_3
    move v4, v7

    .line 92
    goto :goto_0

    .line 93
    :pswitch_2
    add-int/lit8 v4, v4, 0x2

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v3, v7}, Landroidx/collection/IntList;->a(I)I

    .line 96
    .line 97
    .line 98
    add-int/lit8 v7, v5, 0x1

    .line 99
    .line 100
    invoke-virtual {v1, v5}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 105
    .line 106
    move v5, v7

    .line 107
    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object p0, v0

    .line 110
    move-object v5, p0

    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :pswitch_3
    add-int/lit8 v4, v4, 0x2

    .line 114
    .line 115
    invoke-virtual {v3, v7}, Landroidx/collection/IntList;->a(I)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    add-int/lit8 v8, v5, 0x1

    .line 120
    .line 121
    invoke-virtual {v1, v5}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p1, v7, v5}, Landroidx/compose/ui/node/UiApplier;->b(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    move v5, v8

    .line 129
    goto :goto_0

    .line 130
    :pswitch_4
    :try_start_2
    invoke-virtual {p1}, Landroidx/compose/runtime/AbstractApplier;->k()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :pswitch_5
    add-int/lit8 v8, v4, 0x2

    .line 135
    .line 136
    :try_start_3
    invoke-virtual {v3, v7}, Landroidx/collection/IntList;->a(I)I

    .line 137
    .line 138
    .line 139
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    add-int/lit8 v9, v4, 0x3

    .line 141
    .line 142
    :try_start_4
    invoke-virtual {v3, v8}, Landroidx/collection/IntList;->a(I)I

    .line 143
    .line 144
    .line 145
    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    add-int/lit8 v4, v4, 0x4

    .line 147
    .line 148
    :try_start_5
    invoke-virtual {v3, v9}, Landroidx/collection/IntList;->a(I)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual {p1, v7, v8, v9}, Landroidx/compose/ui/node/UiApplier;->e(III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :catch_2
    move-exception v0

    .line 158
    move-object p0, v0

    .line 159
    move-object v5, p0

    .line 160
    move v4, v9

    .line 161
    goto :goto_5

    .line 162
    :catch_3
    move-exception v0

    .line 163
    move-object p0, v0

    .line 164
    move-object v5, p0

    .line 165
    move v4, v8

    .line 166
    goto :goto_5

    .line 167
    :pswitch_6
    add-int/lit8 v8, v4, 0x2

    .line 168
    .line 169
    :try_start_6
    invoke-virtual {v3, v7}, Landroidx/collection/IntList;->a(I)I

    .line 170
    .line 171
    .line 172
    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    add-int/lit8 v4, v4, 0x3

    .line 174
    .line 175
    :try_start_7
    invoke-virtual {v3, v8}, Landroidx/collection/IntList;->a(I)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    invoke-virtual {p1, v7, v8}, Landroidx/compose/ui/node/UiApplier;->f(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_7
    add-int/lit8 v4, v5, 0x1

    .line 185
    .line 186
    :try_start_8
    invoke-virtual {v1, v5}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/AbstractApplier;->c(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    move v5, v4

    .line 194
    goto :goto_3

    .line 195
    :pswitch_8
    invoke-virtual {p1}, Landroidx/compose/runtime/AbstractApplier;->g()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_1
    :try_start_9
    iget p0, v1, Landroidx/collection/ObjectList;->b:I

    .line 200
    .line 201
    if-ne v5, p0, :cond_2

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_2
    const-string p0, "Applier operation size mismatch"

    .line 205
    .line 206
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :goto_4
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->k()V

    .line 210
    .line 211
    .line 212
    iput v6, v3, Landroidx/collection/IntList;->b:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 213
    .line 214
    invoke-virtual {p1}, Landroidx/compose/ui/node/UiApplier;->j()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :goto_5
    :try_start_a
    new-instance v0, Landroidx/compose/runtime/ComposePausableCompositionException;

    .line 219
    .line 220
    add-int/lit8 v4, v4, -0x1

    .line 221
    .line 222
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/ComposePausableCompositionException;-><init>(Landroidx/collection/ObjectList;Landroidx/collection/MutableObjectList;Landroidx/collection/IntList;ILjava/lang/Exception;)V

    .line 223
    .line 224
    .line 225
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 226
    :goto_6
    invoke-virtual {p1}, Landroidx/compose/ui/node/UiApplier;->j()V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
