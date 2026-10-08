.class public final synthetic Lib;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:I

.field public final synthetic n:Lkotlin/Function;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lib;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lib;->n:Lkotlin/Function;

    .line 8
    .line 9
    iput-object p2, p0, Lib;->l:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput-boolean p3, p0, Lib;->k:Z

    .line 12
    .line 13
    iput-object p4, p0, Lib;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lib;->p:Ljava/lang/Object;

    .line 16
    .line 17
    iput p6, p0, Lib;->m:I

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;I)V
    .locals 1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lib;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lib;->k:Z

    iput-object p2, p0, Lib;->n:Lkotlin/Function;

    iput-object p3, p0, Lib;->l:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lib;->o:Ljava/lang/Object;

    iput-object p5, p0, Lib;->p:Ljava/lang/Object;

    iput p6, p0, Lib;->m:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lib;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lib;->m:I

    .line 8
    .line 9
    iget-object v4, v0, Lib;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lib;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lib;->n:Lkotlin/Function;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v8, v6

    .line 19
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    move-object v10, v5

    .line 22
    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 23
    .line 24
    move-object v11, v4

    .line 25
    check-cast v11, Landroidx/compose/material/SwitchColors;

    .line 26
    .line 27
    move-object/from16 v12, p1

    .line 28
    .line 29
    check-cast v12, Landroidx/compose/runtime/Composer;

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
    or-int/lit8 v1, v3, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    iget-boolean v7, v0, Lib;->k:Z

    .line 45
    .line 46
    iget-object v9, v0, Lib;->l:Landroidx/compose/ui/Modifier;

    .line 47
    .line 48
    invoke-static/range {v7 .. v13}, Landroidx/compose/material/SwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;I)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :pswitch_0
    move-object v14, v6

    .line 53
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    move-object/from16 v17, v5

    .line 56
    .line 57
    check-cast v17, Landroidx/compose/foundation/layout/PaddingValues;

    .line 58
    .line 59
    move-object/from16 v18, v4

    .line 60
    .line 61
    check-cast v18, Lkotlin/jvm/functions/Function3;

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
    or-int/lit8 v1, v3, 0x1

    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 77
    .line 78
    .line 79
    move-result v20

    .line 80
    iget-object v15, v0, Lib;->l:Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    iget-boolean v0, v0, Lib;->k:Z

    .line 83
    .line 84
    move/from16 v16, v0

    .line 85
    .line 86
    invoke-static/range {v14 .. v20}, Landroidx/compose/material/MenuKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
