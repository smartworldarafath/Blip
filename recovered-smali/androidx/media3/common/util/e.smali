.class public final synthetic Landroidx/media3/common/util/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/common/util/WakeLockManager;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/WakeLockManager;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/e;->j:Landroidx/media3/common/util/WakeLockManager;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/media3/common/util/e;->k:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/common/util/e;->l:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/e;->l:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/util/e;->j:Landroidx/media3/common/util/WakeLockManager;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/media3/common/util/e;->k:Z

    .line 8
    .line 9
    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->a(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
