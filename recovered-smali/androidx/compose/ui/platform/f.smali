.class public final synthetic Landroidx/compose/ui/platform/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/platform/WrappedComposition;

.field public final synthetic k:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/WrappedComposition;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/f;->j:Landroidx/compose/ui/platform/WrappedComposition;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/f;->k:Landroidx/lifecycle/Lifecycle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/f;->j:Landroidx/compose/ui/platform/WrappedComposition;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/compose/ui/platform/WrappedComposition;->l:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/platform/f;->k:Landroidx/lifecycle/Lifecycle;

    .line 8
    .line 9
    iput-object p0, v0, Landroidx/compose/ui/platform/WrappedComposition;->m:Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
