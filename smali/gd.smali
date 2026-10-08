.class public final synthetic Lgd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgd;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lgd;->n:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lgd;->k:Z

    .line 10
    .line 11
    iput-object p3, p0, Lgd;->l:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p4, p0, Lgd;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iput p5, p0, Lgd;->m:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;I)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lgd;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgd;->k:Z

    iput-object p2, p0, Lgd;->n:Ljava/lang/Object;

    iput-object p3, p0, Lgd;->l:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lgd;->o:Ljava/lang/Object;

    iput p5, p0, Lgd;->m:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lgd;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lgd;->m:I

    .line 8
    .line 9
    iget-object v4, v0, Lgd;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lgd;->n:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v7, v5

    .line 17
    check-cast v7, Landroidx/compose/material/SwitchColors;

    .line 18
    .line 19
    move-object v9, v4

    .line 20
    check-cast v9, Landroidx/compose/foundation/interaction/InteractionSource;

    .line 21
    .line 22
    move-object/from16 v10, p1

    .line 23
    .line 24
    check-cast v10, Landroidx/compose/runtime/Composer;

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
    move-result v11

    .line 39
    iget-boolean v6, v0, Lgd;->k:Z

    .line 40
    .line 41
    iget-object v8, v0, Lgd;->l:Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    invoke-static/range {v6 .. v11}, Landroidx/compose/material/SwitchKt;->b(ZLandroidx/compose/material/SwitchColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_0
    move-object v12, v5

    .line 48
    check-cast v12, Lnet/blip/libblip/Peer;

    .line 49
    .line 50
    move-object v15, v4

    .line 51
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    move-object/from16 v16, p1

    .line 54
    .line 55
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 56
    .line 57
    move-object/from16 v1, p2

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    or-int/lit8 v1, v3, 0x1

    .line 65
    .line 66
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result v17

    .line 70
    iget-boolean v13, v0, Lgd;->k:Z

    .line 71
    .line 72
    iget-object v14, v0, Lgd;->l:Lkotlin/jvm/functions/Function0;

    .line 73
    .line 74
    invoke-static/range {v12 .. v17}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->d(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
