.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

.field public c:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->b:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->d:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->e:I

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->a:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(IJZLkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->c:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->c:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 8
    .line 9
    instance-of v3, v2, Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->b:Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1, p0, p5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;ILandroidx/compose/foundation/lazy/layout/PrefetchMetrics;Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Landroidx/compose/ui/unit/Constraints;

    .line 17
    .line 18
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 19
    .line 20
    .line 21
    iput-object p0, v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->d:Landroidx/compose/ui/unit/Constraints;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;

    .line 29
    .line 30
    check-cast v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 31
    .line 32
    iget-object p2, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->k:Ljava/util/PriorityQueue;

    .line 33
    .line 34
    new-instance p3, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 35
    .line 36
    invoke-direct {p3, p0, v1}, Landroidx/compose/foundation/lazy/layout/PriorityTask;-><init>(ILandroidx/compose/foundation/lazy/layout/PrefetchRequest;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-boolean p2, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->l:Z

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    iput-boolean p0, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->l:Z

    .line 47
    .line 48
    iget-object p0, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->j:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    check-cast v2, Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;

    .line 55
    .line 56
    check-cast v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 57
    .line 58
    iget-object p2, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->k:Ljava/util/PriorityQueue;

    .line 59
    .line 60
    new-instance p3, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 61
    .line 62
    const/4 p4, 0x0

    .line 63
    invoke-direct {p3, p4, v1}, Landroidx/compose/foundation/lazy/layout/PriorityTask;-><init>(ILandroidx/compose/foundation/lazy/layout/PrefetchRequest;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-boolean p2, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->l:Z

    .line 70
    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    iput-boolean p0, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->l:Z

    .line 74
    .line 75
    iget-object p0, v2, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->j:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v2, v1}, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;->a(Landroidx/compose/foundation/lazy/layout/PrefetchRequest;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    const-string p0, "compose:lazy:schedule_prefetch:index"

    .line 85
    .line 86
    int-to-long p1, p1

    .line 87
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_3
    sget-object p0, Landroidx/compose/foundation/lazy/layout/DummyHandle;->a:Landroidx/compose/foundation/lazy/layout/DummyHandle;

    .line 92
    .line 93
    return-object p0
.end method
