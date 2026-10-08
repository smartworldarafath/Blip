.class public final synthetic Lv3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lv3;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lv3;->k:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    .line 10
    iput p3, p0, Lv3;->j:I

    iput-object p1, p0, Lv3;->k:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lv3;->j:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p0, p0, Lv3;->k:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    and-int/lit8 v0, p2, 0x3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    move v0, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v3

    .line 29
    :goto_0
    and-int/2addr p2, v4

    .line 30
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 43
    .line 44
    invoke-interface {p0, v0, p1, p2}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-object v2

    .line 52
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/navigation/AuthScopeKt;->a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/navigation/AuthScopeKt;->a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-static {p0, p1, p2}, Lnet/blip/android/ui/navigation/AuthScopeKt;->a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
