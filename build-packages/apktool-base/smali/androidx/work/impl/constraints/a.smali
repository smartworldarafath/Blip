.class public final synthetic Landroidx/work/impl/constraints/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic k:Landroid/net/ConnectivityManager;

.field public final synthetic l:Landroidx/work/impl/constraints/IndividualNetworkCallback;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/constraints/a;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/constraints/a;->k:Landroid/net/ConnectivityManager;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/constraints/a;->l:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/a;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "NetworkRequestConstraintController unregister callback"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/work/impl/constraints/a;->k:Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/work/impl/constraints/a;->l:Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method
