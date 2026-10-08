.class public final Landroidx/compose/ui/platform/ComposeViewContext$callback$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/platform/ComposeViewContext;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeViewContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;->j:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;->j:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/ComposeViewContext;->f(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;->j:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ImageVectorCache;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/res/ImageVectorCache;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroidx/compose/ui/res/ResourceIdCache;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/res/ResourceIdCache;->a:Landroidx/collection/MutableIntObjectMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/collection/MutableIntObjectMap;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;->j:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext;->g:Landroidx/compose/ui/res/ImageVectorCache;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/compose/ui/res/ImageVectorCache;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->h:Landroidx/compose/ui/res/ResourceIdCache;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object p1, p0, Landroidx/compose/ui/res/ResourceIdCache;->a:Landroidx/collection/MutableIntObjectMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/collection/MutableIntObjectMap;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$callback$1;->j:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/LazyWindowInfo;->a:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
