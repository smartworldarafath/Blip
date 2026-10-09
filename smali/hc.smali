.class public final synthetic Lhc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Lhc;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lhc;->k:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lhc;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lhc;->k:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 18
    .line 19
    sget p1, Landroidx/compose/material/SwitchKt;->a:F

    .line 20
    .line 21
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Lkotlin/math/MathKt;->b(F)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    int-to-long p0, p0

    .line 36
    const/16 v0, 0x20

    .line 37
    .line 38
    shl-long/2addr p0, v0

    .line 39
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance p1, Lnet/blip/shared/OnDisposeKt$OnDispose$lambda$0$0$$inlined$onDispose$1;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lnet/blip/shared/OnDisposeKt$OnDispose$lambda$0$0$$inlined$onDispose$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
