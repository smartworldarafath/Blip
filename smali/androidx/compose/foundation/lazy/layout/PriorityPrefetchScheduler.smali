.class public interface abstract Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;


# virtual methods
.method public a(Landroidx/compose/foundation/lazy/layout/PrefetchRequest;)V
    .locals 2

    .line 1
    check-cast p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/lazy/layout/PriorityTask;-><init>(ILandroidx/compose/foundation/lazy/layout/PrefetchRequest;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->k:Ljava/util/PriorityQueue;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->l:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->l:Z

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;->j:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
