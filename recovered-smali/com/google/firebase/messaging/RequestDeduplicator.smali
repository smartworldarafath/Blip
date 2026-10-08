.class Lcom/google/firebase/messaging/RequestDeduplicator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/messaging/RequestDeduplicator;->b:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/firebase/messaging/RequestDeduplicator;->a:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    return-void
.end method
