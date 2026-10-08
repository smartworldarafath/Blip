.class public final Landroidx/work/impl/constraints/WorkConstraintsTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/trackers/Trackers;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Landroidx/work/impl/constraints/controllers/BatteryChargingController;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/work/impl/constraints/trackers/Trackers;->b:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    .line 14
    .line 15
    iget-object v2, p1, Landroidx/work/impl/constraints/trackers/Trackers;->c:Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroidx/work/impl/constraints/controllers/StorageNotLowController;

    .line 21
    .line 22
    iget-object v3, p1, Landroidx/work/impl/constraints/trackers/Trackers;->d:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 23
    .line 24
    invoke-direct {v2, v3}, Landroidx/work/impl/constraints/controllers/StorageNotLowController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    new-array v3, v3, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object v0, v3, v4

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    aput-object v1, v3, v0

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    aput-object v2, v3, v0

    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object p1, p1, Landroidx/work/impl/constraints/trackers/Trackers;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v1, "connectivity"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 58
    .line 59
    new-instance v1, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->a:Ljava/util/ArrayList;

    .line 71
    .line 72
    return-void
.end method
