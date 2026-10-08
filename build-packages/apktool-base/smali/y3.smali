.class public final synthetic Ly3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly3;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Ly3;->k:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iput-object p3, p0, Ly3;->l:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    iget-object v0, p0, Ly3;->k:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Ly3;->l:Landroidx/compose/runtime/State;

    .line 18
    .line 19
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/ui/unit/Dp;->j:F

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p0, p0, Ly3;->j:F

    .line 29
    .line 30
    :goto_0
    new-instance v0, Landroidx/compose/ui/unit/Dp;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
