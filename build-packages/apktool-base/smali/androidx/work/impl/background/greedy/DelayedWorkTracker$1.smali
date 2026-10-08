.class Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic k:Landroidx/work/impl/background/greedy/DelayedWorkTracker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/background/greedy/DelayedWorkTracker;Landroidx/work/impl/model/WorkSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->k:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->j:Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->e:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Scheduling work "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->j:Landroidx/work/impl/model/WorkSpec;

    .line 15
    .line 16
    iget-object v4, v3, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->k:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a:Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 31
    .line 32
    filled-new-array {v3}, [Landroidx/work/impl/model/WorkSpec;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/greedy/GreedyScheduler;->a([Landroidx/work/impl/model/WorkSpec;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
