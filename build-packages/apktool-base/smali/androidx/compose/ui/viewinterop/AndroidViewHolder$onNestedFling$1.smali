.class final Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;
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
    c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1"
    f = "AndroidViewHolder.android.kt"
    l = {
        0x27a,
        0x27c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

.field public final synthetic q:J


# direct methods
.method public constructor <init>(ZLandroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->o:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->p:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->q:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->p:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->q:J

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->o:Z

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;-><init>(ZLandroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->p:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 32
    .line 33
    iget-object v4, p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->j:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 34
    .line 35
    iget-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->o:Z

    .line 36
    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    iput v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->n:I

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    iget-wide v7, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->q:J

    .line 44
    .line 45
    move-object v9, p0

    .line 46
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->a(JJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    move-object v9, p0

    .line 60
    iput v2, v9, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->n:I

    .line 61
    .line 62
    iget-wide v5, v9, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;->q:J

    .line 63
    .line 64
    const-wide/16 v7, 0x0

    .line 65
    .line 66
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->a(JJLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_5

    .line 71
    .line 72
    :goto_1
    return-object v0

    .line 73
    :cond_5
    :goto_2
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method
