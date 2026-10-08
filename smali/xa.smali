.class public final synthetic Lxa;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/app/Activity;

.field public final synthetic l:Landroid/content/Intent;

.field public final synthetic m:Landroidx/navigation/NavController;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    iput p6, p0, Lxa;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lxa;->k:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p2, p0, Lxa;->l:Landroid/content/Intent;

    .line 6
    .line 7
    iput-object p3, p0, Lxa;->m:Landroidx/navigation/NavController;

    .line 8
    .line 9
    iput-object p4, p0, Lxa;->n:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lxa;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v8, p1

    .line 12
    .line 13
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    iget-object v4, v0, Lxa;->k:Landroid/app/Activity;

    .line 27
    .line 28
    iget-object v5, v0, Lxa;->l:Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v6, v0, Lxa;->m:Landroidx/navigation/NavController;

    .line 31
    .line 32
    iget-object v7, v0, Lxa;->n:Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    invoke-static/range {v4 .. v9}, Lnet/blip/android/MainActivityKt;->a(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :pswitch_0
    move-object/from16 v14, p1

    .line 39
    .line 40
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 50
    .line 51
    .line 52
    move-result v15

    .line 53
    iget-object v10, v0, Lxa;->k:Landroid/app/Activity;

    .line 54
    .line 55
    iget-object v11, v0, Lxa;->l:Landroid/content/Intent;

    .line 56
    .line 57
    iget-object v12, v0, Lxa;->m:Landroidx/navigation/NavController;

    .line 58
    .line 59
    iget-object v13, v0, Lxa;->n:Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    invoke-static/range {v10 .. v15}, Lnet/blip/android/MainActivityKt;->a(Landroid/app/Activity;Landroid/content/Intent;Landroidx/navigation/NavController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
