.class public final synthetic Lf1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lf1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lf1;->k:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lf1;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p3, p0, Lf1;->l:Z

    .line 12
    .line 13
    iput-object p4, p0, Lf1;->m:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iput-object p5, p0, Lf1;->q:Lkotlin/Function;

    .line 16
    .line 17
    iput p6, p0, Lf1;->n:I

    .line 18
    .line 19
    iput p7, p0, Lf1;->o:I

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lf1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1;->m:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lf1;->k:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lf1;->l:Z

    iput-object p4, p0, Lf1;->p:Ljava/lang/Object;

    iput-object p5, p0, Lf1;->q:Lkotlin/Function;

    iput p6, p0, Lf1;->n:I

    iput p7, p0, Lf1;->o:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lf1;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lf1;->n:I

    .line 8
    .line 9
    iget-object v4, v0, Lf1;->q:Lkotlin/Function;

    .line 10
    .line 11
    iget-object v5, v0, Lf1;->p:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v7, v5

    .line 17
    check-cast v7, Lnet/blip/libblip/Peer;

    .line 18
    .line 19
    move-object v10, v4

    .line 20
    check-cast v10, Lkotlin/jvm/functions/Function4;

    .line 21
    .line 22
    move-object/from16 v11, p1

    .line 23
    .line 24
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    or-int/lit8 v1, v3, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    iget-object v6, v0, Lf1;->k:Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    iget-boolean v8, v0, Lf1;->l:Z

    .line 42
    .line 43
    iget-object v9, v0, Lf1;->m:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    iget v13, v0, Lf1;->o:I

    .line 46
    .line 47
    invoke-static/range {v6 .. v13}, Lnet/blip/android/ui/list/PeerListRowKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :pswitch_0
    move-object/from16 v17, v5

    .line 52
    .line 53
    check-cast v17, Landroidx/compose/foundation/layout/PaddingValues;

    .line 54
    .line 55
    move-object/from16 v18, v4

    .line 56
    .line 57
    check-cast v18, Lkotlin/jvm/functions/Function3;

    .line 58
    .line 59
    move-object/from16 v19, p1

    .line 60
    .line 61
    check-cast v19, Landroidx/compose/runtime/Composer;

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
    or-int/lit8 v1, v3, 0x1

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 73
    .line 74
    .line 75
    move-result v20

    .line 76
    iget-object v14, v0, Lf1;->m:Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    iget-object v15, v0, Lf1;->k:Landroidx/compose/ui/Modifier;

    .line 79
    .line 80
    iget-boolean v1, v0, Lf1;->l:Z

    .line 81
    .line 82
    iget v0, v0, Lf1;->o:I

    .line 83
    .line 84
    move/from16 v21, v0

    .line 85
    .line 86
    move/from16 v16, v1

    .line 87
    .line 88
    invoke-static/range {v14 .. v21}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
