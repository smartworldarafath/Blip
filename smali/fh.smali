.class public final synthetic Lfh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/unit/Density;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lfh;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lfh;->k:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    iput-object p2, p0, Lfh;->l:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lfh;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lfh;->l:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object p0, p0, Lfh;->k:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/unit/DpSize;

    .line 11
    .line 12
    iget-wide v2, p1, Landroidx/compose/ui/unit/DpSize;->a:J

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-wide v2, p1, Landroidx/compose/ui/unit/DpSize;->a:J

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    int-to-long v2, v0

    .line 33
    const/16 p1, 0x20

    .line 34
    .line 35
    shl-long/2addr v2, p1

    .line 36
    int-to-long p0, p0

    .line 37
    const-wide v4, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr p0, v4

    .line 43
    or-long/2addr p0, v2

    .line 44
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_0
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    new-instance v0, Lhc;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v0, v2, p1}, Lhc;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lfh;

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-direct {p1, p0, v1, v2}, Lfh;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 67
    .line 68
    .line 69
    sget-object p0, Landroidx/compose/foundation/Magnifier_androidKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 70
    .line 71
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v1, 0x1c

    .line 74
    .line 75
    if-ne p0, v1, :cond_0

    .line 76
    .line 77
    sget-object p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;->a:Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    sget-object p0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->a:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    .line 81
    .line 82
    :goto_0
    new-instance v1, Landroidx/compose/foundation/MagnifierElement;

    .line 83
    .line 84
    invoke-direct {v1, v0, p1, p0}, Landroidx/compose/foundation/MagnifierElement;-><init>(Lhc;Lfh;Landroidx/compose/foundation/PlatformMagnifierFactory;)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
