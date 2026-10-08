.class public final synthetic Le2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    const/4 p6, 0x1

    .line 2
    iput p6, p0, Le2;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Le2;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Le2;->k:Z

    .line 10
    .line 11
    iput-boolean p3, p0, Le2;->l:Z

    .line 12
    .line 13
    iput-object p4, p0, Le2;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Le2;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;I)V
    .locals 0

    .line 18
    const/4 p6, 0x0

    iput p6, p0, Le2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le2;->k:Z

    iput-object p2, p0, Le2;->m:Ljava/lang/Object;

    iput-object p3, p0, Le2;->n:Ljava/lang/Object;

    iput-boolean p4, p0, Le2;->l:Z

    iput-object p5, p0, Le2;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le2;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Le2;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Le2;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Le2;->m:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v6, v5

    .line 17
    check-cast v6, Landroid/net/Uri;

    .line 18
    .line 19
    move-object v9, v4

    .line 20
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    move-object v10, v3

    .line 23
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    move-object/from16 v11, p1

    .line 26
    .line 27
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 28
    .line 29
    move-object/from16 v1, p2

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0xc01

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    iget-boolean v7, v0, Le2;->k:Z

    .line 43
    .line 44
    iget-boolean v8, v0, Le2;->l:Z

    .line 45
    .line 46
    invoke-static/range {v6 .. v12}, Lnet/blip/android/ui/gallery/GalleryPagerContentKt;->a(Landroid/net/Uri;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :pswitch_0
    move-object v14, v5

    .line 51
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    move-object v15, v4

    .line 54
    check-cast v15, Landroidx/compose/ui/Modifier;

    .line 55
    .line 56
    move-object/from16 v17, v3

    .line 57
    .line 58
    check-cast v17, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 59
    .line 60
    move-object/from16 v18, p1

    .line 61
    .line 62
    check-cast v18, Landroidx/compose/runtime/Composer;

    .line 63
    .line 64
    move-object/from16 v1, p2

    .line 65
    .line 66
    check-cast v1, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x181

    .line 72
    .line 73
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 74
    .line 75
    .line 76
    move-result v19

    .line 77
    iget-boolean v13, v0, Le2;->k:Z

    .line 78
    .line 79
    iget-boolean v0, v0, Le2;->l:Z

    .line 80
    .line 81
    move/from16 v16, v0

    .line 82
    .line 83
    invoke-static/range {v13 .. v19}, Lnet/blip/android/ui/controls/AndroidSwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
