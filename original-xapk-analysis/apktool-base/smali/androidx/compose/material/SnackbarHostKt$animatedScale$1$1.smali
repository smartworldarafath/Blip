.class final Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.SnackbarHostKt$animatedScale$1$1"
    f = "SnackbarHost.kt"
    l = {
        0x162
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/animation/core/Animatable;

.field public final synthetic p:Z

.field public final synthetic q:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->p:Z

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->q:Landroidx/compose/animation/core/TweenSpec;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->p:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->q:Landroidx/compose/animation/core/TweenSpec;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p1, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->p:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const p1, 0x3f4ccccd    # 0.8f

    .line 32
    .line 33
    .line 34
    :goto_0
    new-instance v4, Ljava/lang/Float;

    .line 35
    .line 36
    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    .line 37
    .line 38
    .line 39
    iput v2, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->n:I

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->o:Landroidx/compose/animation/core/Animatable;

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;->q:Landroidx/compose/animation/core/TweenSpec;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/16 v8, 0xc

    .line 47
    .line 48
    move-object v7, p0

    .line 49
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/Animatable;->d(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-ne p0, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0
.end method
