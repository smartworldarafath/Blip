.class public final synthetic Lqe;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Landroidx/compose/material/MutableWindowInsets;

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic p:Lkotlin/jvm/functions/Function3;

.field public final synthetic q:Landroidx/compose/material/ScaffoldState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/MutableWindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/material/ScaffoldState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lqe;->j:I

    .line 5
    .line 6
    iput-object p2, p0, Lqe;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Lqe;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lqe;->m:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Lqe;->n:Landroidx/compose/material/MutableWindowInsets;

    .line 13
    .line 14
    iput-object p6, p0, Lqe;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    iput-object p7, p0, Lqe;->p:Lkotlin/jvm/functions/Function3;

    .line 17
    .line 18
    iput-object p8, p0, Lqe;->q:Landroidx/compose/material/ScaffoldState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sget-object v0, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    and-int/lit8 v0, p2, 0x3

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    and-int/2addr p2, v2

    .line 21
    move-object v8, p1

    .line 22
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    invoke-virtual {v8, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Lzc;

    .line 31
    .line 32
    const/4 p2, 0x5

    .line 33
    iget-object v0, p0, Lqe;->p:Lkotlin/jvm/functions/Function3;

    .line 34
    .line 35
    iget-object v1, p0, Lqe;->q:Landroidx/compose/material/ScaffoldState;

    .line 36
    .line 37
    invoke-direct {p1, p2, v0, v1}, Lzc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const p2, 0x20811187

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/16 v9, 0x6000

    .line 48
    .line 49
    iget v1, p0, Lqe;->j:I

    .line 50
    .line 51
    iget-object v2, p0, Lqe;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 52
    .line 53
    iget-object v3, p0, Lqe;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 54
    .line 55
    iget-object v5, p0, Lqe;->m:Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    iget-object v6, p0, Lqe;->n:Landroidx/compose/material/MutableWindowInsets;

    .line 58
    .line 59
    iget-object v7, p0, Lqe;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 60
    .line 61
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/ScaffoldKt;->c(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
