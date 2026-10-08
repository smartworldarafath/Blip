.class final Landroidx/work/impl/constraints/IndividualNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lec;


# direct methods
.method public constructor <init>(Lec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->a:Lec;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object p2, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "NetworkRequestConstraintController onCapabilitiesChanged callback"

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->a:Lec;

    .line 19
    .line 20
    sget-object p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->a:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lec;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "NetworkRequestConstraintController onLost callback"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->a:Lec;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lec;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method
