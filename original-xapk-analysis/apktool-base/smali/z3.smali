.class public final synthetic Lz3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 18
    iput p6, p0, Lz3;->j:I

    iput-object p1, p0, Lz3;->k:Ljava/lang/Object;

    iput-object p2, p0, Lz3;->n:Ljava/lang/Object;

    iput-object p3, p0, Lz3;->o:Ljava/lang/Object;

    iput p4, p0, Lz3;->l:I

    iput p5, p0, Lz3;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lz3;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lz3;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lz3;->l:I

    .line 10
    .line 11
    iput-object p3, p0, Lz3;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lz3;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iput p5, p0, Lz3;->m:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lz3;->j:I

    .line 4
    .line 5
    iget v2, v0, Lz3;->l:I

    .line 6
    .line 7
    iget-object v3, v0, Lz3;->k:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v5, v0, Lz3;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lz3;->n:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v7, v3

    .line 19
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    move-object v8, v6

    .line 22
    check-cast v8, Lnet/blip/libblip/Peer;

    .line 23
    .line 24
    move-object v9, v5

    .line 25
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    move-object/from16 v10, p1

    .line 28
    .line 29
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    or-int/lit8 v1, v2, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    iget v12, v0, Lz3;->m:I

    .line 45
    .line 46
    invoke-static/range {v7 .. v12}, Lnet/blip/android/ui/settings/SettingsPeerHeaderKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :pswitch_0
    move-object v13, v3

    .line 51
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 52
    .line 53
    move-object v14, v6

    .line 54
    check-cast v14, Ljava/lang/String;

    .line 55
    .line 56
    move-object v15, v5

    .line 57
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 58
    .line 59
    move-object/from16 v16, p1

    .line 60
    .line 61
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 62
    .line 63
    move-object/from16 v1, p2

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    or-int/lit8 v1, v2, 0x1

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 73
    .line 74
    .line 75
    move-result v17

    .line 76
    iget v0, v0, Lz3;->m:I

    .line 77
    .line 78
    move/from16 v18, v0

    .line 79
    .line 80
    invoke-static/range {v13 .. v18}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 81
    .line 82
    .line 83
    return-object v4

    .line 84
    :pswitch_1
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    check-cast v6, Ljava/lang/String;

    .line 87
    .line 88
    move-object v7, v5

    .line 89
    check-cast v7, Landroidx/compose/ui/text/TextStyle;

    .line 90
    .line 91
    move-object/from16 v8, p1

    .line 92
    .line 93
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 94
    .line 95
    move-object/from16 v1, p2

    .line 96
    .line 97
    check-cast v1, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    or-int/lit8 v1, v2, 0x1

    .line 103
    .line 104
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    iget v10, v0, Lz3;->m:I

    .line 109
    .line 110
    move-object v5, v3

    .line 111
    invoke-static/range {v5 .. v10}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
    :pswitch_2
    move-object v13, v6

    .line 116
    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 117
    .line 118
    move-object v14, v5

    .line 119
    check-cast v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 120
    .line 121
    move-object/from16 v15, p1

    .line 122
    .line 123
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 124
    .line 125
    move-object/from16 v1, p2

    .line 126
    .line 127
    check-cast v1, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget v1, v0, Lz3;->m:I

    .line 133
    .line 134
    or-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 137
    .line 138
    .line 139
    move-result v16

    .line 140
    iget-object v11, v0, Lz3;->k:Ljava/lang/Object;

    .line 141
    .line 142
    iget v12, v0, Lz3;->l:I

    .line 143
    .line 144
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;->a(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 145
    .line 146
    .line 147
    return-object v4

    .line 148
    :pswitch_3
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 149
    .line 150
    check-cast v6, Landroidx/compose/ui/Alignment;

    .line 151
    .line 152
    move-object v7, v5

    .line 153
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 154
    .line 155
    move-object/from16 v8, p1

    .line 156
    .line 157
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 158
    .line 159
    move-object/from16 v1, p2

    .line 160
    .line 161
    check-cast v1, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    or-int/lit8 v1, v2, 0x1

    .line 167
    .line 168
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    iget v10, v0, Lz3;->m:I

    .line 173
    .line 174
    move-object v5, v3

    .line 175
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 176
    .line 177
    .line 178
    return-object v4

    .line 179
    :pswitch_4
    move-object v11, v3

    .line 180
    check-cast v11, Landroidx/compose/ui/Modifier;

    .line 181
    .line 182
    move-object v12, v6

    .line 183
    check-cast v12, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 184
    .line 185
    move-object v13, v5

    .line 186
    check-cast v13, Lnet/blip/libblip/DeviceKind;

    .line 187
    .line 188
    move-object/from16 v14, p1

    .line 189
    .line 190
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 191
    .line 192
    move-object/from16 v1, p2

    .line 193
    .line 194
    check-cast v1, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    or-int/lit8 v1, v2, 0x1

    .line 200
    .line 201
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    iget v0, v0, Lz3;->m:I

    .line 206
    .line 207
    move/from16 v16, v0

    .line 208
    .line 209
    invoke-static/range {v11 .. v16}, Lnet/blip/shared/AvatarKt;->b(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/DeviceKind;Landroidx/compose/runtime/Composer;II)V

    .line 210
    .line 211
    .line 212
    return-object v4

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
