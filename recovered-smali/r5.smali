.class public final synthetic Lr5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lr5;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lr5;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lr5;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lr5;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lr5;->m:Ljava/lang/Object;

    .line 14
    .line 15
    iput p5, p0, Lr5;->l:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 18
    iput p6, p0, Lr5;->j:I

    iput-object p1, p0, Lr5;->m:Ljava/lang/Object;

    iput-object p2, p0, Lr5;->k:Ljava/lang/Object;

    iput-object p3, p0, Lr5;->n:Ljava/lang/Object;

    iput-object p4, p0, Lr5;->o:Ljava/lang/Object;

    iput p5, p0, Lr5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lr5;->j:I

    .line 4
    .line 5
    iget-object v2, v0, Lr5;->o:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Lr5;->n:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    iget v5, v0, Lr5;->l:I

    .line 12
    .line 13
    iget-object v6, v0, Lr5;->m:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lr5;->k:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v7, v0

    .line 21
    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    move-object v8, v3

    .line 24
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    move-object v9, v2

    .line 27
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    move-object v10, v6

    .line 30
    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 31
    .line 32
    move-object/from16 v11, p1

    .line 33
    .line 34
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 35
    .line 36
    move-object/from16 v0, p2

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    or-int/lit8 v0, v5, 0x1

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-static/range {v7 .. v12}, Lnet/blip/shared/ListRowBasicLockupKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :pswitch_0
    move-object v13, v6

    .line 54
    check-cast v13, Ljava/lang/Boolean;

    .line 55
    .line 56
    move-object v15, v3

    .line 57
    check-cast v15, Landroidx/lifecycle/LifecycleOwner;

    .line 58
    .line 59
    move-object/from16 v16, v2

    .line 60
    .line 61
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    move-object/from16 v17, p1

    .line 64
    .line 65
    check-cast v17, Landroidx/compose/runtime/Composer;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    or-int/lit8 v1, v5, 0x1

    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 77
    .line 78
    .line 79
    move-result v18

    .line 80
    iget-object v14, v0, Lr5;->k:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static/range {v13 .. v18}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :pswitch_1
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 87
    .line 88
    move-object/from16 v9, p1

    .line 89
    .line 90
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 91
    .line 92
    move-object/from16 v1, p2

    .line 93
    .line 94
    check-cast v1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    or-int/lit8 v10, v1, 0x1

    .line 104
    .line 105
    move-object v5, v6

    .line 106
    iget-object v6, v0, Lr5;->k:Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v7, v0, Lr5;->n:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object v8, v0, Lr5;->o:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-object v4

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
