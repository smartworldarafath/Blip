.class public Landroidx/work/impl/background/greedy/DelayedWorkTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/background/greedy/GreedyScheduler;

.field public final b:Landroidx/work/RunnableScheduler;

.field public final c:Landroidx/work/Clock;

.field public final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DelayedWorkTracker"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->e:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/background/greedy/GreedyScheduler;Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/work/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a:Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/RunnableScheduler;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->c:Landroidx/work/Clock;

    .line 9
    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->d:Ljava/util/HashMap;

    .line 16
    .line 17
    return-void
.end method
