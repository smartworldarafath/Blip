.class public final Landroidx/compose/foundation/gestures/PressGestureScopeImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/PressGestureScope;
.implements Landroidx/compose/ui/unit/Density;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/unit/Density;

.field public k:Z

.field public l:Z

.field public final m:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 5
    .line 6
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 7
    .line 8
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m:Lkotlinx/coroutines/sync/MutexImpl;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final D0(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->D0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final E(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/FontScaling;->E(J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final I0(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->I0(J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final N(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->N(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final P(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->P(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final U(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->U(I)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final X(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->X(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$awaitRelease$1;->o:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v1, :cond_3

    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_4
    new-instance p0, Landroidx/compose/foundation/gestures/GestureCancellationException;

    .line 71
    .line 72
    const-string p1, "The press gesture was canceled."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->l:Z

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m:Lkotlinx/coroutines/sync/MutexImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/MutexImpl;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->k:Z

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m:Lkotlinx/coroutines/sync/MutexImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/MutexImpl;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$reset$1;->o:I

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m:Lkotlinx/coroutines/sync/MutexImpl;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v1, :cond_3

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->k:Z

    .line 63
    .line 64
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->l:Z

    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iget-object v4, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m:Lkotlinx/coroutines/sync/MutexImpl;

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->k:Z

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->l:Z

    .line 57
    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    iput v5, v0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl$tryAwaitRelease$1;->o:I

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v1, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {v4, v3}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->k:Z

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final i0(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final x(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/FontScaling;->x(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final y(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->y(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final y0(F)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
