.class public final Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic j:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->j:Landroidx/activity/ComponentActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget p1, Landroidx/activity/ComponentActivity;->D:I

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->j:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->n:Landroidx/lifecycle/ViewModelStore;

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p2, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->a:Landroidx/lifecycle/ViewModelStore;

    .line 18
    .line 19
    iput-object p2, p1, Landroidx/activity/ComponentActivity;->n:Landroidx/lifecycle/ViewModelStore;

    .line 20
    .line 21
    :cond_0
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->n:Landroidx/lifecycle/ViewModelStore;

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    new-instance p2, Landroidx/lifecycle/ViewModelStore;

    .line 26
    .line 27
    invoke-direct {p2}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p1, Landroidx/activity/ComponentActivity;->n:Landroidx/lifecycle/ViewModelStore;

    .line 31
    .line 32
    :cond_1
    iget-object p1, p1, Landroidx/core/app/ComponentActivity;->j:Landroidx/lifecycle/LifecycleRegistry;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
