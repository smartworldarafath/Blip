.class public final Landroidx/work/impl/constraints/trackers/Trackers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

.field public final c:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

.field public final d:Landroidx/work/impl/constraints/trackers/ConstraintTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 4

    .line 1
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/Trackers;->a:Landroid/content/Context;

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/work/impl/constraints/trackers/Trackers;->b:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 43
    .line 44
    iput-object v1, p0, Landroidx/work/impl/constraints/trackers/Trackers;->c:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 45
    .line 46
    iput-object v2, p0, Landroidx/work/impl/constraints/trackers/Trackers;->d:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 47
    .line 48
    return-void
.end method
