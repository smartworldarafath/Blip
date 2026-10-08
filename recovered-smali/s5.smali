.class public final synthetic Ls5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    const/4 p8, 0x1

    .line 2
    iput p8, p0, Ls5;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Ls5;->k:I

    .line 8
    .line 9
    iput-object p2, p0, Ls5;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 10
    .line 11
    iput-object p3, p0, Ls5;->m:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Ls5;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Ls5;->o:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Ls5;->p:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p7, p0, Ls5;->q:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Ls5;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Ls5;->m:Ljava/lang/Object;

    iput-object p3, p0, Ls5;->q:Ljava/lang/Object;

    iput-object p4, p0, Ls5;->n:Ljava/lang/Object;

    iput-object p5, p0, Ls5;->o:Ljava/lang/Object;

    iput-object p6, p0, Ls5;->p:Ljava/lang/Object;

    iput p7, p0, Ls5;->k:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ls5;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Ls5;->q:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Ls5;->m:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v6, v1

    .line 15
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    iget-object v1, v0, Ls5;->n:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v7, v1

    .line 20
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iget-object v1, v0, Ls5;->o:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v8, v1

    .line 25
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    iget-object v1, v0, Ls5;->p:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v9, v1

    .line 30
    check-cast v9, Landroidx/compose/foundation/layout/WindowInsets;

    .line 31
    .line 32
    move-object v10, v3

    .line 33
    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    move-object/from16 v11, p1

    .line 36
    .line 37
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v1, p2

    .line 40
    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x6001

    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    iget v4, v0, Ls5;->k:I

    .line 53
    .line 54
    iget-object v5, v0, Ls5;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 55
    .line 56
    invoke-static/range {v4 .. v12}, Landroidx/compose/material/ScaffoldKt;->c(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :pswitch_0
    move-object v15, v3

    .line 61
    check-cast v15, Ljava/lang/Boolean;

    .line 62
    .line 63
    move-object/from16 v19, p1

    .line 64
    .line 65
    check-cast v19, Landroidx/compose/runtime/Composer;

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
    iget v1, v0, Ls5;->k:I

    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    or-int/lit8 v20, v1, 0x1

    .line 81
    .line 82
    iget-object v13, v0, Ls5;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 83
    .line 84
    iget-object v14, v0, Ls5;->m:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v1, v0, Ls5;->n:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v3, v0, Ls5;->o:Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v0, v0, Ls5;->p:Ljava/lang/Object;

    .line 91
    .line 92
    move-object/from16 v18, v0

    .line 93
    .line 94
    move-object/from16 v16, v1

    .line 95
    .line 96
    move-object/from16 v17, v3

    .line 97
    .line 98
    invoke-virtual/range {v13 .. v20}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->h(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
