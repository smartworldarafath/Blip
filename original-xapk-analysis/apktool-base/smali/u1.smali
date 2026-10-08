.class public final synthetic Lu1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p7, p0, Lu1;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1;->m:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lu1;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lu1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lu1;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput p5, p0, Lu1;->k:I

    .line 12
    .line 13
    iput p6, p0, Lu1;->l:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu1;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lu1;->k:I

    .line 8
    .line 9
    iget-object v4, v0, Lu1;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lu1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lu1;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Lu1;->m:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v8, v7

    .line 21
    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    move-object v9, v6

    .line 24
    check-cast v9, Ljava/lang/String;

    .line 25
    .line 26
    move-object v10, v5

    .line 27
    check-cast v10, Landroidx/compose/ui/text/TextStyle;

    .line 28
    .line 29
    move-object v11, v4

    .line 30
    check-cast v11, Lnet/blip/shared/SimpleLinkTextButton;

    .line 31
    .line 32
    move-object/from16 v12, p1

    .line 33
    .line 34
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 35
    .line 36
    move-object/from16 v1, p2

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    or-int/lit8 v1, v3, 0x1

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    iget v14, v0, Lu1;->l:I

    .line 50
    .line 51
    invoke-static/range {v8 .. v14}, Lnet/blip/shared/LinkableTextKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/runtime/Composer;II)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :pswitch_0
    move-object v15, v7

    .line 56
    check-cast v15, Landroidx/compose/ui/Modifier;

    .line 57
    .line 58
    move-object/from16 v16, v6

    .line 59
    .line 60
    check-cast v16, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 61
    .line 62
    move-object/from16 v17, v5

    .line 63
    .line 64
    check-cast v17, Lnet/blip/libblip/User;

    .line 65
    .line 66
    move-object/from16 v18, v4

    .line 67
    .line 68
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    move-object/from16 v19, p1

    .line 71
    .line 72
    check-cast v19, Landroidx/compose/runtime/Composer;

    .line 73
    .line 74
    move-object/from16 v1, p2

    .line 75
    .line 76
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    or-int/lit8 v1, v3, 0x1

    .line 82
    .line 83
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 84
    .line 85
    .line 86
    move-result v20

    .line 87
    iget v0, v0, Lu1;->l:I

    .line 88
    .line 89
    move/from16 v21, v0

    .line 90
    .line 91
    invoke-static/range {v15 .. v21}, Lnet/blip/shared/AvatarKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :pswitch_1
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    check-cast v6, Lnet/blip/shared/AvatarTheme;

    .line 98
    .line 99
    check-cast v5, Lnet/blip/libblip/Peer;

    .line 100
    .line 101
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    move v1, v3

    .line 104
    move-object v3, v7

    .line 105
    move-object/from16 v7, p1

    .line 106
    .line 107
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    move-object/from16 v8, p2

    .line 110
    .line 111
    check-cast v8, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    or-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    iget v9, v0, Lu1;->l:I

    .line 123
    .line 124
    move-object/from16 v22, v6

    .line 125
    .line 126
    move-object v6, v4

    .line 127
    move-object/from16 v4, v22

    .line 128
    .line 129
    invoke-static/range {v3 .. v9}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 130
    .line 131
    .line 132
    return-object v2

    .line 133
    :pswitch_2
    move v1, v3

    .line 134
    move-object v10, v7

    .line 135
    check-cast v10, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 136
    .line 137
    move-object v11, v6

    .line 138
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 139
    .line 140
    move-object v12, v5

    .line 141
    check-cast v12, Landroidx/compose/ui/window/PopupProperties;

    .line 142
    .line 143
    move-object v13, v4

    .line 144
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 145
    .line 146
    move-object/from16 v14, p1

    .line 147
    .line 148
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 149
    .line 150
    move-object/from16 v3, p2

    .line 151
    .line 152
    check-cast v3, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    or-int/lit8 v1, v1, 0x1

    .line 158
    .line 159
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    iget v0, v0, Lu1;->l:I

    .line 164
    .line 165
    move/from16 v16, v0

    .line 166
    .line 167
    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 168
    .line 169
    .line 170
    return-object v2

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
