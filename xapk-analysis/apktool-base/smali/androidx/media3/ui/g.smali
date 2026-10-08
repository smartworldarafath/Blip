.class public final synthetic Landroidx/media3/ui/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field public final synthetic k:Landroid/view/SurfaceView;

.field public final synthetic l:Le;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Le;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/g;->j:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/ui/g;->k:Landroid/view/SurfaceView;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/ui/g;->l:Le;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/g;->j:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/ui/g;->k:Landroid/view/SurfaceView;

    .line 7
    .line 8
    invoke-static {v1}, Ldb;->g(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lac;->h()Landroid/window/SurfaceSyncGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v0, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->a:Landroid/window/SurfaceSyncGroup;

    .line 20
    .line 21
    new-instance v0, Lr;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-direct {v0, v3}, Lr;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v1, v0}, Lac;->o(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;Lr;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/media3/ui/g;->l:Le;

    .line 35
    .line 36
    invoke-virtual {p0}, Le;->run()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lbb;->h()Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v1, p0}, Ldb;->s(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
