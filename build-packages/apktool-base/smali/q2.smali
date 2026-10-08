.class public final synthetic Lq2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lq2;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq2;->k:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lq2;->l:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput p3, p0, Lq2;->m:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lq2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2;->l:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lq2;->k:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lq2;->m:I

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lq2;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lq2;->m:I

    .line 6
    .line 7
    iget-object v3, p0, Lq2;->l:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object p0, p0, Lq2;->k:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    or-int/lit8 p2, v2, 0x1

    .line 22
    .line 23
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p2, p1, p0, v3}, Landroidx/compose/foundation/CanvasKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    or-int/lit8 p2, v2, 0x1

    .line 35
    .line 36
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p2, p1, p0, v3}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
