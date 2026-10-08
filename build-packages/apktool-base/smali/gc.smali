.class public final synthetic Lgc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic j:Landroidx/lifecycle/Lifecycle;

.field public final synthetic k:Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgc;->j:Landroidx/lifecycle/Lifecycle;

    .line 5
    .line 6
    iput-object p2, p0, Lgc;->k:Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgc;->j:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    iget-object p0, p0, Lgc;->k:Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
