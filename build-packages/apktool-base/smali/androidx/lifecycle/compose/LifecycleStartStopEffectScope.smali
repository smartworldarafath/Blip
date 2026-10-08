.class public final Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public final j:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;->j:Landroidx/lifecycle/Lifecycle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;->j:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object p0
.end method
