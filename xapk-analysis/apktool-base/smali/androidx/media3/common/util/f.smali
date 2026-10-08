.class public final synthetic Landroidx/media3/common/util/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/common/util/WakeLockManager;

.field public final synthetic k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic l:Z

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/f;->j:Landroidx/media3/common/util/WakeLockManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/common/util/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/common/util/f;->l:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/media3/common/util/f;->m:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/media3/common/util/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/util/f;->j:Landroidx/media3/common/util/WakeLockManager;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/media3/common/util/f;->l:Z

    .line 12
    .line 13
    iget-boolean p0, p0, Landroidx/media3/common/util/f;->m:Z

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->a(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;ZZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
