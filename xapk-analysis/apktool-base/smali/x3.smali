.class public final synthetic Lx3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p7, p0, Lx3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lx3;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lx3;->m:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lx3;->n:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lx3;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lx3;->p:Ljava/lang/Object;

    .line 12
    .line 13
    iput p6, p0, Lx3;->k:I

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
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lx3;->j:I

    .line 4
    .line 5
    iget-object v2, v0, Lx3;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Lx3;->p:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget v5, v0, Lx3;->k:I

    .line 12
    .line 13
    iget-object v6, v0, Lx3;->m:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Lx3;->l:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v8, v7

    .line 21
    check-cast v8, Landroidx/compose/animation/core/Transition;

    .line 22
    .line 23
    move-object v9, v6

    .line 24
    check-cast v9, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 25
    .line 26
    move-object v12, v3

    .line 27
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 28
    .line 29
    move-object/from16 v13, p1

    .line 30
    .line 31
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v1, p2

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    or-int/lit8 v1, v5, 0x1

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    iget-object v10, v0, Lx3;->n:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v11, v0, Lx3;->o:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static/range {v8 .. v14}, Landroidx/compose/animation/core/TransitionKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)V

    .line 51
    .line 52
    .line 53
    return-object v4

    .line 54
    :pswitch_0
    move-object v15, v7

    .line 55
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    move-object/from16 v16, v6

    .line 58
    .line 59
    check-cast v16, Ljava/lang/Float;

    .line 60
    .line 61
    move-object/from16 v17, v2

    .line 62
    .line 63
    check-cast v17, Landroidx/compose/ui/graphics/Color;

    .line 64
    .line 65
    move-object/from16 v20, p1

    .line 66
    .line 67
    check-cast v20, Landroidx/compose/runtime/Composer;

    .line 68
    .line 69
    move-object/from16 v1, p2

    .line 70
    .line 71
    check-cast v1, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    or-int/lit8 v21, v1, 0x1

    .line 81
    .line 82
    iget-object v1, v0, Lx3;->o:Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v0, v0, Lx3;->p:Ljava/lang/Object;

    .line 85
    .line 86
    move-object/from16 v19, v0

    .line 87
    .line 88
    move-object/from16 v18, v1

    .line 89
    .line 90
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->e(Ljava/lang/Float;Landroidx/compose/ui/graphics/Color;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    return-object v4

    .line 94
    :pswitch_1
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 95
    .line 96
    check-cast v6, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 97
    .line 98
    check-cast v2, Lokio/ByteString;

    .line 99
    .line 100
    iget-object v0, v0, Lx3;->o:Ljava/lang/Object;

    .line 101
    .line 102
    move-object v8, v0

    .line 103
    check-cast v8, Ljava/lang/String;

    .line 104
    .line 105
    move-object v9, v3

    .line 106
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 107
    .line 108
    move-object/from16 v10, p1

    .line 109
    .line 110
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 111
    .line 112
    move-object/from16 v0, p2

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    or-int/lit8 v0, v5, 0x1

    .line 120
    .line 121
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    move-object v5, v7

    .line 126
    move-object v7, v2

    .line 127
    invoke-static/range {v5 .. v11}, Lnet/blip/shared/AvatarKt;->g(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lokio/ByteString;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 128
    .line 129
    .line 130
    return-object v4

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
