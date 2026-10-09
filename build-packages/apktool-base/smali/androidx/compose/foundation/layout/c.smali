.class public final synthetic Landroidx/compose/foundation/layout/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/foundation/layout/c;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/layout/c;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/layout/c;->l:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/layout/c;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/c;->l:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/layout/c;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/c;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Landroidx/compose/foundation/layout/c;->l:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/foundation/layout/c;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v3, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eq v0, v4, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v5

    .line 32
    :goto_0
    and-int/2addr p2, v2

    .line 33
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, v3, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-object v1

    .line 53
    :pswitch_0
    check-cast v3, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 54
    .line 55
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 56
    .line 57
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 58
    .line 59
    new-instance v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 60
    .line 61
    iget-wide v4, p2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 62
    .line 63
    invoke-direct {v0, p1, v4, v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Landroidx/compose/foundation/layout/c;

    .line 67
    .line 68
    invoke-direct {v4, p0, v0}, Landroidx/compose/foundation/layout/c;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    const v0, -0x19bf96da

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v1, p0}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-wide v0, p2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 84
    .line 85
    invoke-interface {v3, p1, p0, v0, v1}, Landroidx/compose/ui/layout/MeasurePolicy;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
