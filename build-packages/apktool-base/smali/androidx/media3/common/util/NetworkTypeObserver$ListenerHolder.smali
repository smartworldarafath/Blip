.class final Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListenerHolder"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;Li7;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->c:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->a:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
.end method
